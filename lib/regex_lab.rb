require 'pry'
#returns true for words starting with a vowel
#returns false for words starting with a consonant
def starts_with_a_vowel?(word)
!!word.capitalize.match(/^+[AEIOU]/)
#That !! is read "not not", by the way. The ! operator by itself treats its argument as Boolean and returns its opposite as an actual Boolean; that is !(some truthy value) returns false (not nil), and !(some falsey value) returns true (not just some truthy value). So applying ! twice turns any truthy value into true and any falsey value (false or nil) into false.
end

#returns an array with the words starting with 'un' and ending with 'ing'
def words_starting_with_un_and_ending_with_ing(text)
text.scan(/\b[Uu]n[a-z]*ing\b/)
end

def words_five_letters_long(text)
text.scan(/\b\w{5}\b/)
end

def first_word_capitalized_and_ends_with_punctuation?(text)
!!text.match(/^[A-Z].*\W$/)
end

def valid_phone_number?(phone)
!!phone.match(/\d{1,3}.\d{1,3}.\d{1,4}/)
end
