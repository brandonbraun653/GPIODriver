/********************************************************************************
 *   File Name:
 *      version.hpp
 *
 *   Description:
 *      Includes versioning information for various system components.
 *
 *   2019 | Brandon Braun | brandonbraun653@gmail.com
 ********************************************************************************/

#pragma once
#ifndef GPIO_DRIVER_VERSION_HPP
#define GPIO_DRIVER_VERSION_HPP

/* C++ Includes */
#include <string>

namespace GPIODriver
{
  /*-------------------------------------------------
  Current firmware revision of the board. Coupled with
  the hardware ID, this will help define a supported
  feature set.
  -------------------------------------------------*/
  static const std::string_view firmwareVersion = "0.0.2";

  /*-------------------------------------------------
  Default if unable to read PCB ID resistors
  -------------------------------------------------*/
  static const std::string_view hardwareVersion = "0.0.0";

  /*------------------------------------------------
  Development Tag Version
  ------------------------------------------------*/
  static const std::string_view gitVersion = "1.00b#";
}

#endif /* !GPIO_DRIVER_VERSION_HPP */
