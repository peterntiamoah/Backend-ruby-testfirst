#write your code here

def echo(string)
    string
end

def shout(string)
    caps = string.upcase
end

def repeat(string, repeat=2)
    repeat_string = ""
    repeat.times do
    repeat_string += string + " "
    end
    repeat_string.strip
end

def start_of_word(word, number_of_characters)
    beginning_characters = word[0, number_of_characters]
end

def first_word(string)
    word_array = string.split
    word_array[0]
end

def titleize(string)
    little_words = ["a", "an", "and", "the", "at", "by", "for", "in", "of", "on", "to", "up", "and", "as", "but", "or", "our", "nor", "over" ]
    titleized_word = ""
    word_array = string.split

    titleized_word = word_array[0].capitalize

    for i in 1..word_array.length
        titleized_word += " "
        titleized_word += (little_words.include? word_array[i]) ? word_array[i].to_s : word_array[i].to_s.capitalize
    end
    titleized_word.strip
end

