/********************************************************************************
 *   File Name:
 *      command_parser.hpp
 *
 *   Description:
 *      Interface for the command parser library. This module will take
 *      character data as input and convert them into command requests to be executed
 *      by the command executor.
 *
 *   2019 | Brandon Braun | brandonbraun653@gmail.com
 ********************************************************************************/

#pragma once
#ifndef GPIO_DRIVER_COMMAND_PARSER_HPP
#define GPIO_DRIVER_COMMAND_PARSER_HPP

namespace GPIODriver
{
  struct cat
  {
    bool type1;
    bool type2;
  };

  class CommandParser
  {
  public:
    
    CommandParser();
    ~CommandParser();

    void somefunc();

  protected:
  private:
  };
}  // namespace GPIODriver

#endif /* !GPIO_DRIVER_COMMAND_PARSER_HPP */