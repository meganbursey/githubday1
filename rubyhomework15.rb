=begin
1. Write a program that asks for a score (an integer), and assigns a letter grade based on the score. 

Letter grades are assigned as follows:
100-90: A
 89-80: B
 79-70: C
 69-60: D
Less than 60: F
More than 100: "Wrong score"
=end


=begin
puts "Enter your score"
score = gets.chomp.to_i

if score >100 
	puts "Wrong score"
elsif score >89
	puts "Well done, you got an A!"
elsif score >79
	puts "You got a B, very nice"
elsif score >69
	puts "You got a C"
elsif score >59
	puts "It's a D for you"
else score <60
	puts "You failed with a big F"

end
=end

=begin
2. Create a program that takes two numbers from the user, finds out if the
first number is divisible by the second. If not divisible, let the user know
what the remainder is.
=end

=begin
puts "enter any number"
answer1 = gets.chomp.to_i

puts "enter any other number"
answer2 = gets.chomp.to_i

if answer1 % answer2 != 0
	puts "sorry, #{answer1 % answer2}"


end
=end

=begin
3. Create a program that takes a name (or any word, really), and spells it out, one letter at a time (horizontally). Then have the name/word spelled out in one line (vertically), but with commas between each letter (but not after the last letter).
=end

=begin
puts "Enter any word you like"
word = gets.chomp.split("")
print word
puts
word.each do |x|
puts x + ","
end
=end

=begin
4. Write a program that translates one English word into Pig Latin. Because the rules for Pig Latin can vary, 
I'll be specific:

If the given word starts with a consonant, move only that consonant to end and then add "ay" to the end (e.g.: coffee -> offeecay, blogger -> loggerbay)
If the given word starts with a vowel, add "way" to the end of the word (e.g., office -> officeway)
=end

=begin
puts "give me a word"
word = gets.chomp.downcase

array = word.split("")
print array
if array.first == "a" || array.first == "e" || array.first == "i" || array.first == "o" || array.first == "u"
	puts word + "way"
else
x = array.shift
puts x
puts array.join + x + "ay"
end
=end

5. Create a Ruby program that finds how many prime numbers are between 1 and a number given by the user. Hint: look through the Ruby Docs on the Prime class, and note that sometimes you must import, or require, certain Ruby libraries.













