require 'pry'
require 'ruby-dictionary'


class WordChain
    def initialize(dictionary)
        @dictionary = dictionary
    end

    def find_chain(word_start, word_final)
        # Write your algorithm here
        cont = 0
        result_word = ""

        if word_start[cont] == word_final[cont]

          

        end

binding.pry

    end
end

dictionary = Dictionary.from_file("/usr/share/dict/words")
binding.pry
my_chain = WordChain.new(dictionary)

my_chain.find_chain("cat", "dog")



my_chain.find_chain


