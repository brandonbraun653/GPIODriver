/********************************************************************************
 *   File Name:
 *      system_threads.hpp
 *
 *   Description:
 *      Declarations for the threads used on the system
 *
 *   2019 | Brandon Braun | brandonbraun653@gmail.com
 ********************************************************************************/

#pragma once
#ifndef GPIO_DRIVER_SYSTEM_THREADS_HPP
#define GPIO_DRIVER_SYSTEM_THREADS_HPP

/* C++ Includes */
#include <array>

/* Chimera Includes */
#include <Chimera/threading.hpp>

namespace GPIODriver::Thread
{
  /**
   *  IDs used for accessing/identifying thread resources
   */
  enum ID : uint8_t
  {
    BOOT_THREAD = 0,
    CMD_PARSE_THREAD,
    OUTPUT_UPDATE_THREAD,
    INPUT_UPDATE_THREAD,
    SUPPORT_THREAD,
    HEARTBEAT_THREAD,

    MAX_GPIO_DRIVER_THREADS
  };

  /**
   *  Messages that allow high level control of a thread's
   *  execution state.
   */
  enum MSG : uint32_t
  {
    INITIALIZE = 0,
    EXECUTE,
    
    MAX_GPIO_DRIVER_THREAD_MSG
  };

  extern std::array<TaskHandle_t, MAX_GPIO_DRIVER_THREADS> handle;

  /**
   *  Initializes the entire board for proper operation and then kicks
   *  starts up the other threads.
   */
  void BootUpThread( void *argument );

  /**
   *  Heartbeat LED that lets the user know the board is alive.
   */
  void HeartbeatThread( void *argument );

  /**
   *  System thread that interacts with the user by emulating a very
   *  simple command line interface. Primary responsibilities include
   *  gathering data and reporting it to the user, dispatching user 
   *  given instructions, and printing system information upon boot.
   */
  void CommandParserThread( void *argument );

  /**
   *  System thread that is responsible for setting the output state of 
   *  the GPIO drives, whether that is active high/low. Also ensures that
   *  there is never an overlap of each drive state that could cause a 
   *  shoot through event.
   */
  void OutputUpdateThread( void *argument );

  /**
   *  System thread that is responsible for reading the current logical
   *  state of the GPIO pins, whether they are being actively driven or
   *  not.
   */
  void InputUpdateThread( void *argument );

  /**
   *  System thread that is responsible for supporting miscellaneous
   *  commands/requests that are not directly tied to the primary software
   *  functionality. Examples include getting software/hardware versions,
   *  updating configuration settings, etc.
   */
  void SupportThread( void *argument );
}

#endif /* !GPIO_DRIVER_SYSTEM_THREADS_HPP */