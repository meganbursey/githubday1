=begin
Until LOOPS
count = 0
until count == 10
	count += 1
	
	puts count
=end

=begin
puts "Give me a number between 1 and 10"
number = gets.chomp.to_i

until number == 0
	puts number*2
	number -= 1 
=end

=begin
puts "Can we go to Itchy and Scratchy Land?"
answer = gets.chomp.downcase
until answer == "yes"
puts "Please?"
answer = gets.chomp.downcase
=end

=begin
num = 1 
while num < 10
	puts num
	num += 1
=end

=begin
USING WHILE IN A LOOP EXAMPLE
name = " "
while name != "jacob"
	puts "What is your name?"
	name = gets.chomp.downcase

=end



=begin
num = rand(1..10)
while num != 7
	puts num
	num = rand(1..10)
end
=end

=begin
friends = ["Jane","Sam","Bob"]
friends.each_with_index do |name, index|
	puts "#{name} is number #{index+1}!"
end
=end

=begin
animals = ["snake","pigeon","crocodile","iguana"]
animals.each do |x|
	puts x
end
=end


=begin
my_fav = "iguana"
animals = ["snake","pigeon","crocodile","iguana"]
animals.each do |x|
	if x == my_fav
		puts "I love " + my_fav
	else
	puts "meh"
end
end
=end

=begin
state1 = {"Name"=>"Georgia","Capital"=>"Atlanta","Population"=>"one million","Area"=>"large"}
state1.each do |key, value|
	puts key + ": " + value
end
=end



=begin
example
profile = {}
puts "what is your name?"
profile["Name"] = gets.chomp
puts "what is your age?"
profile["age"] = gets.chomp
puts "what is your hometown?"
profile["Hometown"] = gets.chomp
puts "what is your favorite food?"
profile["Food"] = gets.chomp

profile.each do |key, value|
	puts "Wow that's so cool that your #{key} is #{value}"
end
=end


=begin
puts "Enter five numbers"
array = gets.chomp.split
sum = 0
product = 1 
array.each_with_index do |x, index|
	sum = sum+x.to_i
	product = product*x.to_i
array[index] = x.to_i
end
=end



