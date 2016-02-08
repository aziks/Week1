require 'pry'

class Item 

  attr_reader :name, :price

  def initialize(name, price)
  
      @name = name
      @price = price
  
  end

end

class Houseware < Item

  def price

      #Hmmm maybe this changes somehow..
  end

end

class Fruit < Item

  def initialize(name, price)
    
    super name, price

    time = Time.new

    if time.wday == 0 || time.wday == 6

  	@price = @price - (@price * 0.1)

  end


  end

  


end

class ShoppingCart
 
  def initialize
 
	  @base_price = 0	 
    @items = []
 
  end

  def add_items(item)

      @items.push(item)

  end

  def price_of_item_list

	  total_price_of_item_list = @base_price
	  
	  @items.each do |item|
      total_price_of_item_list += item.price

	  end

#binding.pry

	  if @items.length > 5

	  	total_price_of_item_list = total_price_of_item_list - (total_price_of_item_list * 0.1)
	  	

	  end
binding.pry
	  total_price_of_item_list

	end

end

carrito01 = ShoppingCart.new

banana = Fruit.new("Banana", 10)
anchovies = Item.new("Anchovies", 2)


carrito01.add_items(banana)
carrito01.add_items(anchovies)
carrito01.add_items(anchovies)
carrito01.add_items(anchovies)
carrito01.add_items(anchovies)
carrito01.add_items(anchovies)


puts carrito01.price_of_item_list 