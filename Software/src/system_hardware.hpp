/********************************************************************************
 *   File Name:
 *      system_hardware.hpp
 *
 *   Description:
 *      Hardware translation layer that maps various resources into the actual
 *      board level descriptions. At the time of writing, this is set up for an
 *      STM32F446RE Nucleo Development Board.
 *
 *   2019 | Brandon Braun | brandonbraun653@gmail.com
 ********************************************************************************/

#pragma once
#ifndef GPIO_DRIVER_SYSTEM_HARDWARE_HPP
#define GPIO_DRIVER_SYSTEM_HARDWARE_HPP

#include <Thor/headers.hpp>

/* Chimera Includes */
#include <Chimera/chimera.hpp>
#include <Chimera/gpio.hpp>
#include <Chimera/types/serial_types.hpp>
#include <Chimera/types/gpio_types.hpp>
#include <Chimera/types/spi_types.hpp>
#include <Chimera/types/watchdog_types.hpp>

namespace GPIODriver::HW
{
  namespace Serial
  {
    /*-------------------------------------------------
    User Interface Objects 
    -------------------------------------------------*/
    extern Chimera::Serial::SerialClass_sPtr terminal;      /* Global object for tx/rx on terminal to PC */ 
    extern Chimera::Serial::SerialClass_sPtr terminalDebug; /* Global object for the debug port */

    /*-------------------------------------------------
    Object Configuration Options
    -------------------------------------------------*/
    static constexpr uint8_t SERIAL_CHANNEL_TERMINAL               = 3;
    static constexpr uint8_t SERIAL_CHANNEL_TERMINAL_DBG           = 2;
    static constexpr Chimera::Serial::BaudRate SERIAL_BAUD         = Chimera::Serial::BaudRate::SERIAL_BAUD_115200;
    static constexpr Chimera::Serial::CharWid SERIAL_BITWIDTH      = Chimera::Serial::CharWid::CW_8BIT;
    static constexpr Chimera::Serial::FlowControl SERIAL_FLOW_CTRL = Chimera::Serial::FlowControl::FCTRL_NONE;
    static constexpr Chimera::Serial::Parity SERIAL_PARITY         = Chimera::Serial::Parity::PAR_NONE;
    static constexpr Chimera::Serial::StopBits SERIAL_STOP_BITS    = Chimera::Serial::StopBits::SBITS_ONE;
    static constexpr Chimera::Hardware::SubPeripheralMode SERIAL_TXFR_MODE = Chimera::Hardware::SubPeripheralMode::DMA;

    static constexpr size_t SERIAL_BUFFER_SIZE = 150;

    /* clang-format off */
    static constexpr Chimera::Serial::IOPins TERMINAL_DBG_GPIO_INIT = {
      { /* TX Pin */
        Chimera::GPIO::Pull::PULL_UP,               
        Chimera::GPIO::Port::PORTA,                 
        Chimera::GPIO::Drive::ALTERNATE_PUSH_PULL,  
        Chimera::GPIO::State::HIGH,                 
        2,                                          
        Thor::Driver::GPIO::AF7_USART2                     
      },
      { /* RX Pin */
        Chimera::GPIO::Pull::PULL_UP,               
        Chimera::GPIO::Port::PORTA,                 
        Chimera::GPIO::Drive::ALTERNATE_PUSH_PULL,  
        Chimera::GPIO::State::HIGH,                 
        3,                                          
        Thor::Driver::GPIO::AF7_USART2                         
      }
    };

    static constexpr Chimera::Serial::IOPins TERMINAL_GPIO_INIT = {
      { /* TX Pin */
        Chimera::GPIO::Pull::PULL_UP,               
        Chimera::GPIO::Port::PORTC,                 
        Chimera::GPIO::Drive::ALTERNATE_PUSH_PULL,  
        Chimera::GPIO::State::HIGH,                 
        10,                                          
        Thor::Driver::GPIO::AF7_USART3                             
      },
      { /* RX Pin */
        Chimera::GPIO::Pull::PULL_UP,               
        Chimera::GPIO::Port::PORTC,                 
        Chimera::GPIO::Drive::ALTERNATE_PUSH_PULL,  
        Chimera::GPIO::State::HIGH,                 
        11,                                          
        Thor::Driver::GPIO::AF7_USART3                              
      }
    };
    /* clang-format on */

  }  // namespace Serial

