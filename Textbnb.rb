class Home
  attr_reader(:name, :city, :capacity, :price)

  def initialize(name, city, capacity, price)

    @name = name
    @city = city
    @capacity = capacity
    @price = price

  end

end

homes = [

  Home.new("Nizar's place", "San Juan", 2, 42),
  Home.new("Fernando's place", "Seville", 5, 47),
  Home.new("Josh's place", "Pittsburgh", 3, 41),
  Home.new("Gonzalo's place", "Málaga", 2, 45),
  Home.new("Ariel's place", "San Juan", 4, 49)

]

class HomeManager

  sorted_list = []

  def self.sort_list_by_price_low_high(homes)

    sorted_list = homes.sort { |a, b|  a.price <=> b.price }

  end

  def self.sort_list_by_price_high_low(homes)

    sorted_list = homes.sort { |a, b|  b.price <=> a.price }

  end

  
  def self.sort_list_by_capacity(homes)

    sorted_list = homes.sort { |a, b|  b.capacity <=> a.capacity }

  end

  def self.sort_by_city(homes)

      sorted_list = homes.select do |hm|
      # Keep hm only if its city is "San Juan"
      hm.city == "San Juan"

    end

  end

#IMPRIME --------------------------------------------------

  def self.imprint_list(sorted_list)

   sorted_list.each do |hm|
    
    puts "#{hm.name} in #{hm.city}"
    puts "Price: #{hm.price} a night"
    puts "Capacity: #{hm.capacity}"

    end

    puts "OOOOOOOOOOOOOOOOOOOOOOOOO"

  end

end

class Menu

  def print_menu

    system (clear)
    puts "1. Mostrar casas"
    puts "2. Ordenar casas por precio ascendente"
    puts "3. Ordenar casas por precio descendente"
    puts "4. Ordenar casas por capacidad de personas"
    puts "5. Elegir ciudad y mostrar casas"

  end

end

mostrarmenu = Menu.new
mostrarmenu.print_menu

#home_list = HomeManager.sort_list_by_price_low_high(homes)
#HomeManager.imprint_list(home_list)
#home_list = HomeManager.sort_list_by_price_high_low(homes)
#HomeManager.imprint_list(home_list)
#HomeManager.sort_list_by_capacity(homes)
#HomeManager.sort_by_city(homes)



