class Car
 attr_accessor :fuel, :distance, :fuel_needed, :gas_total, :full

  def initialize(fuel = 10, distance = 0)
    @fuel = fuel
    @distance = distance
  end

  def drive(miles_driven)
    @distance = miles_driven
    @fuel = fuel - miles_driven/20
    if fuel >= 1
      puts "I'm a car. I've driven #{@distance} miles and I have #{@fuel} gallons of fuel."   
    else
      puts "I'm out of gas."
    end
  end

  def fuel_up
    @full = 10
    @fuel_needed = full - fuel
    @gas_total = fuel_needed * 3.5
      puts "I need #{@fuel_needed} gallons to get back to full. This will cost $#{@gas_total}" 
  end

end


a = Car.new
b = Car.new

a.drive(40)
a.fuel_up
b.drive(40)
