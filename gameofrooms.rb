class Room 

  def initalize

    @habitaciones = map 
    @position = position
    @moves = moves
    @description = description

  end

  def current_position

    puts "ELIGE UNA DIRECCION"
    @position = gets.chomp
    

  end

  def moves



  end

  def description



  end

end

class Player


  def current_pos



  end

end


map = [

  room_1 = Room.new["", ["N", "S"], "ESTAS EN LA HABITACION 1, ¿A DONDE VAS?"],
  room_2 = Room.new["", ["S", "E"], "ESTAS EN LA HABITACION 2, ¿A DONDE VAS POLLOPERA?"]
  room_3 = Room.new[]
  room_4 = Room.new[]
  room_5 = Room.new[]

]

