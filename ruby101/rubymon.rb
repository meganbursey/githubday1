#MONDAY 22 MAY HOMEWORK
=begin 
# -- QUESTION 1
1.  Write a script that takes user input and passes it to a method as an argument and then displays it into the following concatenated string.

 "Hello (name).  Nice to meet you." --

puts "What is your name?"

name = gets.chomp

def greeting(name)
	puts "Hello " + name +". nice to meet you"

end

greeting(name)

# -- QUESTION 2 --
2.  Correct the code below so it displays the sum of x, y, and z

 def sum_numbers(x,y)

        x+y+z

    end --

def sum_numbers(x,y,z)
	x+y+z
end 


# -- QUESTION 3.  Add to the code below so it displays "Don't forget to (to do item)." for each item.

 

     to_do = ["wash the car", "buy groceries", "finish homework", "pay the bills"] --


 to_do = ["wash the car", "buy groceries", "finish homework", "pay the bills"]

 to_do.each do |chore|
 	puts "Don't forget to #{chore}"

 end


# -- QUESTION 4.  What is the return value of the following:

 

    def avg(a, b, c, d)

         total =a + b + c + d

         avg = total / 4

         return c + d

    end

    avg(5, 8, 6, 10) --

def avg(a, b, c, d)

         total =a + b + c + d

         avg = total / 4

         puts c + d

end

    avg(5, 8, 6, 10)


# -- QUESTION 5.  What is the return value of the following

     names = ['David', 'Trevor', 'Sarah', 'Mason']

     names[2] --

names = ['David', 'Trevor', 'Sarah', 'Mason']

puts names[2]



# -- QUESTION 6.  How do you add "bobcat" to this list of wild cat species?

 

     wild_cats= ['cheetah', 'lion', 'leopard', 'tiger'] --

wild_cats = ['cheetah', 'lion', 'leopard', 'tiger']
wild_cats.push("bobcat")
puts wild_cats


# -- QUESTION 7.  How do you retrieve the birthplace of user1?

 

      user1= {:firstname=> "Johnny", :lastname => "Begood", :gender => "male",

                       :dob => "08/21/1981", :birthplace => "Seattle, WA"} --

user1 = {:firstname=> "Johnny", :lastname => "Begood", :gender => "male", :dob => "08/21/1981", :birthplace => "Seattle, WA"}
puts user1[:birthplace]


# -- QUESTION 8 How do you add "Atlanta, GA " as the current city for user1 in the hash from question 8?--

user1 = {:firstname=> "Johnny", :lastname => "Begood", :gender => "male", :dob => "08/21/1981", :birthplace => "Seattle, WA"}

user1[:currentcity] = "Atlanta"
puts user1


# -- QUESTION 9 How would you retrieve "y" in the following array?

 

      alpha_soup= ["c", "k", "y", "u"]
      puts alpha_soup[2]


#10.  How would you retrieve "14" in the following hash?

 

       alphabits= {"d" =>4, "k" => 14, "u" => 52}
       puts alphabits["k"]

=

 # 11. Write a loop that continues to display random numbers between 1 and 10 until the number generated is 3.


 num = 0 

 until num == 3

 	puts num = rand(1..10)
 	end


# 12.  Continuing from question 11 above, push each randomly generated number to an array.  Then use an each loop and a conditional statement inside to display the total amount of numbers that are under 6.  Then display a statement that reads: "There are (total) numbers under 6."

num = 0

array = [] 

 until num == 3

 	puts num = rand(1..10)

 	array.push(num)
 	puts num 
 end

 	print array

	count = 0 

 	array.each do |number|
 		
 		if number < 6

 			puts number
 			count += 1
 end
end

puts "There are #{count} numbers less than 6"



#13.  Write code to create a new instance of a Vehicle object and make it honk.

class Vehicle
	attr_accessor :color, :type

    def initialize(color, type)

       @color = color

        @type = type   # car, truck, motorcyle, scooter, van

   end

           def honk

 	puts "Beep!"

	end

end

mycar = Vehicle.new("red", "truck")
mycar.honk
=end







