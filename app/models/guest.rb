class Guest
  attr_reader :name
  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end
  def self.all
    @@all
  end

  def listings
    listings = []
    Trip.all.map { |trip| listings << trip.listing if trip.guest == self }
    listings
  end
  def trips
    Trip.all.select { |trip| trip.guest == self }
  end

  def trip_count
    trips.count
  end
  def self.find_all_by_name(name)
    Guest.all.select {|guest| guest.name == name  }
  end

  def self.pro_traveler
    all.select {|guest| guest.trip_count > 1}
  end

end
