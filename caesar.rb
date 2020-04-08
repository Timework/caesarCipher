def caesar(words, move)
    alphabet = "abcdefghijklmnopqrstuvwxyz"
    words.each_char.with_index do |char, index|
        if alphabet.include?(char.downcase)
            if char.upcase == char
                nIndex = alphabet.index(char.downcase) + move
                words[index] = alphabet[nIndex % alphabet.length].upcase
            else
                nIndex = alphabet.index(char.downcase) + move
                words[index] = alphabet[nIndex % alphabet.length]
            end
        end
    end
    return words
end
caesar("What a string!", 5)