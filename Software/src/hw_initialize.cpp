/********************************************************************************
 *   File Name:
 *       hw_initialize.cpp
 *
 *   Description:
 *       Provides initialization routines for all the low level hardware drivers.
 *
 *   2019 | Brandon Braun | brandonbraun653@gmail.com
 ********************************************************************************/

/* C++ Includes */
#include <cstring>

/* Boost Includes */
#include <boost/circular_buffer.hpp>

/* Chimera Includes */
#include <Chimera/gpio.hpp>
#include <Chimera/serial.hpp>
#include <Chimera/spi.hpp>
#include <Chimera/watchdog.hpp>
#include <Chimera/constants/common.hpp>
#include <Chimera/types/event_types.hpp>

/* Project Includes */
#include <system_hardware.hpp>
#include <version.hpp>


namespace GPIODriver::HW
{
  namespace Serial
  {
    Chimera::Serial::SerialClass_sPtr terminal      = nullptr;
    Chimera::Serial::SerialClass_sPtr terminalDebug = nullptr;

    static boost::circular_buffer<uint8_t> rx_cb_dbg_term;
    static boost::circular_buffer<uint8_t> tx_cb_dbg_term;
    static std::array<uint8_t, SERIAL_BUFFER_SIZE> rx_buffer_dbg_term;
    static std::array<uint8_t, SERIAL_BUFFER_SIZE> tx_buffer_dbg_term;

    static boost::circular_buffer<uint8_t> rx_cb_term;
    static boost::circular_buffer<uint8_t> tx_cb_term;
    static std::array<uint8_t, SERIAL_BUFFER_SIZE> rx_buffer_term;
    static std::array<uint8_t, SERIAL_BUFFER_SIZE> tx_buffer_term;

    static const Chimera::Serial::Config serialConfig = { static_cast<uint32_t>( SERIAL_BAUD ), 
                                                          SERIAL_BITWIDTH, 
                                                          SERIAL_PARITY,
                                                          SERIAL_STOP_BITS, 
                                                          SERIAL_FLOW_CTRL };

    Chimera::Status_t initializeTerminal()
    {
      using namespace Chimera;
      using namespace GPIODriver::HW::Serial;

      Status_t result = CommonStatusCodes::OK;

      std::array<char, 250> message;
      message.fill( 0 );

      if ( terminalDebug->lock( Chimera::Threading::DEFAULT_LOCK_TIMEOUT_MS ) == CommonStatusCodes::OK )
      {
        /*------------------------------------------------
        Debug header for ease of use/PC logging purposes
        ------------------------------------------------*/
        snprintf( message.data(), message.size(),
                  "Initializing Serial Coms:\r\n"
                  "\tChannel: %d\r\n"
                  "\tBaud: %lu\r\n"
                  "\tWidth: %lu\r\n"
                  "\tParity: %lu\r\n"
                  "\tStopBits: %lu\r\n"
                  "\tFlowCtrl: %lu\r\n",
                  SERIAL_CHANNEL_TERMINAL, static_cast<uint32_t>( SERIAL_BAUD ), static_cast<uint32_t>( SERIAL_BITWIDTH ),
                  static_cast<uint32_t>( SERIAL_PARITY ), static_cast<uint32_t>( SERIAL_STOP_BITS ),
                  static_cast<uint32_t>( SERIAL_FLOW_CTRL ) );

        terminalDebug->write( reinterpret_cast<const uint8_t *const>( message.data() ), strlen( message.data() ) );
        terminalDebug->await( Chimera::Event::Trigger::WRITE_COMPLETE, nullptr, 1000 );

        /*------------------------------------------------
        Perform the actual initialization
        ------------------------------------------------*/
        terminal = std::make_shared<Chimera::Serial::SerialClass>();
        terminal->assignHW( SERIAL_CHANNEL_TERMINAL, TERMINAL_GPIO_INIT );
        terminal->configure( serialConfig );

        terminal->enableBuffering( Hardware::SubPeripheral::TX, &tx_cb_term, tx_buffer_term.data(), tx_buffer_term.size() );
        terminal->enableBuffering( Hardware::SubPeripheral::RX, &rx_cb_term, rx_buffer_term.data(), rx_buffer_term.size() );
        terminal->flush( Hardware::SubPeripheral::TXRX );

        result = terminal->begin( SERIAL_TXFR_MODE, SERIAL_TXFR_MODE );

        terminalDebug->unlock();
      }
      else
      {
        result = CommonStatusCodes::FAIL;
      }

      return result;
    }

