/********************************************************************************
 *   File Name:
 *      thread_heartbeat.cpp
 *
 *   Description:
 *      A very simple thread that controls the system heartbeat LED
 *
 *   2019 | Brandon Braun | brandonbraun653@gmail.com
 ********************************************************************************/

/* Chimera Includes */
#include <Chimera/gpio.hpp>
#include <Chimera/threading.hpp>

/* Project Includes */
#include <hw_initialize.hpp>
#include <system_hardware.hpp>
#include <system_threads.hpp>


using namespace Chimera;
using namespace GPIODriver;

namespace GPIODriver::Thread
{
  void HeartbeatThread( void *argument )
  {
    /*------------------------------------------------
    Wait for the boot thread to wake us up
    ------------------------------------------------*/
    Threading::signalSetupComplete();
    auto wakeup = ulTaskNotifyTake( pdTRUE, portMAX_DELAY );

    /*------------------------------------------------
    Thread initialization order isn't guaranteed, so wait until
    the hardware signals it is ready to go.
    ------------------------------------------------*/
    while ( !HW::GPIO::initialized() )
    {
      Chimera::delayMilliseconds( 25 );
    }

    /*------------------------------------------------
    Just for fun, add a nice little startup pulsing
    ------------------------------------------------*/
    for ( size_t i = 0; i < HW::GPIO::HEARTBEAT_STARTUP_PULSES; i++ )
    {
      HW::GPIO::heartBeat->setState( Chimera::GPIO::State::HIGH );
      delayMilliseconds( HW::GPIO::HEARTBEAT_STARTUP_PULSE_DELAY_MS );

      HW::GPIO::heartBeat->setState( Chimera::GPIO::State::LOW );
      delayMilliseconds( HW::GPIO::HEARTBEAT_STARTUP_PULSE_DELAY_MS );
    }
    delayMilliseconds( 675 );

    /*------------------------------------------------
    Main loop simply just beats the heart
    ------------------------------------------------*/
    while ( 1 )
    {
      HW::GPIO::heartBeat->setState( Chimera::GPIO::State::HIGH );
      delayMilliseconds( HW::GPIO::HEARTBEAT_TIME_HIGH_MS );

      HW::GPIO::heartBeat->setState( Chimera::GPIO::State::LOW );
      delayMilliseconds( HW::GPIO::HEARTBEAT_TIME_LOW_MS );
    }
  }
}  // namespace GPIODriver::Thread
