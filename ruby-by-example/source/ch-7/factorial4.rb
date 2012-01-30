#!/usr/bin/env ruby

class Integer
  
  #Putting factorial values for 0 & 1. So,we will put every next calculated fact to this class variables, with that number as an index.
  @@mem_array = [1,1] 
  def fact()
    @@mem_array[self] ||= self * (self-1).fact
  end
  
  def show_fact()
    @@mem_array.inspect
  end
end

#my_int = 2
#my_int.fact
#puts my_int.show_fact.to_s