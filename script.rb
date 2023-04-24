=begin
    #substrings takes a word and an array of valid substrings. It should return a hash listing each substring that was found
    in the original string and how many times it was found.

    Best function for this usage is #reduce. Inside that function it's checked if the received word (downcased) has a substring in 
    dictionary array. 

    Add multiple word functionality by iterating over array of words.
=end

require 'pry-byebug'

def substrings(word, substrings_array)
    word_array = word.split(" ");
    substrings_array.reduce(Hash.new(0)) do |accumulator, current_word|
        word_array.each do |item|
            if item.downcase.include?(current_word)
                accumulator[current_word] += 1
            end
        end
        accumulator
    end
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
puts substrings("Howdy partner, sit down! How's it going?", dictionary)