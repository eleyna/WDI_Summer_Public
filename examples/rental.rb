require 'pry'

class Person
  attr_accessor :name, :age, :gender, :apartment, :ssn
  def initialize(name, age, gender, ssn)
    @name = name
    @age = age
    @gender = gender
    @ssn = ssn
  end

  def to_s
    return "#{@name} is a #{@age} year old #{@gender}. SSN is #{@ssn}"
  end
end

class Building
  attr_accessor :address, :style,
                :has_doorman, :is_walkup,
                :num_floors, :apartments,
                :pets_allowed

  def initialize(address, style, has_doorman, is_walkup, num_floors, pets_allowed)
    @address = address
    @style = style
    @has_doorman = has_doorman
    @is_walkup = is_walkup
    @num_floors = num_floors
    @pets_allowed = pets_allowed
    @apartments = {}
  end

  def to_s
    "This building has #{@apartments.count} apartments."
  end
end

class Apartment
  attr_accessor :name, :rent, :sqft, :num_bedrooms, :num_bathrooms, :renters
  def initialize(name, rent, sqft, num_bedrooms, num_bathrooms)
    @name = name
    @rent = rent
    @sqft = sqft
    @num_bedrooms = num_bedrooms
    @num_bathrooms = num_bathrooms
    @renters = []
  end

  def is_occupied?
    @renters.any?
  end

  def to_s
    "#{@name} has #{@sqft} sqft and #{@renters.count} renters at #{@rent}/month."
  end
end

mckibben_lofts = Building.new("38 McKibben St", "loft", false, false, 7, true)
mckibben_lofts.apartments[:unit_a] = Apartment.new("A", 3200, 200, 1, 2)
mckibben_lofts.apartments[:unit_b] = Apartment.new("B", 2800, 300, 1, 1)
mckibben_lofts.apartments[:unit_a].renters << Person.new("David", 30, "male", 4567)
mckibben_lofts.apartments[:unit_a].renters << Person.new("Samantha", 20, "female", 7896)

the_best_lofts = Building.new("391 Kingsdale Ave", "loft", true, false, 9, false)

some_brownstone = Building.new("34 Clinton St", "brownstone", false, false, 3, true)



the_best_lofts.apartments[:unit_1] = Apartment.new("1", 1800, 750, 1, 1)
the_best_lofts.apartments[:unit_2] = Apartment.new("2", 2000, 800, 2, 1)
some_brownstone.apartments[:unit_1] = Apartment.new("1", 3000, 1500, 2, 1)
some_brownstone.apartments[:unit_2] = Apartment.new("2", 3400, 1200, 3, 1)
the_best_lofts.apartments[:unit_1].renters << Person.new("Sarah", 25, "female", 5678)
the_best_lofts.apartments[:unit_2].renters << Person.new("Michael", 78, "male", 1234)
some_brownstone.apartments[:unit_1].renters << Person.new("Jane", 45, "female", 2345)
some_brownstone.apartments[:unit_2].renters << Person.new("Frank", 87, "male", 3456)

puts the_best_lofts
puts the_best_lofts.apartments[:unit_1]
the_best_lofts.apartments[:unit_1].renters.each {|renter| puts renter}

puts the_best_lofts
puts the_best_lofts.apartments[:unit_2]
the_best_lofts.apartments[:unit_2].renters.each {|renter| puts renter}

puts some_brownstone
puts some_brownstone.apartments[:unit_1]
some_brownstone.apartments[:unit_1].renters.each {|renter| puts renter}

puts some_brownstone
puts some_brownstone.apartments[:unit_2]
some_brownstone.apartments[:unit_2].renters.each {|renter| puts renter}



puts mckibben_lofts
puts mckibben_lofts.apartments[:unit_a]
mckibben_lofts.apartments[:unit_a].renters.each {|renter| puts renter}

<<<<<<< HEAD



# Output a summary of each building
=======
# Make another building (2 total buildings)
# Add at least 2 apartments to each building (4 total apartments)
# Add at least one tenent in each apartment (4+ total tenents)
# Output a summary of each building
# Add two attributes in total
>>>>>>> upstream/master
