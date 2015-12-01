class Book
    def initialize
        @title
    end

    def title=(s)
        @title = s
    end

    def title()
        little_words = ["a", "an", "the", "at", "by", "for", "in", "of",
  					    "on","over", "to", "up", "and", "as", "but", "it",
                        "or", "and", "nor"]
        s = @title.split.map do |x|
            if little_words.include?(x) or x.match(/[0-9]/)
                x
            else
                x.capitalize!
            end
        end
        s[0].capitalize!
        @title = s.join(' ')
    end

end
