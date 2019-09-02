/********************************************************************************
 *   File Name:
 *    hw_initialize.hpp
 *
 *   Description:
 *    Provides initialization routines for all hardware resources.
 *
 *   2019 | Brandon Braun | brandonbraun653@gmail.com
 ********************************************************************************/

#pragma once
#ifndef GPIO_DRIVER_HARDWARE_INITIALIZE_HPP
#define GPIO_DRIVER_HARDWARE_INITIALIZE_HPP

/* Chimera Includes */
#include <Chimera/types/common_types.hpp>

namespace GPIODriver::HW
{
  namespace Serial
  {
    Chimera::Status_t initializeTerminal();

    Chimera::Status_t initializeDebugTerminal();
  }  // namespace Serial

  namespace SPI
  {
    Chimera::Status_t initializeSPI();
  }

  namespace GPIO
  {
    /**
     *  Checks if the GPIO hardware has been fully initialized yet.
     *
     *  @return bool    True if initialized, false if not
     */
    bool initialized();

    /**
     *  Initializes the GPIO hardware resources
     *
     *  @return Chimera::Status_t 
     */
    Chimera::Status_t initializeGPIO();
  }

  namespace Watchdog
  {
    Chimera::Status_t initializeWatchdog();
  }
}  // namespace GPIODriver::HW

#endif /* !GPIO_DRIVER_HARDWARE_INITIALIZE_HPP */