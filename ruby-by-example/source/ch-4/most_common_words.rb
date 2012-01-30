#!/usr/bin/env ruby
#most_common_words.rb
class Array
	def count_of(item)
		grep(item).size
		#inject(0) { |count,each_item| item == each_item ? count+1 : count }
	end
end
def most_common_words(input, limit=25)
	freq = Hash.new() # new hashmap
	sample = input.downcase.split(/\W/) # splitting by space( '/\W/' is regex for space), return array
	sample.uniq.each do |word| # taking unique word from the array of strings.
		freq[word] = sample.count_of(word) unless word == '' # putting total number of occurance of that word in the hash, skipping ''
	end
	words = freq.keys.sort_by do |word| # sorting the keys by frequency number.
		freq[word]
		end.reverse.map do |word| # reversing it & creating a new map (Not like java map, but like a list or array) for it, to read top 25words...
		"#{word} #{freq[word]}"
	end
	return words[0, limit] # returns words starting from 0, upto limit (by default its 25)
end
puts most_common_words(readlines.to_s).join("\n")