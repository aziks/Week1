require 'pry'
require 'ruby-dictionary'


class WordChain
    def initialize(dictionary)
        @dictionary = dictionary
    end
binding.pry

    def find_chain
        # Write your algorithm here
        puts "Hola"
    end
end

dictionary = Dictionary.from_file("/usr/share/dict/words")
my_chain = WordChain.new(dictionary)

my_chain.find_chain


