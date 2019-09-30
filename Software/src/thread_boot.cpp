/********************************************************************************
 *   File Name:
 *      thread_boot.cpp
 *
 *   Description:
 *      Boots up the GPIO Driver project. Primarily this takes care of low level
 *      hardware initialization, printing out version information to the console,
 *      and kicking the watchdog.
 *
 *   2019 | Brandon Braun | brandonbraun653@gmail.com
 ********************************************************************************/


/* Chimera Includes */
#include <Chimera/constants/common.hpp>
#include <Chimera/chimera.hpp>
#include <Chimera/serial.hpp>
#include <Chimera/threading.hpp>
#include <Chimera/watchdog.hpp>

/* Project Includes */
#include <hw_initialize.hpp>
#include <system_hardware.hpp>
#include <system_threads.hpp>


using namespace Chimera;
using namespace GPIODriver;

namespace GPIODriver::Thread
{
  void BootUpThread( void *argument )
  {
    Threading::signalSetupComplete();

    Chimera::Status_t initResult = HW::Serial::initializeDebugTerminal();

    /*------------------------------------------------
    The below functions depend upon the debug terminal
    being initialized properly, hence the split in the
    IF statements.
    ------------------------------------------------*/
    if ( initResult == Chimera::CommonStatusCodes::OK )
    {
      initResult |= HW::GPIO::initializeGPIO();
      initResult |= HW::SPI::initializeSPI();
      initResult |= HW::Serial::initializeTerminal();

      /*------------------------------------------------
      Must be left for last because as nothing else can
      kick the dog at this point in the startup.
      -----------------------------------------------*/
      initResult |= HW::Watchdog::initializeWatchdog();
    }

    /*------------------------------------------------
    This is the go-no-go point for the system initialization.
    Either we passed all initialization steps or we didn't.
    ------------------------------------------------*/
    if ( initResult != Chimera::CommonStatusCodes::OK )
    {
      Chimera::Watchdog::invokeTimeout();
    }
    else
    {
      HW::Watchdog::watchdog->start();
    }

    /*------------------------------------------------
    Start-up all threads
    ------------------------------------------------*/
    for ( uint8_t i = 0; i < handle.size(); i++ )
    {
      if ( handle[ i ] )
      {
        xTaskNotify( handle[ i ], MSG::EXECUTE, eSetValueWithOverwrite );
      }
    }

    /*------------------------------------------------
    The boot thread is low priority, so this is a great place
    to validate that all threads are getting execution time by
    kicking the watchdog here and here alone.
    ------------------------------------------------*/
    while ( 1 )
    {
      HW::Watchdog::watchdog->kick();
      delayMilliseconds( HW::Watchdog::WATCHDOG_KICK_RATE_MS );
    }
  }
}  // namespace GPIODriver::Threads
