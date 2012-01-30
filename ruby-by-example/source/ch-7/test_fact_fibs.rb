#!/usr/bin/env ruby
# test_opts.rb
=begin comment
Run this without warnings to avoid messages about method redefinition, 
which we are doing intentionally for this testing script.
=end

=begin comment
the include command that immediately follows it mixes in a Module called Benchmark. This is the workhorse 
of our script. It provides a facility for testing how long specific operations take within a program.
=end

require 'benchmark'
include Benchmark

#contains the name of the method (or function) we want to call in each file
 FUNC_OF_FILE = {
    'factorial' => 'fact',
    'fibonacci' => 'fib',
  }    
  
#determines the largest Integer on which to call that function (the upper limit, in other words).
  UPPER_OF_FILE = {
    'factorial' => 200,
    'fibonacci' => 30,
  }
  
['factorial', 'fibonacci'].each do |file|  
  (1..4).to_a.each do |num|
    require "./ch-7/#{file}#{num}"
    upper = UPPER_OF_FILE[file]
    
    bm do |test|      
      test.report("#{file}#{num}") do
        #calling some_object.send( some_func_name, some_arg ) is the same as calling some_object.some_func_name( some_arg ).
        upper.send(FUNC_OF_FILE[file])
      end    
    end  
  end
end