    Chimera::Status_t initializeDebugTerminal()
    {
      using namespace Chimera;
      using namespace GPIODriver::HW::Serial;

      Status_t result = CommonStatusCodes::OK;
      std::array<char, 50> message;
      message.fill( 0 );

      /*------------------------------------------------
      Perform the initialization
      ------------------------------------------------*/
      terminalDebug = std::make_shared<Chimera::Serial::SerialClass>();
      terminalDebug->assignHW( SERIAL_CHANNEL_TERMINAL_DBG, TERMINAL_DBG_GPIO_INIT );
      terminalDebug->configure( serialConfig );

      terminalDebug->enableBuffering( Hardware::SubPeripheral::TX, &tx_cb_dbg_term, tx_buffer_dbg_term.data(),
                                      tx_buffer_dbg_term.size() );
      terminalDebug->enableBuffering( Hardware::SubPeripheral::RX, &rx_cb_dbg_term, rx_buffer_dbg_term.data(),
                                      rx_buffer_dbg_term.size() );

      result = terminalDebug->begin( SERIAL_TXFR_MODE, SERIAL_TXFR_MODE );

      /*------------------------------------------------
      Write the splash screen so we know the variant on boot
      ------------------------------------------------*/
      if ( result == CommonStatusCodes::OK )
      {
        snprintf( message.data(), message.size(), "GPIO Driver Version %s Debug Terminal\r\n", firmwareVersion.data() );
        terminalDebug->write( reinterpret_cast<const uint8_t *const>( message.data() ), strlen( message.data() ) );
        terminalDebug->await( Chimera::Event::Trigger::WRITE_COMPLETE, nullptr, 1000 );
      }

      return result;
    }
  }  // namespace Serial

  namespace SPI
  {
    Chimera::SPI::SPIClass_sPtr instance = nullptr;
    Chimera::GPIO::GPIOClass_sPtr cs0    = nullptr;
    Chimera::GPIO::GPIOClass_sPtr cs1    = nullptr;
    Chimera::GPIO::GPIOClass_sPtr cs2    = nullptr;

    Chimera::Status_t initializeSPI()
    {
      using namespace GPIODriver::HW::Serial;
      using namespace GPIODriver::HW::SPI;

      Chimera::Status_t result = Chimera::CommonStatusCodes::OK;
//      std::array<char, 50> message;
//      message.fill( 0 );
//
//      /*------------------------------------------------
//      Initialize the core SPI driver module
//      ------------------------------------------------*/
//      Chimera::SPI::Setup spiSetup;
//      spiSetup.bitOrder       = SPI_BIT_ORDER;
//      spiSetup.channel        = SPI_CHANNEL;
//      spiSetup.clockFrequency = SPI_CLOCK_FREQUENCY;
//      spiSetup.clockMode      = SPI_CLOCK_MODE;
//      spiSetup.dataSize       = SPI_DATA_SIZE;
//      spiSetup.mode           = SPI_MODE;
//      spiSetup.transferMode   = SPI_TXFR_MODE;
//
//      spiSetup.SCK  = SPI_SCK_PIN;
//      spiSetup.MOSI = SPI_MOSI_PIN;
//      spiSetup.MISO = SPI_MISO_PIN;
//      /* Chip select unused as they are controlled manually */
//
//      instance = std::make_shared<Chimera::SPI::SPIClass>();
//      result |= instance->init( spiSetup );
//      result |= instance->setChipSelectControlMode( Chimera::SPI::ChipSelectMode::MANUAL );
//
//      /*------------------------------------------------
//      Initialize the additional chip select GPIO
//      ------------------------------------------------*/
//      cs0 = std::make_shared<Chimera::GPIO::GPIOClass>();
//      result |= cs0->init( SPI_CS0_PIN );
//
//      cs1 = std::make_shared<Chimera::GPIO::GPIOClass>();
//      result |= cs1->init( SPI_CS1_PIN );
//
//      cs2 = std::make_shared<Chimera::GPIO::GPIOClass>();
//      result |= cs2->init( SPI_CS2_PIN );
//
//      if ( result == Chimera::CommonStatusCodes::OK )
//      {
//        snprintf( message.data(), message.size(), "SPI Driver Initialized On Channel: %d\r\n", spiSetup.channel );
//        terminalDebug->write( reinterpret_cast<const uint8_t *const>( message.data() ), strlen( message.data() ) );
//        terminalDebug->await( Chimera::Event::Trigger::WRITE_COMPLETE, nullptr, 1000 );
//      }

      return result;
    }
  }  // namespace SPI

