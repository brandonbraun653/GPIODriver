/********************************************************************************
 *  File Name:
 *    main.cpp
 * 
 *  Description:
 *    Entry point to the GPIO Driver system image
 *
 *  2019 | Brandon Braun | brandonbraun653@gmail.com
 ********************************************************************************/

/* C++ Includes */


/* Chimera Includes */
#include <Chimera/chimera.hpp>
#include <Chimera/threading.hpp>
#include <Chimera/watchdog.hpp>

/* Project Includes */
#include <io_resources.hpp>
#include <system_threads.hpp>

using namespace Chimera;
using namespace Chimera::Threading;
using namespace GPIODriver;

int main()
{
  ChimeraInit();

  Thread::handle.fill( nullptr );


  addThread( Thread::DebugSandboxThread, "sandbox", 1000, nullptr, 2, &Thread::handle[ Thread::ID::SANDBOX_THREAD ] );
  addThread( Thread::BootUpThread, "boot", 500, nullptr, 2, &Thread::handle[ Thread::ID::BOOT_THREAD ] );
  addThread( Thread::HeartbeatThread, "heartbeat", 100, nullptr, 2, &Thread::handle[ Thread::ID::HEARTBEAT_THREAD ] );


  startScheduler();

  /*------------------------------------------------
  Should never get here. If we do, allow the watchdog to reset the board.
  ------------------------------------------------*/
  Watchdog::invokeTimeout();
  return 0;
}