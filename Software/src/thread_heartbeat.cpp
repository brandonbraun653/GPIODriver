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
    
    Threading::signalSetupComplete();

    /* Wait for the boot thread to wake us up */
    auto wakeup = ulTaskNotifyTake( pdTRUE, portMAX_DELAY );

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

    while ( 1 )
    {
      HW::GPIO::heartBeat->setState( Chimera::GPIO::State::HIGH );
      delayMilliseconds( HW::GPIO::HEARTBEAT_TIME_HIGH_MS );

      HW::GPIO::heartBeat->setState( Chimera::GPIO::State::LOW );
      delayMilliseconds( HW::GPIO::HEARTBEAT_TIME_LOW_MS );
    }
  }
}  // namespace GPIODriver::Thread
