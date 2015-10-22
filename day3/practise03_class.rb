# Add public method to class car: drive, stop and park
# Add private methods: pump gas and ignite engine
# Call ignite engine method before printing on the drive method
#
require "./handy_methods.rb"

class Car
  #
  include HandyMethods

  def initialize(model, type, capacity)
    @model = model
    @type = type
    @capacity = capacity
    # or: @type, @model, @capacity = model, type, capacity
  end

  def drive
    ignite_engine
    puts "Drive the car"
    driving_printout = reverse_upcase("driving ..")
    print driving_printout
  end
  def stop
    puts "Stop the car"
  end
  def park
    puts "Park the car"
  end

  def self.max_speed
    puts "Max speed: 200"
  end

  private
  def pump_gas
    puts "Pumping gas"
  end
  def ignite_engine
    puts "Ignite engine"
  end
  def self.test
    puts "test"
  end
end

c = Car.new
Car.max_speed
