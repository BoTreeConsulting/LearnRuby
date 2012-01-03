#!/usr/bin/ruby

class MegaGreeter
	attr_accessor :names
  
	def initialize (names = "World")
		@names = names 
	end

# Say hi to everyone...
	def sayHi
 
		if @names.nil?
			puts "..."
		 
		elsif @names.respond_to?("each")
			@names.each do |name|
			puts "Hi #{name}!"
		end
		
		else
			puts "Hi #{@names}"
		end
  
	end
 
	def sayBye
		if @names.nil?
			puts "..."
   
		elsif @names.respond_to?("join")
			puts "Good bye #{@names.join(', ')}, come back to us!"
    
		else
			puts "Good bye, #{@names}"
		end
	end

end

if __FILE__ == $0
	mg = MegaGreeter.new("Parth")
	mg.sayHi
	mg.sayBye

	mg.names = "Barot Parth Girishbhai"
	mg.sayHi
	mg.sayBye

	mg.names = ["Barot Parth Girishbhai", "Yahviben", "Urvi", "Bena", "Lalo", "Soniyo"]
	mg.sayHi
	mg.sayBye

	mg.names = nil
	mg.sayHi
	mg.sayBye
end
