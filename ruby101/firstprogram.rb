
=begin
1.Write a program that asks for your favorite Crayola crayon and then takes the string and yells it back in all caps and in reverse.

puts "What is your favorite Crayola crayon color?"
crayon = gets.chomp
puts "#{crayon.reverse.upcase}!?"
=end

=begin
2. Write a program that asks for your mood for the day, then returns the length of the string. Then return the string with 'meow' prepended to it.


puts "What mood are you in today?"
mood = gets.chomp
puts "The length of your answer string is #{mood.length}"
puts "meow " + mood
=end

=begin
3.Write a program that takes two numbers from the user and shows the sum, difference, product and quotient of the two numbers.

print "please give me a number:"
num1 = gets.chomp.to_i
print "now a second number"
num2 = gets.chomp
=end

=begin
4. Write a program that asks for a sentence. Then ask for their favorite word in that sentence. Then tell them what index that word starts at. See the Ruby Docs page for String for a handy method to use. 


puts "Give me a sentence please..."
sen = gets.chomp
puts "What's your favorite word in that sentence?"
fave = gets.chomp
puts "Oh that one starts at index #{sen.index(fave)}!"
=end

=begin
5. Write a program that asks for the cost of your dinner at a restaurant. The program will return back to you a tip of 18% of your meal cost. Make sure the tip is always returned with two decimal places.

puts "How much did dinner cost?"
total = gets.chomp.to_f
tip = total * 0.18
puts "Okay, that tip should be $#{'%0.2f' %tip}"
=end

=begin
6. Write a program that accepts your age. Convert your age to how old you are in seconds. Convert your age to how old you would be on the 8 different planets (hint: search planet rotation conversion rates). Output what your age in years would be on each planet.


print "So how old are you?"
age = gets.chomp.to_i
puts "Oh damn, so that means you're #{age * 31536000} seconds old!"
puts "And then..."
puts "Your age on Mercury is #{(age * 365)/87.96).round(2)}"