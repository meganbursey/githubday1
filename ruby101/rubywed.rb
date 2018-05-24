#METHODS
=begin
def hello
	puts "Hello Universe"
end

hello
=end

=begin
#puts sum doesn't requite 'puts' when you call it
def add_it_up
	sum = 100 + 250
	puts sum
end

add_it_up
=end


=begin
#return sum requires 'puts' when you call it
def two_plus_two
	sum = 2 + 2
	return sum
end
=end

=begin
#ARGUMENTS (PARAMETERS)
puts two_plus_two

def add_it_up(num1, num2)
	sum = num1 + num2
end

puts add_it_up(3, 5)
=end

=begin
# create a method for converting weight from pounds to kilograms
def pounds_to_kg (pounds)
	pounds * 0.453592
end

puts "100 pounds in kilos is " + pounds_to_kg(100).to_s
=end

=begin
#another equation for pounds to kilos which asks for user input
def pounds_to_kilos(pounds)
	kilos = pounds * 0.45
	return kilos
end 

puts "how many pounds is that?"
weight = gets.chomp.to_i
puts pounds_to_kilos(weight)
=end

=begin
#alphabetize some user words from the user
def alphabetize(userwords)

	userwords.chars.sort.join

end

puts "give me words"
words = gets.chomp

puts alphabetize(words)
=end

=begin
#create a method that converts an array into a hash

def arraytohash(arr)
	hash = {}
arr.each_with_index do |item, index|
	hash[index] = item

end
return hash
end
ourinput = ["apple", "mango", "orange"]
puts arraytohash(ourinput)
=end

=begin
#METHODS CHALLENGE

def float_check(num)
	if num.include?(".")
		return true
	else
		return false
	end
end

def zero_check(num)
	if num == 0
		return true
	else
		return false
	end
end

def take_number

	puts "please give me a number: "
	num = gets.chomp

	if float_check(num)
		puts "no we wanted an integer"
		take_number
	else 
		num = num.to_i

	if zero_check(num)
		puts "nooo, we said no zeroes"
		take_number
	else 
		return num
	end
end
end

arr = []
2.times do 
	num = take_number
	arr.push(num)
end

arr[1] % arr[0] == 0
puts "#{arr[1]}/#{arr[0]} =#{arr[1]/arr[0]}"
else
	puts "#{arr[1]}/#{arr[0]} = #{arr[1]/arr[0]}, with a remainder of #{arr[1]%arr[0]}"
end
=end

=begin
#TERNANRY EXAMPLE
answer =array.include?(42)? "everything" : "nothing"
=end


HOMEOWORK 1 (incomplete)

puts " "
num1 = gets.chomp

puts " gimme another"
num2 = gets.chomp
"what do you wanna do"

if answer == "add"
	add(num1, num2)




