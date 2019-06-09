/********************************************************************************
 *   File Name:
 *      system_hardware.hpp
 *
 *   Description:
 *      Hardware translation layer that maps various resources into the actual
 *      board level descriptions. At the time of writing, this is set up for an
 *      STM32F446RE Nucleo Development Board.
 *
 *   2019 | Brandon Braun | brandonbraun653@gmail.com
 ********************************************************************************/

#pragma once
#ifndef GPIO_DRIVER_SYSTEM_HARDWARE_HPP
#define GPIO_DRIVER_SYSTEM_HARDWARE_HPP

/* Chimera Includes */
#include <Chimera/chimera.hpp>
#include <Chimera/types/serial_types.hpp>
#include <Chimera/types/gpio_types.hpp>
#include <Chimera/types/spi_types.hpp>

namespace GPIODriver::HW
{
  namespace Serial
  {
    static constexpr uint8_t SERIAL_CHANNEL                        = 4;
    static constexpr Chimera::Serial::BaudRate SERIAL_BAUD         = Chimera::Serial::BaudRate::SERIAL_BAUD_115200;
    static constexpr Chimera::Serial::CharWid SERIAL_BITWIDTH      = Chimera::Serial::CharWid::CW_8BIT;
    static constexpr Chimera::Serial::FlowControl SERIAL_FLOW_CTRL = Chimera::Serial::FlowControl::FCTRL_NONE;
    static constexpr Chimera::Serial::Parity SERIAL_PARITY         = Chimera::Serial::Parity::PAR_NONE;
    static constexpr Chimera::Serial::StopBits SERIAL_STOP_BITS    = Chimera::Serial::StopBits::SBITS_ONE;

    static constexpr Chimera::Hardware::SubPeripheralMode SERIAL_TXFR_MODE = Chimera::Hardware::SubPeripheralMode::DMA;


    /* clang-format off */
    static constexpr Chimera::Serial::IOPins SERIAL_GPIO_INIT = {
      { /* TX Pin */
        Chimera::GPIO::Pull::NO_PULL,               
        Chimera::GPIO::Port::PORTA,                 
        Chimera::GPIO::Drive::ALTERNATE_PUSH_PULL,  
        Chimera::GPIO::State::HIGH,                 
        0,                                          
        GPIO_AF8_UART4                              
      },
      { /* RX Pin */
        Chimera::GPIO::Pull::NO_PULL,               
        Chimera::GPIO::Port::PORTA,                 
        Chimera::GPIO::Drive::ALTERNATE_PUSH_PULL,  
        Chimera::GPIO::State::HIGH,                 
        1,                                          
        GPIO_AF8_UART4                              
      }
    };
    /* clang-format on */

  }  // namespace Serial

  namespace GPIO
  {
    /* clang-format off */
    static constexpr Chimera::GPIO::PinInit GPIO_PWR_ENABLE = {
      Chimera::GPIO::Pull::NO_PULL,               
      Chimera::GPIO::Port::PORTA,                 
      Chimera::GPIO::Drive::OUTPUT_PUSH_PULL,  
      Chimera::GPIO::State::LOW,                 
      5,                                          
      0  
    };

    /* clang-format on */
  }

  namespace SPI
  {
    static constexpr uint8_t SPI_CHANNEL                      = 3;
    static constexpr Chimera::SPI::Mode SPI_MODE              = Chimera::SPI::Mode::MASTER;
    static constexpr Chimera::SPI::BitOrder SPI_BIT_ORDER     = Chimera::SPI::BitOrder::LSB_FIRST;
    static constexpr Chimera::SPI::ClockMode SPI_CLOCK_MODE   = Chimera::SPI::ClockMode::MODE0;
    static constexpr Chimera::SPI::DataSize SPI_DATA_SIZE     = Chimera::SPI::DataSize::SZ_8BIT;
    static constexpr Chimera::SPI::ChipSelectMode SPI_CS_MODE = Chimera::SPI::ChipSelectMode::MANUAL;

    static constexpr Chimera::Hardware::SubPeripheralMode SPI_TXFR_MODE = Chimera::Hardware::SubPeripheralMode::DMA;

    /* clang-format off */
    static constexpr Chimera::GPIO::PinInit SPI_SCK_PIN = {
      Chimera::GPIO::Pull::NO_PULL,               
      Chimera::GPIO::Port::PORTB,                 
      Chimera::GPIO::Drive::ALTERNATE_PUSH_PULL,  
      Chimera::GPIO::State::HIGH,                 
      3,                                          
      GPIO_AF6_SPI3  
    };

    static constexpr Chimera::GPIO::PinInit SPI_MOSI_PIN = {
      Chimera::GPIO::Pull::NO_PULL,               
      Chimera::GPIO::Port::PORTB,                 
      Chimera::GPIO::Drive::ALTERNATE_PUSH_PULL,  
      Chimera::GPIO::State::HIGH,                 
      5,                                          
      GPIO_AF6_SPI3  
    };

    static constexpr Chimera::GPIO::PinInit SPI_MISO_PIN = {
      Chimera::GPIO::Pull::NO_PULL,               
      Chimera::GPIO::Port::PORTB,                 
      Chimera::GPIO::Drive::ALTERNATE_PUSH_PULL,  
      Chimera::GPIO::State::HIGH,                 
      4,                                          
      GPIO_AF6_SPI3  
    };

    static constexpr Chimera::GPIO::PinInit SPI_CS0_PIN = {
      Chimera::GPIO::Pull::NO_PULL,               
      Chimera::GPIO::Port::PORTA,                 
      Chimera::GPIO::Drive::OUTPUT_PUSH_PULL,  
      Chimera::GPIO::State::HIGH,                 
      10,                                          
      0  
    };

    static constexpr Chimera::GPIO::PinInit SPI_CS1_PIN = {
      Chimera::GPIO::Pull::NO_PULL,               
      Chimera::GPIO::Port::PORTA,                 
      Chimera::GPIO::Drive::OUTPUT_PUSH_PULL,  
      Chimera::GPIO::State::HIGH,                 
      2,                                          
      0  
    };

    static constexpr Chimera::GPIO::PinInit SPI_CS2_PIN = {
      Chimera::GPIO::Pull::NO_PULL,               
      Chimera::GPIO::Port::PORTA,                 
      Chimera::GPIO::Drive::OUTPUT_PUSH_PULL,  
      Chimera::GPIO::State::HIGH,                 
      3,                                          
      0  
    };
    /* clang-format on */
  }
}  // namespace GPIODriver::HW

#endif /* !GPIO_DRIVER_SYSTEM_HARDWARE_HPP */