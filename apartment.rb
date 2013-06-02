class Apartment
  attr_accessor :unit_no, :rent, :sqft, :num_bathrooms, :num_bedrooms, :renters

  def initialize(unit_no, sqft, num_bathrooms, num_bedrooms)
    @rent = 0
    @unit_no = unit_no
    @sqft = sqft
    @num_bedrooms = num_bedrooms
    @num_bathrooms = num_bathrooms
    @renters = []
  end

  def is_occupied?
    @renters.any? #method built into ruby - "are there any values in this array"
  end

  def to_s
    "apt #{unit_no} is #{@sqft} sq. ft. and has #{@renters.count} renters"
  end
end
