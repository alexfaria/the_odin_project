class Timer
    def initialize
        @seconds = 0
    end

    def seconds
        @seconds
    end

    def seconds=(s)
        @seconds = s
    end

    def time_string
        s = @seconds
        hours = 0
        minutes = 0
        while s >= 3600
            hours += 1
            s -= 3600
        end
        while s >= 60
            minutes += 1
            s -= 60
        end
        padded(hours) + ':' + padded(minutes) + ':' + padded(s)
    end

    def padded(x)
        if x.to_s.length == 1
            "0" + x.to_s
        else
            x.to_s
        end
    end
end