  namespace GPIO
  {
    /*-------------------------------------------------
    User Interface Objects 
    -------------------------------------------------*/
    extern Chimera::GPIO::GPIOClass_sPtr powerEnable;     /* Global GPIO object that drives the power enable/disable pin */
    extern Chimera::GPIO::GPIOClass_sPtr statusLED0;      /* Global GPIO object that drives a status led */
    extern Chimera::GPIO::GPIOClass_sPtr heartBeat;       /* Global GPIO heartbeat led object */
    extern Chimera::GPIO::GPIOClass_sPtr sourceDriverOE;
    extern Chimera::GPIO::GPIOClass_sPtr sinkDriverOE;

    /*-------------------------------------------------
    Object Configuration Options
    -------------------------------------------------*/
    /* clang-format off */
    static constexpr Chimera::GPIO::PinInit PWR_ENABLE_INIT = {
      Chimera::GPIO::Pull::NO_PULL,               
      Chimera::GPIO::Port::PORTC,                 
      Chimera::GPIO::Drive::OUTPUT_PUSH_PULL,  
      Chimera::GPIO::State::LOW,                 
      5,                                          
      0  
    };

    static constexpr Chimera::GPIO::PinInit HEARTBEAT_INIT = {
      Chimera::GPIO::Pull::NO_PULL,               
      Chimera::GPIO::Port::PORTA,                 
      Chimera::GPIO::Drive::OUTPUT_PUSH_PULL,  
      Chimera::GPIO::State::HIGH,                 
      5,                                          
      0  
    };

    static constexpr Chimera::GPIO::PinInit STATUS_LED0_INIT = {
      Chimera::GPIO::Pull::NO_PULL,               
      Chimera::GPIO::Port::PORTC,                 
      Chimera::GPIO::Drive::OUTPUT_PUSH_PULL,  
      Chimera::GPIO::State::HIGH,                 
      9,                                          
      0  
    };

    static constexpr Chimera::GPIO::PinInit SOURCE_DRIVER_OE_INIT = {
      Chimera::GPIO::Pull::NO_PULL,               
      Chimera::GPIO::Port::PORTB,                 
      Chimera::GPIO::Drive::OUTPUT_PUSH_PULL,  
      Chimera::GPIO::State::HIGH,                 
      10,                                          
      0  
    };

    static constexpr Chimera::GPIO::PinInit SINK_DRIVER_OE_INIT = {
      Chimera::GPIO::Pull::NO_PULL,               
      Chimera::GPIO::Port::PORTA,                 
      Chimera::GPIO::Drive::OUTPUT_PUSH_PULL,  
      Chimera::GPIO::State::HIGH,                 
      8,                                          
      0  
    };
    /* clang-format on */

    static constexpr size_t HEARTBEAT_TIME_HIGH_MS = 250;
    static constexpr size_t HEARTBEAT_TIME_LOW_MS  = 750;
    static constexpr size_t HEARTBEAT_STARTUP_PULSES = 4;
    static constexpr size_t HEARTBEAT_STARTUP_PULSE_DELAY_MS = 50;
  }

  namespace SPI
  {
    /*-------------------------------------------------
    User Interface Objects 
    -------------------------------------------------*/
    extern Chimera::SPI::SPIClass_sPtr instance;  /* Global SPI Accessor Object */
    extern Chimera::GPIO::GPIOClass_sPtr cs0;     /* Global SPI Chip Select 0 Object */
    extern Chimera::GPIO::GPIOClass_sPtr cs1;     /* Global SPI Chip Select 1 Object */
    extern Chimera::GPIO::GPIOClass_sPtr cs2;     /* Global SPI Chip Select 2 Object */

