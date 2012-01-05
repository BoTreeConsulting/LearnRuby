class Wall
	def initialize(numOfBottles)
		@bottles = numOfBottles
	end
	
=begin rdoc
Predicate ends in a quotation mark, returns Boolean
=end
	def empty?()
		@bottles.zero?
	end
	
=begin rdoc
Destructive method, ends in a exclamation mark
=end
	def singOneVerse!()
		puts sing("On the wall, ") + sing("\n") + takeOneDown! + sing(" on the wall \n\n")
	end
	
	private	
	def sing(extra = '')
		# Expression inside String, called interpolation. It is done using #{<Any expression>} inside string...
		"#{(@bottles > 0) ? @bottles : 'no more'} #{(@bottles == 1) ? 'bottle' : 'bottles'} of beer " + extra
	end
	
=begin rdoc
Destructive method named with a bang because it decrements @bottles.
Returns a String
=end
	
	def takeOneDown!()
		@bottles -= 1
		'take one down, pass it around, '
	end
end

wall = Wall.new(99)
wall.singOneVerse! until wall.empty?