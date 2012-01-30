#!/usr/bin/env ruby

class Integer
  
  @@fibonacci_results = [1, 1] # Both 0 and 1 have a value of 1
  
  def fib()
    @@fibonacci_results[self] ||= (self-1).fib + (self-2).fib
  end
  
  def show_fib()
    @@fibonacci_results.inspect
  end
end

#my_int = 3
#my_int.fib
#puts my_int.show_fib.to_s