#!/usr/bin/env ruby

class Integer
  def fib()
    return 0 if self.zero?
    return 1 if (self == 1)
    return (self-1).fib + (self-2).fib
  end
end

#my_int = 6
#puts "Fibonacci for #{my_int} = " + my_int.fib.to_s