    /*-------------------------------------------------
    Object Configuration Options
    -------------------------------------------------*/
    static constexpr uint8_t SPI_CHANNEL                                = 3;
    static constexpr size_t SPI_CLOCK_FREQUENCY                         = 1000000;
    static constexpr Chimera::SPI::Mode SPI_MODE                        = Chimera::SPI::Mode::MASTER;
    static constexpr Chimera::SPI::BitOrder SPI_BIT_ORDER               = Chimera::SPI::BitOrder::LSB_FIRST;
    static constexpr Chimera::SPI::ClockMode SPI_CLOCK_MODE             = Chimera::SPI::ClockMode::MODE0;
    static constexpr Chimera::SPI::DataSize SPI_DATA_SIZE               = Chimera::SPI::DataSize::SZ_8BIT;
    static constexpr Chimera::SPI::ChipSelectMode SPI_CS_MODE           = Chimera::SPI::ChipSelectMode::MANUAL;
    static constexpr Chimera::Hardware::SubPeripheralMode SPI_TXFR_MODE = Chimera::Hardware::SubPeripheralMode::BLOCKING;

    /* clang-format off */
    static constexpr Chimera::GPIO::PinInit SPI_SCK_PIN = {
      Chimera::GPIO::Pull::NO_PULL,               
      Chimera::GPIO::Port::PORTB,                 
      Chimera::GPIO::Drive::ALTERNATE_PUSH_PULL,  
      Chimera::GPIO::State::HIGH,                 
      3,                                          
      Thor::Driver::GPIO::AF6_SPI3  
    };

    static constexpr Chimera::GPIO::PinInit SPI_MOSI_PIN = {
      Chimera::GPIO::Pull::NO_PULL,               
      Chimera::GPIO::Port::PORTB,                 
      Chimera::GPIO::Drive::ALTERNATE_PUSH_PULL,  
      Chimera::GPIO::State::HIGH,                 
      5,                                          
      Thor::Driver::GPIO::AF6_SPI3  
    };

    static constexpr Chimera::GPIO::PinInit SPI_MISO_PIN = {
      Chimera::GPIO::Pull::NO_PULL,               
      Chimera::GPIO::Port::PORTB,                 
      Chimera::GPIO::Drive::ALTERNATE_PUSH_PULL,  
      Chimera::GPIO::State::HIGH,                 
      4,                                          
      Thor::Driver::GPIO::AF6_SPI3  
    };

    static constexpr Chimera::GPIO::PinInit SPI_CS0_PIN = {
      Chimera::GPIO::Pull::NO_PULL,               
      Chimera::GPIO::Port::PORTA,                 
      Chimera::GPIO::Drive::OUTPUT_PUSH_PULL,  
      Chimera::GPIO::State::HIGH,                 
      10,                                          
      0  
    };

    static constexpr Chimera::GPIO::PinInit SPI_CS1_PIN = {
      Chimera::GPIO::Pull::NO_PULL,               
      Chimera::GPIO::Port::PORTA,                 
      Chimera::GPIO::Drive::OUTPUT_PUSH_PULL,  
      Chimera::GPIO::State::HIGH,                 
      9,                                          
      0  
    };

    static constexpr Chimera::GPIO::PinInit SPI_CS2_PIN = {
      Chimera::GPIO::Pull::NO_PULL,               
      Chimera::GPIO::Port::PORTC,                 
      Chimera::GPIO::Drive::OUTPUT_PUSH_PULL,  
      Chimera::GPIO::State::HIGH,                 
      7,                                          
      0  
    };
    /* clang-format on */
  }

  namespace Watchdog
  {
    /*-------------------------------------------------
    User Interface Objects
    -------------------------------------------------*/
    extern Chimera::Watchdog::WatchdogClass_sPtr watchdog;  /* Global watchdog object */

    /*-------------------------------------------------
    Object Configuration Options
    -------------------------------------------------*/
    static constexpr size_t WATCHDOG_TIMEOUT_MS = 25;
    static constexpr size_t WATCHDOG_KICK_RATE_MS = 10;
  }
}  // namespace GPIODriver::HW

#endif /* !GPIO_DRIVER_SYSTEM_HARDWARE_HPP */