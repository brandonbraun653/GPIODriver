/********************************************************************************
*   File Name:
*       
*
*   Description:
*       
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
  }

  namespace SPI
  {
    Chimera::Status_t initializeSPI();
  }

  namespace GPIO
  {
    Chimera::Status_t initializeGPIO();
  }
}

#endif /* !GPIO_DRIVER_HARDWARE_INITIALIZE_HPP */