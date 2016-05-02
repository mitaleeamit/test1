# This function takes two integers, a and b, and calculates the sum of a and b, then returns the square of the sum.

 def check_squared_sum(a,b)
 sum=a.to_i+b.to_i
 sq=sum*sum
end

# This method takes in an array of integers, sorts it, then increments every element by 1, and returns it. It does not matter if this method is destructive or not.

def sort_array_plus_one(a)

 	a.sort!
			
			c = 0
 			len = a.length
	

			until c > len-1 do
 	   			a[c]= a[c].to_i+1
   			c +=1;
			end
 			a
	end

#The third method takes in two strings, a first_name and last_name. It will return the first_name concatenated with the last_name, along with a space in between.

def combine_name(first_name,last_name)
 "'"+first_name.to_s+" "+last_name.to_s+"'"
end


puts"Sum of 4 and 1 and square of the sumsquare is: #{check_squared_sum(4,1)}"

puts "The sort array [4,8,1,6,2,7,3,5] plus one is : #{sort_array_plus_one([4,8,1,6,2,7,3,5])}"

puts "combine_name of Mitalee and Save is: #{combine_name('Mitalee','Save')}"

# OutPut: C:\Users\Mitalee\Desktop\Ruby>ruby question0.rb
# Sum of 4 and 1 and square of the sumsquare is: 25
# The sort array [4,8,1,6,2,7,3,5] plus one is : [2, 3, 4, 5, 6, 7, 8, 9]
# combine_name of Mitalee and Save is: 'Mitalee Save'


