#!/usr/bin/env ruby
# test_commify.rb
require 'commify'
puts ARGV[0].to_f.commify()
alt_args = {
	:breakpoint => 2,
	:decimal_pt => 'dp',
	:show_hundredths => false
}
puts ARGV[0].to_f.commify(alt_args)