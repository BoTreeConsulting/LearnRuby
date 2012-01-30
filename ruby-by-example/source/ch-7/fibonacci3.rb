#!/usr/bin/env ruby

class Integer
  ZERO_ONE_ARRAY = [0,1]
  def fib()
    return self if ZERO_ONE_ARRAY.include?(self)
    return (self-1).fib + (self-2).fib
  end
end

#my_int = 3
#puts "Fibonacci for #{my_int} = " + my_int.fib.to_s