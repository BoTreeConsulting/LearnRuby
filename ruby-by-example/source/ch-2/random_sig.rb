#!/usr/bin/ruby

# You can run this program from shell as per following command

# usr@usr-desktop:/E/ruby/workspace/ruby-by-example/ch-2$ ruby random_sig.rb any_filename_here

puts "Home directory = " + ENV["HOME"] # prints HOME env variable (/home/parth for me). ENV allows to read env varialbes.
# filename would be either comand line arg OR default file...
filename = ARGV[0] || ('/E/Web/books/ruby/ruby-by-example/overview.txt')
quotFile = File.new(filename,'r') # Opens file in read mode
quoteLines = quotFile.readlines() # read all lines
quotFile.close() # close it...

quots = quoteLines.to_s.split("\n\n") # convert to string, split by two \n.
puts "Total lines = " + quots.size.to_s
puts quots.join(", ") # prints string joined with ", ", for the quots array

randomIndex = rand(quots.size) # fetch random index from toal array size
todaysQuot = quots[randomIndex] # pick random quot

sigFileName = ('/E/Web/books/ruby/ruby-by-example/my.signature')
sigFile = File.new(sigFileName, 'w') # opens file in write mode

# write to file...
sigFile.puts "Parth Barot | parth@parth.com | http://www.parth.com"
sigFile.puts todaysQuot
sigFile.close()