  namespace GPIO
  {
    static bool s_hardware_initialized = false;

    Chimera::GPIO::GPIOClass_sPtr powerEnable    = nullptr;
    Chimera::GPIO::GPIOClass_sPtr statusLED0     = nullptr;
    Chimera::GPIO::GPIOClass_sPtr heartBeat      = nullptr;
    Chimera::GPIO::GPIOClass_sPtr sourceDriverOE = nullptr;
    Chimera::GPIO::GPIOClass_sPtr sinkDriverOE   = nullptr;

    bool initialized()
    {
      return s_hardware_initialized;
    }

    Chimera::Status_t initializeGPIO()
    {
      using namespace GPIODriver::HW::Serial;

      Chimera::Status_t result = Chimera::CommonStatusCodes::OK;
      std::array<char, 50> message;
      message.fill( 0 );
      s_hardware_initialized = false;

      /*------------------------------------------------
      LED 0 Init
      ------------------------------------------------*/
      statusLED0 = std::make_shared<Chimera::GPIO::GPIOClass>();
      result |= statusLED0->init( STATUS_LED0_INIT );

      /*------------------------------------------------
      Active High Power Drive Init
      ------------------------------------------------*/
      powerEnable = std::make_shared<Chimera::GPIO::GPIOClass>();
      result |= powerEnable->init( PWR_ENABLE_INIT );

      /*------------------------------------------------
      Heartbeat LED Init
      ------------------------------------------------*/
      heartBeat = std::make_shared<Chimera::GPIO::GPIOClass>();
      result |= heartBeat->init( HEARTBEAT_INIT );

      /*------------------------------------------------
      Source Driver OE Init
      ------------------------------------------------*/
      sourceDriverOE = std::make_shared<Chimera::GPIO::GPIOClass>();
      result |= sourceDriverOE->init( SOURCE_DRIVER_OE_INIT );

      /*------------------------------------------------
      Sink Driver OE Init
      ------------------------------------------------*/
      sinkDriverOE = std::make_shared<Chimera::GPIO::GPIOClass>();
      result |= sinkDriverOE->init( SINK_DRIVER_OE_INIT );

      if ( result == Chimera::CommonStatusCodes::OK )
      {
        s_hardware_initialized = true;

        snprintf( message.data(), message.size(), "GPIO Pins Initialized\r\n" );
        terminalDebug->write( reinterpret_cast<const uint8_t *const>( message.data() ), strlen( message.data() ) );
        terminalDebug->await( Chimera::Event::Trigger::WRITE_COMPLETE, nullptr, 1000 );
      }

      return result;
    }
  }  // namespace GPIO

  namespace Watchdog
  {
    Chimera::Watchdog::WatchdogClass_sPtr watchdog = nullptr;

    Chimera::Status_t initializeWatchdog()
    {
      watchdog = std::make_shared<Chimera::Watchdog::WatchdogClass>();
      return watchdog->initialize( WATCHDOG_TIMEOUT_MS, 100 );
    }
  }  // namespace Watchdog
}  // namespace GPIODriver::HW