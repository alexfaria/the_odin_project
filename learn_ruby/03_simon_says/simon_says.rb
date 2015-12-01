def echo(str)
    str
end

def shout(str)
    str.upcase
end

def repeat(str, n = 2)
    res = ""
    while n-1 > 0 do
        res += str + " "
        n-=1
    end
    res + str
end

def start_of_word(str, n)
    str[0, n]
end

def first_word(str)
    words = str.split
    words[0]
end

def titleize(str)

    words = str.split.map do |x|
        if x.match(/(the|and|over)/)
            x
        else
            x.capitalize
        end
    end
    words.first.capitalize!
    words.join(' ')
end
