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
  static constexpr std::string_view firmwareVersion = "0.0.1";
  static constexpr std::string_view hardwareVersion = "0.0.1";
}

#endif /* !GPIO_DRIVER_VERSION_HPP */
