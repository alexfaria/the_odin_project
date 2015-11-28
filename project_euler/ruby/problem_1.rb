max = 1000
sum = 0
for x in 1..max
    if x % 3 == 0 || x % 5 == 0
        sum += x
    end
end
print "total sum: #{sum}"
