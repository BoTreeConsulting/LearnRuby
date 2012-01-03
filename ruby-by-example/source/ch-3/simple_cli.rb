#!/usr/bin/env ruby
# simple_cli.rb
=begin rdoc
Parses command line options.
=end
class SimpleCLI
   
  # CONSTANTS
   
  # Hash, same like HashMap in Java = you declare a Hash with braces.
  #   The items to the left of the => are the keys of the Hash, while the items to the 
  #   right of the => are the values of the Hash. The values here are Arrays
  OPTIONS = {
    :version => ['-v', '--version'],
    :help    => ['-h', '--help'],
    :reset   => ['-r', '--reset'],
  }

#This is a very useful tool for multi-line text called a here doc. With a here doc declaration, the programmer can say 
# that an expression should continue across multiple lines until a specific marker is reached—END_OF_USAGE, in this case.

USAGE =<<END_OF_USAGE
This program understands the following options:
  -v, --version : displays the current version of the program
  -h, --help    : displays a message with usage instructions
  -r, --reset   : resets the program
With no command-line options, the program performs its default behavior.
END_OF_USAGE

  VERSION = "Some Project version 0.01 (Pre-Alpha)\n"
  
  # METHODS
  
  def parse_opts(args)
    return option_by_args(args[0]) if understand_args?(args)
    # options are not understandable, therefore display_usage
    display(USAGE) 
  end
 
 
 private
 def display(content)
    puts content
  end
  def do_default()
    puts 'I am performing my default behavior'
  end
 def option_by_args(arg)
    return display(VERSION) if OPTIONS[:version].include?(arg)
    return display(USAGE)   if OPTIONS[:help].include?(arg)
    return reset()          if OPTIONS[:reset].include?(arg)
    do_default()
  end
  def reset()
    puts 'I am resetting myself.'
  end
  
  def understand_args?(args)
    # works in Ruby1.8, it returns true if any of the key of OPTIONS has array having the argument.
    OPTIONS.keys.any? { |key| OPTIONS[key].include?(args[0]) }
=begin works in Ruby1.6
   return true unless args
    return true unless args[0]
    return true if args[0].size.zero?
    OPTIONS.keys.each do |key|
   return true if OPTIONS[key].include?(args[0])
  end
 return false
=end
  end
end