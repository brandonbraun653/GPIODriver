/********************************************************************************
 *   File Name:
 *    system_threads.cpp
 *
 *   Description:
 *    Source file for the GPIO Driver thread resources
 *
 *   2019 | Brandon Braun | brandonbraun653@gmail.com
 ********************************************************************************/

#include <system_threads.hpp>

namespace GPIODriver::Thread
{
  std::array<TaskHandle_t, MAX_GPIO_DRIVER_THREADS> handle{};
}
