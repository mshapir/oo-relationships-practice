class Listing
  attr_reader :name, :city
  @@all = []
  def initialize(name, city)
    @name = name
    @city = city
    @@all << self
  end
  def self.all
    @@all
  end
  def self.find_all_by_city(city)
    all.select {|listing|  listing.city == city}
  end

  def guests
    guests = []
    Trip.all.map { |trip| guests << trip.guest if trip.listing == self }
    guests
  end

  def trips
   Trip.all.select { |trip| trip.listing == self }
  end

  def trip_count
    trips.count
  end

  def self.most_popular
  max =  all.map { |listing| listing.trip_count }.max
  all.find {|listing| listing.trip_count == max }
  end

end
