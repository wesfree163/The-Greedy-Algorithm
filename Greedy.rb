#!/usr/bin/ruby

c = [0, 25, 10, 5, 1]
d = [0, 0, 0, 0, 0]
r = 4

puts("Enter change in cents: ")
n = gets
n = n.chomp
n = n.to_i

for i in 1..r
    d[i] = 0;
    while n >= c[i]
        d[i] = d[i] + 1;
        n = n - c[i];
    end
end

puts("Change is ")
if d[1] > 0
    puts("#{d[1]} Quarters")
end
if d[2] > 0
    puts("#{d[2]} Dimes")
end
if d[3] > 0
    puts("#{d[3]} Nickels")
end
if d[4] > 0
    puts("#{d[4]} Pennies")
end