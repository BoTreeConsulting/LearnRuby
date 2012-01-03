#!/usr/bin/ruby

# this is comment
DAYS_IN_PERIOD = 14 # this is constant
SECONDS_IN_DAY = 60 * 60 * 24

# Time.local takes ==> second, minute, hour, day of month, month, year, day of week, day of year, daylight saving on/off, timezone...
matching_date = Time.local(0,0,0,22,9,2006,5,265,true,"EDT")
current_date = Time.new()

puts "PayDay matching = " + matching_date.to_s
puts "Today = " + current_date.to_s

diff_in_seconds = current_date - matching_date
diff_in_days = (diff_in_seconds / SECONDS_IN_DAY).to_i
days_to_Wait =  (DAYS_IN_PERIOD - diff_in_days) % DAYS_IN_PERIOD

if (days_to_Wait.zero?)
  puts "Payday today!"
else
  print "Payday in " + days_to_Wait.to_s + ' day'
  puts days_to_Wait == 1 ? '.' : 's.'
end
