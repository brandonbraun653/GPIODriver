/********************************************************************************
 *   File Name:
 *       hw_initialize.cpp
 *
 *   Description:
 *       Provides initialization routines for all the low level hardware drivers.
 *
 *   2019 | Brandon Braun | brandonbraun653@gmail.com
 ********************************************************************************/


/* Project Includes */
#include <system_hardware.hpp>


namespace GPIODriver::HW
{
  namespace Serial
  {
    Chimera::Serial::SerialClass_sPtr terminal;
    Chimera::Serial::SerialClass_sPtr terminalDebug;


    Chimera::Status_t initializeTerminal()
    {
    }

    Chimera::Status_t initializeDebugTerminal()
    {
    }
  }  // namespace Serial

  namespace SPI
  {
    Chimera::SPI::SPIClass_sPtr instance;
    Chimera::GPIO::GPIOClass_sPtr cs0;
    Chimera::GPIO::GPIOClass_sPtr cs1;
    Chimera::GPIO::GPIOClass_sPtr cs2;

    Chimera::Status_t initializeSPI()
    {
    }
  }  // namespace SPI

  namespace GPIO
  {
    Chimera::GPIO::GPIOClass_sPtr powerEnable;

    Chimera::Status_t initializeGPIO()
    {
    }
  }  // namespace GPIO
}  // namespace GPIODriver::HW