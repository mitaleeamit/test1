#a.	class is called Troll
class Troll
	#attributes ugliness, smelliness, and strength
	attr_accessor :ugliness, :smelliness, :strength, :grunt, :fight
	def initialize
		#c.	upon instantiation, an object of this class has a member variable, a String, called grunt, whose initial value is "UNGAH" 
		@grunt="UNGAH"

	end

	#d.	class has an instance method called speak() 
	def speak
		#prints the value of the instance variable grunt 42 times
		42.times do 
			puts @grunt
			
		end
	end

	#e.	class has an instance method called reverse() 
	def reverse
		#prints the value of the instance variable grunt backwards
		puts @grunt.reverse
	end

	#f.	class has a static/class method called propagate()
	def self.propagate
		#returns a Troll instance whose grunt attribute is "eegah"
		@grunt="eegah"
	end
	def respond_to?(str)
	fight==str
		puts true
	 end
		
end

#g.	Imagine a Troll instance fred
fred=Troll.new
	

	puts " Output when method1 is called "  

	fred.speak
	fred.reverse


	fred.respond_to?("fight")
