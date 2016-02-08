require "pry"

class ShoppinCart

  def initialize

    @pricelist = {

      :apple => 10,
      :banana => 20,
      :oranges => 5,
      :watermelon => 50,
      :pera => 12,

    }

    @items = {}
    @items_with_discount = {}

  end

  def add_item_to_cart(item)

    if @items[item]
      @items[item] += 1
    else
      @items[item] = 1
    end
    
  end

  def apply_discount

    @items.each do |item, quantity|

      if item == :apple && quantity >= 2

        @items_with_discount[item] = quantity/2

      elsif item == :oranges && quantity >= 3

        @items_with_discount[item] = quantity/3

      elsif item == :grapes && quantity >= 4

        @items[:banana] = @items[:banana]+1

      end
      end
    #binding.pry
    puts @items_with_discount
    end

  def show_cart

    @items.each do |item, quantity|

      puts "#{quantity} #{item}: #{@pricelist[item]*quantity}$"

    end


    puts cost

  end

  def cost

    total = 0
    discount = 0
    
    @items.each do |item, quantity|
      total += @pricelist[item]*quantity
    end

    @items_with_discount.each do |fruit, number|
      discount += @pricelist[fruit]*number
    end

    puts "El precio total es: #{total-discount} (descuentos aplicados)"

  end


end

carrito1 = ShoppinCart.new
carrito1.add_item_to_cart :apple
carrito1.add_item_to_cart :apple
carrito1.add_item_to_cart :apple
carrito1.add_item_to_cart :apple
carrito1.add_item_to_cart :apple
carrito1.add_item_to_cart :apple
carrito1.add_item_to_cart :apple
carrito1.add_item_to_cart :banana
carrito1.add_item_to_cart :banana
carrito1.add_item_to_cart :oranges
carrito1.add_item_to_cart :oranges
carrito1.add_item_to_cart :oranges
carrito1.add_item_to_cart :oranges
carrito1.add_item_to_cart :oranges
carrito1.add_item_to_cart :oranges
carrito1.add_item_to_cart :oranges
carrito1.add_item_to_cart :oranges
carrito1.add_item_to_cart :oranges
carrito1.add_item_to_cart :pera

carrito1.apply_discount
carrito1.show_cart






