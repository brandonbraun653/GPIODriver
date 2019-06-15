/********************************************************************************
 *   File Name:
 *    system_control.cpp
 *
 *   Description:
 *    Implements very low level functionality to control the system hardware
 *
 *   2019 | Brandon Braun | brandonbraun653@gmail.com
 ********************************************************************************/

/* Chimera Includes */
#include <Chimera/gpio.hpp>
#include <Chimera/spi.hpp>

/* Project Includes */
#include <system_control.hpp>
#include <system_hardware.hpp>

namespace GPIODriver
{
  namespace Power
  {
    Chimera::Status_t enable()
    {
      return GPIODriver::HW::GPIO::powerEnable->setState( Chimera::GPIO::State::HIGH );
    }

    Chimera::Status_t disable()
    {
      return GPIODriver::HW::GPIO::powerEnable->setState( Chimera::GPIO::State::LOW );
    }
  }

  namespace Source
  {
    Chimera::Status_t enable()
    {
      /* OE pin is active low */
      return GPIODriver::HW::GPIO::sourceDriverOE->setState( Chimera::GPIO::State::LOW );
    }

    Chimera::Status_t disable()
    {
      /* OE pin is active low */
      return GPIODriver::HW::GPIO::sourceDriverOE->setState( Chimera::GPIO::State::HIGH );
    }

    Chimera::Status_t write( const uint8_t *const data, const size_t size )
    {
      Chimera::Status_t result = Chimera::CommonStatusCodes::FAIL;

      GPIODriver::HW::SPI::cs0->setState( Chimera::GPIO::State::LOW );
      result = GPIODriver::HW::SPI::instance->writeBytes( data, size, 500 );
      GPIODriver::HW::SPI::cs0->setState( Chimera::GPIO::State::HIGH );

      return result;
    }
  }

  namespace Sink
  {
    Chimera::Status_t enable()
    {
      /* OE pin is active low */
      return GPIODriver::HW::GPIO::sinkDriverOE->setState( Chimera::GPIO::State::LOW );
    }

    Chimera::Status_t disable()
    {
      /* OE pin is active low */
      return GPIODriver::HW::GPIO::sinkDriverOE->setState( Chimera::GPIO::State::HIGH );
    }

    Chimera::Status_t write( const uint8_t *const data, const size_t size )
    {
      Chimera::Status_t result = Chimera::CommonStatusCodes::FAIL;

      GPIODriver::HW::SPI::cs1->setState( Chimera::GPIO::State::LOW );
      result = GPIODriver::HW::SPI::instance->writeBytes( data, size, 500 );
      GPIODriver::HW::SPI::cs1->setState( Chimera::GPIO::State::HIGH );

      return result;
    }
  }

  namespace Sense
  {
    Chimera::Status_t read( uint8_t *const data, const size_t size )
    {

    }
  }
}