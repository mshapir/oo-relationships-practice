require_relative '../config/environment.rb'
require 'pry'
def reload
  load 'config/environment.rb'
end


guest1 = Guest.new("Manny")
guest2 = Guest.new("Sunny")
guest3 = Guest.new("Jack")
listing1 = Listing.new("Ocean View", "Tel-Aviv")
listing2 = Listing.new("2 Bed", "New York")
listing3 = Listing.new("Duplex", "Chicago")
trip1 = Trip.new(guest1, listing1)
trip2 = Trip.new(guest2, listing2)
trip3 = Trip.new(guest2, listing1)
Listing.find_all_by_city("Tel-Aviv")
binding.pry

0
