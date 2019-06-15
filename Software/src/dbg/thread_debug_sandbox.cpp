/********************************************************************************
 *   File Name:
 *    thread_debug_sandbox.cpp
 *
 *   Description:
 *    A nice sandbox to play in for developing the application
 *
 *   2019 | Brandon Braun | brandonbraun653@gmail.com
 ********************************************************************************/

/* C++ Includes */
#include <array>

/* Chimera Includes */
#include <Chimera/chimera.hpp>
#include <Chimera/gpio.hpp>
#include <Chimera/threading.hpp>

/* Project Includes */
#include <system_control.hpp>
#include <system_hardware.hpp>
#include <system_threads.hpp>


static constexpr uint8_t data = 0x00;

namespace GPIODriver::Thread
{
  void DebugSandboxThread( void *argument )
  {
    using namespace GPIODriver::HW;
    using namespace Chimera::GPIO;

    Chimera::Threading::signalSetupComplete();
    Chimera::Threading::awaitTaskMessage( MSG::EXECUTE );

    uint8_t sourceCounter = 0u;
    uint8_t sinkCounter   = ~sourceCounter;


    Power::enable();
    Source::enable();
    Sink::enable();

    while ( 1 )
    {
      //Source::write( &sourceCounter, sizeof( sourceCounter ) );
      Sink::write( &data, sizeof( sinkCounter ) );
      Chimera::delayMilliseconds( 500 );

      sourceCounter++;
      sinkCounter = ~sourceCounter;
    }
  }
}