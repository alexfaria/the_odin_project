def translate(str)
    words = str.split.map do |x|
        # until the first letter is a vowel
        until x[0].match(/[aeiou]/)

            temp = x[0]
            x = x + x[0]
            x = x[1..-1]
            # if the current letter is 'u' and the previous is 'q'
            if x[0] == 'u' and temp == 'q'
                x = x + x[0]
                x = x[1..-1]
            end
        end
        x = x + 'ay'
    end
    # join the words from the array into a string
    words.join(" ")
end

puts translate("The Quick Brown Fox")
