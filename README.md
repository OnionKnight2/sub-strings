# sub-strings
Implement a method that takes a word and an array of valid substrings and returns a hash listing each substring

#substrings takes a word and an array of valid substrings. It should return a hash listing each substring that was found
in the original string and how many times it was found.

Best function for this usage is #reduce. Inside that function it's checked if the received word (downcased) has a substring in 
dictionary array. 

Add multiple word functionality by iterating over array of words.