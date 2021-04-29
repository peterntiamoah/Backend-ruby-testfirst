#write your code here
def translate(string)
    vowels = %w[a e i o u]
    sentence_array = string.split
    prefix = ""
    suffix = ""
    pig_latin_word = ""
    pig_latin_array = []

    sentence_array.each do |word|
        pig_latin_word =
            if (word.match /^.*qu/)
                suffix = word[/^.*qu/]
                prefix = word.delete(suffix)
                prefix + suffix + "ay"
            else
                ( !vowels.include? word[0])
                suffix = word[/[^aeiou]*/]
                prefix = word.delete(suffix)
                prefix + suffix + "ay"
            end
        pig_latin_array.push(pig_latin_word)
    end
    pig_latin_array.join(" ")
end

#vowels = translate("apple")
#puts vowels
#vowels2 = translate("banana")
#puts vowels