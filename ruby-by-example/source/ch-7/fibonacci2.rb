#!/usr/bin/env ruby

class Integer
  def fib()
    return self if [0,1].include?(self)
    return (self-1).fib + (self-2).fib
  end
end

#my_int = 3
#puts "Fibonacci for #{my_int} = " + my_int.fib.to_s