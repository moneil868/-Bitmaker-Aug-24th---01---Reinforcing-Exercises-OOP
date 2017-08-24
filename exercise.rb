# Create a Location class with a name.
class Location

  def initialize(name)
    @name = name
  end

  def name
    @name
  end

end



# Create a Trip class
class Trip

# with an array of Location instances (called stops or destinations or something similar)
  @@stops = []

  def initiate (name)
    @name = name
    @stops = @@stops
  end

  def self.begin_trip
    puts "Began trip."
      @@stops.each do |trip|
        puts "Travelled from #{trip.name}"
      end
    puts "Ended trip."
  end


 # Define a method that lets you add locations to the trip's list of destinations.

 def self.create(name)
     new_location = Location.new(name)
     if @@stops.include?(new_location)
       puts "Sorry this location already exists"
     else
       @@stops << new_location
     end
 end

end


# Make several instances of Locations and add them to an instance of Trip.
puts "================================="
stop1 = Trip.create("Toronto to Ottawa")
stop2 = Trip.create("Ottawa to Montreal")
stop3 = Trip.create("Montreal to Quebec City")
stop4 = Trip.create("Quebec City to Halifax")
stop5 = Trip.create("Halifax to St. John's")
Trip.begin_trip
puts "================================="
