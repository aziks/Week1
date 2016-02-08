class Car

  attr_reader :brand, :model

  def initialize(brand, model)

    @brand
    @model

  end

end

class CarDealer

  def initialize

    @inventory = [ ]
    @sorted_list_cars = [ ]

  end

  def add_cars_to_inventory(car)

    @inventory.push(car)

  end

  def search_models

    @sorted_list_cars = @inventory.select do |car|

      car.brand == "Ford"

    end

  end

  def imprint_list

   @sorted_list_cars.each do |car|
    
    puts "#{hm.brand} ====>> #{hm.model}"
    
    end

    puts "OOOOOOOOOOOOOOOOOOOOOOOOO"

  end

end

pepitovendecoches = CarDealer.new

car1 = Car.new ("Opel", "Astra")
car2 = Car.new ("Opel", "Corsa")
car3 = Car.new ("Ford", "Fiesta")
car4 = Car.new ("Ford", "Mondeo")
car5 = Car.new ("Ford", "Focus")
car6 = Car.new ("Renault", "Clio")
car7 = Car.new ("Mercedes", "Clase A")
car8 = Car.new ("BMW", "440")

pepitovendecoches.add_cars_to_inventory(car1)
pepitovendecoches.add_cars_to_inventory(car2)
pepitovendecoches.add_cars_to_inventory(car3)
pepitovendecoches.add_cars_to_inventory(car4)
pepitovendecoches.add_cars_to_inventory(car5)

