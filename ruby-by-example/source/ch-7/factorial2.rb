#!/usr/bin/env ruby

class Integer
  def fact()
    return 1 if [0,1].include?(self)
    return (self) * (self-1).fact()
  end
end

#my_int = 5
#puts "Factorail of #{my_int} = " + my_int.fact().to_s