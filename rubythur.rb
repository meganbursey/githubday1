class Person
	attr_accessor :name, :age
	def initialize (name, age)
		@name = name
		@age = age
	end
end


	def name
		@name
end

def age
	@age
end

def birthday
	@age +=1
end

def change_name(newname)
	@name = newname
end


class User 
	def initialize (email, mobile, pw)
		@email = email
		@mobile = mobile
		@pw = pw
	end
end

=begin
class Pet
	attr_accessor :species, :name, :gender, :sound
	def initialize (species, name, gender, sound)
		@species = species
		@name = name
		@gender = gender
		@sound = sound 
	end

end

dog = Pet.new("lab", "sparky", "boy", "hey im sparky")

puts "my pet is " + dog.name + " he says " + dog.sound + " he is a " + dog.species
=end




class Product
	attr_accessor :name, :price, :quantity
	def initialize (name, price, quantity)
		@name = name
		@price = price
		@quantity = quantity
	end
	def shipment
		@quantity +=1
	end
	def sale
		@quantity -=1
	end
end

=begin
###EXERCISE###
#create a brand new clas: Vehicle#
class Vehicle
	attr_accessor :make, :model, :year
	def initialize (make, model, year)
		@make = make
		@model = model
		@year = year
	end 
def growingold
	@year -=10
end
end



car = Vehicle.new("Honda ", "Accord ", 2018)


puts "my car is " + car.make + car.model
car.growingold
puts car.year
=end


=begin
shoestore = Product.new("running shoes", 70, 500)
puts shoestore.quantity
shoestore.shipment 
puts shoestore.quantity
shoestore.sale
puts shoestore.quantity
=end

=begin
#exercise to add or subtract quantity from an amount in the store
use the quantity and then add/subtract from it
need to call a methos on the object we just created 
=end


