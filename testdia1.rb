class Dog

	def initialize (arg1="Rex", arg2)

		@name = arg1
		@breed = arg2
    @logfile = "#{@name}_smelled.log"

	end

	def bark (bark)

		puts bark

	end


	def smell(person)

    person_list = File.open(@logfile, "a")
		person_list.puts(person) 
    person_list.close

	end

	def people_smelled

    people_smelled = File.open(@logfile, "r")
    people_smelled_list = people_smelled.readlines #para que siga siendo un array
    people_smelled.close
    people_smelled_list

	end

end

class PetDog < Dog

	def initialize(name, breed, owner)
		
		super name, breed

		@owner = owner

	end

	def fetch(toy)

		@toy = toy 

		puts toy

	end

end

perro01 = Dog.new("Rex", "Galgo")

perro01.smell("paco")
perro01.smell("pepe")
perro01.smell("pipo")
perro01.smell("pepo")


puts perro01.people_smelled
