class User

  def initialize 

    @name
    @password
    @text

  end

  def login

    puts "Introduce nombre de usuario:"
    @name = gets.chomp

    puts "Introduce password:"
    @password = gets.chomp

  end

  def autentification

    while @name != "usuario" && @password != "1234" do

      puts "Usuario o Password vacio o incorrecto!!!"
      puts ""
      puts "/////////////////////////////////////"
      puts ""
      login

    if @name == "usuario" && @password == "1234"

      puts ""
      puts "%%%%%%%%%%%%%%%%%%%%%%%"
      puts "Login sucesfully!!!!!!!"
      puts "%%%%%%%%%%%%%%%%%%%%%%%"
      puts ""

      puts "Introduce un texto"
      @text = gets.chomp
      count_words

    end

    end

  end

  def count_words

      words = @text.split
      puts words.size

  end

end


usuario01 = User.new
usuario01.login
usuario01.autentification
