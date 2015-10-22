# Phones
# Build a class Phone that takes phone "brand" and "type" as parameters.
# Add a public method: call
# Add two private methods: connect to internet

class Phone
  def initialize(brand, type)
    @brand, @type = brand, type
  end
  def call
    connect_to_internet
  end

  private
  def connect_to_internet
    puts "Connecting to Internet ..."
  end
end
