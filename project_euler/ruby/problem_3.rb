require 'prime'
number = 600851475143
i = 0
largest = 1
while i < Math.sqrt(number)
    i += 1
    if number % i == 0
        largest = i
    end
end
print largest
