#!/usr/bin/env ruby
# use_cli.rb
=begin rdoc
Please refer to the SimpleCLI Class for documentation.

require keyword, which takes a String argument 
that is the name of an external file without the .rb extension. This makes 
the code in that external file available to the file doing the requiring—it’s 
analogous to running irb with the -r flag.

=end
 require 'simple_cli'
 cli = SimpleCLI.new()
cli.parse_opts(ARGV)