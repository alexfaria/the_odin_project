def add(x,y)
    x + y
end

def subtract(x,y)
    x - y
end

def sum(numbers)
    if numbers.empty?
        return 0
    end
    if numbers.length == 1
        res = numbers[0]
    else
        res = numbers.inject{|sum, x| sum + x}
    end
end

def multiply(*params)
    params.inject(1){|mul, x| mul * x}
end
puts multiply(2,2)
puts multiply(2,2,2)
def power(x, y)
    x ** y
end
def factorial(n)
    if n == 0
        return 1
    end
    return n*factorial(n-1)
end
