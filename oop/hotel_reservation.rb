# In this exercise, we've already implemented the class, and you have to write the
# driver code.
# This class represents a hotel reservation.

class HotelReservation
  attr_accessor :customer_name, :date, :room_number, :amenities

  def initialize(reservation_info)
    @customer_name = reservation_info[:customer_name]
    @date = reservation_info[:date]
    @room_number = reservation_info[:room_number]
    @amenities = []
  end

  def add_a_fridge
    @amenities << "fridge"
  end

  def add_a_crib
    @amenities << "crib"
  end

  def add_a_custom_amenity(amenity)
    @amenities << amenity
  end
end


# Write your own driver code below! Make sure your code tests the following:
# The ability to change a room number even after a reservation has already been created
# The add_a_fridge method
# The add_a_crib method
# The add_a_custom_amenity method

# Driver code
puts "TESTING hotel_reservation..."
puts

reservation = HotelReservation.new(customer_name: "Tom", date: "07-29-2016", room_number: 206)

puts "Your initial room number :"
puts reservation.room_number
puts

if reservation.room_number == 206
  puts "PASS!"
else
  puts "F"
end

reservation.room_number=307

puts "Your changed room number:"
puts reservation.room_number
puts

if reservation.room_number == 307
  puts "PASS!"
else
  puts "F"
end
########
reservation.add_a_fridge

puts "Your amenities:"
puts reservation.amenities
puts

if reservation.amenities[0] == "fridge"
  puts "PASS!"
else
  puts "F"
end

reservation.add_a_crib

puts "Your amenities:"
puts reservation.amenities
puts

if reservation.amenities[1] == "crib"
  puts "PASS!"
else
  puts "F"
end

reservation.add_a_custom_amenity("blender")

puts "Your amenities:"
puts reservation.amenities
puts

if reservation.amenities[2] == "blender"
  puts "PASS!"
else
  puts "F"
end
