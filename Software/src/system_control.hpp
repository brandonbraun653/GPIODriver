/********************************************************************************
 *   File Name:
 *    system_control.hpp
 *
 *   Description:
 *    Provides low level routines for interacting with the system hardware
 *
 *   2019 | Brandon Braun | brandonbraun653@gmail.com
 ********************************************************************************/

#pragma once
#ifndef GPIO_DRIVER_SYSTEM_CONTROL_HPP
#define GPIO_DRIVER_SYSTEM_CONTROL_HPP

/* C++ Includes */
#include <cstdint>

/* Chimera Includes */
#include <Chimera/chimera.hpp>
#include <Chimera/types/common_types.hpp>


namespace GPIODriver
{
  namespace Power
  {
    /**
     *  Enables the power rail that supplies the current source drivers.
     *
     *  @return Chimera::Status_t
     */
    Chimera::Status_t enable();

    /**
     *  Disables the power rail supplying the current source drivers
     *
     *  @return Chimera::Status_t
     */
    Chimera::Status_t disable();
  }

  namespace Source
  {
    /**
     *  Enables the output of the source driver shift register
     *
     *  @return Chimera::Status_t
     */
    Chimera::Status_t enable();

    /**
     *  Disables the output of the source driver shift register
     *
     *  @return Chimera::Status_t
     */
    Chimera::Status_t disable();

    /**
     *  Writes new data to the shift register controlling the
     *  source drivers.
     *
     *  @param[in]  data    The data buffer to write from
     *  @param[in]  size    How many bytes to write
     *  @return Chimera::Status_t
     */
    Chimera::Status_t write( const uint8_t *const data, const size_t size );
  }

  namespace Sink
  {
    /**
     *  Enables the output of the sink driver shift register
     *
     *  @return Chimera::Status_t
     */
    Chimera::Status_t enable();

    /**
     *  Disables the output of the sink driver shift register
     *
     *  @return Chimera::Status_t
     */
    Chimera::Status_t disable();

    /**
     *  Writes new data to the shift register controlling the
     *  sink drivers.
     *
     *  @param[in]  data    The data buffer to write from
     *  @param[in]  size    How many bytes to write
     *  @return Chimera::Status_t
     */
    Chimera::Status_t write( const uint8_t *const data, const size_t size );
  }

  namespace Sense
  {
    /**
     *  Reads the current logical state of the GPIO outputs. This is
     *  not the shift register outputs for the source/sink drivers but
     *  the actual pins connected to external hardware.
     *
     *  @param[in]  data    The data buffer to read into
     *  @param[in]  size    How many bytes to read
     *  @return Chimera::Status_t
     */
    Chimera::Status_t read( uint8_t *const data, const size_t size );
  }
}

#endif /* !GPIO_DRIVER_SYSTEM_CONTROL_HPP */