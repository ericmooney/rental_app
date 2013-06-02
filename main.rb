require "pry"

require_relative "building"
require_relative "apartment"
require_relative "person"

building = nil

print "add (p)erson or (a)partment or (b)uilding or (q)uit:"

response = gets.chomp.downcase

while response != "q"

	if response == "b"
		building = Building.new("123 King Street", "modern", false, false, 10)
		puts "Building created."

	elsif response == "a"
    print "Unit No.: "
    unit_no = gets.chomp

    print "Sq. Ft.: "
    sqft = gets.to_i

    begin
      building.apartments[unit_no] = Apartment.new(unit_no, sqft, 1, 1)
    rescue
      puts "You need to add a building first."
    end

  elsif response == "p"
    print "Name: "
    name = gets.chomp

    print "Age: "
    age = gets.chomp.to_i

    print "Gender: "
    gender = gets.chomp

    begin
      print "Which apartment will you live in?"
      apt = gets.chomp
    
      building.apartments[apt].renters << Person.new(name, age, gender)
    rescue
      puts "That apartment does not exist, try again."

    retry
    end
  end

  print "add (p)erson or (a)partment or (b)uilding or (q)uit:"
  response = gets.chomp.downcase

end



binding.pry