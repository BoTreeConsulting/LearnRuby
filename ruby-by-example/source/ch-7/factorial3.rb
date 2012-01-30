#!/usr/bin/env ruby

class Integer
  ZERO_ONE_ARRAY = [0,1]
  def fact()
    return 1 if ZERO_ONE_ARRAY.include?(self)
    return (self) * (self-1).fact()
  end
end

#my_int = 5
#puts "Factorail of #{my_int} = " + my_int.fact().to_s