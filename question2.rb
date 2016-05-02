
		def method1
	  		x = 11
	  		method2 do |x|
	    		puts x
			end 
		end 
		def method2
	  		x = 22
			yield 33 
		end 
		def method3
	 		 x = 11
	  		method2 do |y|
	    		puts x
			end 
		end 

	

	#s=Solution2.new
	

	puts " Output when method1 is called:"
	puts " #{method1}"  

	puts " Output when method3 is called:"
	puts " #{method3}" 
	
# Output: C:\Users\Mitalee\Desktop\Ruby>ruby question2.rb
#  Output when method1 is called:
# 33

#  Output when method3 is called:
# 11 
