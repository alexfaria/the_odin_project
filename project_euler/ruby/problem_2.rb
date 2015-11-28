a = 1
b = 2
sum = 0
max = 4000000
while a <= max
    if a.even?
        sum += a
    end
    temp = b
    b += a
    a = temp
end
print sum
