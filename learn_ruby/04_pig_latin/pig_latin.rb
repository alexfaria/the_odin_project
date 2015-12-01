def translate(str)
    if str[0].match(/[aeiou]/)
        str + 'ay'
    else
        res = str[1..-1] + str[0] + 'ay'
    end
end
