class Car

  def initialize(engine)

    @engine = engine

  end

  def start

    puts "crackdsjkjsdj"
    @engine.run

  end

end

class Gas_engine

  def run

    puts "Brrrrruuunnnnnn"

  end

end

class Electric_engine

  def run

    puts "Rrrrsssssss"

  end

end

motorgas = Gas_engine.new
coche01 = Car.new (motorgas)

motorelectrico = Electric_engine.new
coche02 = Car.new (motorelectrico)

coche01.start
coche02.start

