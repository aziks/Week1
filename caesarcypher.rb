def solve_cipher(input, cipher)

	input_array = input.split(//)
	output_array = []

	cipher = cipher.to_i

	input_array.each do |letra|
		
		if letra.ord < 97 

			numeroletra = letra.ord

			numeroletra = numeroletra + 25

			print numeroletra.chr

		elsif letra.ord > 121
		
			numeroletra = letra.ord

			numeroletra = numeroletra - 25

			print numeroletra.chr

		else 

			numeroletra = letra.ord

			numeroletra = numeroletra + cipher

			print numeroletra.chr

			end


	end 

	print output_array

end

puts "Introduce el mensaje para descifrar"
mensaje = gets.chomp
puts "Itroduce una cifra"
cypher = gets.chomp

solve_cipher(mensaje, cypher)