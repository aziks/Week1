cadena_integer = 1

while cadena_integer < 100

	temp_fizz = cadena_integer % 3
	temp_buzz = cadena_integer % 5
	temp_fizzbuzz = cadena_integer % 3 == 0 && cadena_integer % 5 == 0

		if temp_fizzbuzz

			puts "FizzBuzz"

		elsif temp_buzz == 0

			puts "Buzz"

		elsif temp_fizz == 0

			puts "Fizz"

		else

			puts "#{cadena_integer}"

		end
		
	cadena_integer = cadena_integer + 1
	
end