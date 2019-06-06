/********************************************************************************
 *   File Name:
 *      system_hardware.hpp
 *
 *   Description:
 *      Hardware translation layer that maps various resources into the actual
 *      board level descriptions.
 *
 *   2019 | Brandon Braun | brandonbraun653@gmail.com
 ********************************************************************************/

#pragma once
#ifndef GPIO_DRIVER_SYSTEM_HARDWARE_HPP
#define GPIO_DRIVER_SYSTEM_HARDWARE_HPP

/* Chimera Includes */
#include <Chimera/types/serial_types.hpp>
#include <Chimera/types/gpio_types.hpp>
#include <Chimera/types/spi_types.hpp>

namespace GPIODriver::HW
{
  namespace Serial
  {
    // User coms from PC to whatever
    // Store configuration settings here too
  }

  namespace GPIO
  {
  }

  namespace SPI
  {
  }


}  // namespace GPIODriver::HW

#endif /* !GPIO_DRIVER_SYSTEM_HARDWARE_HPP */