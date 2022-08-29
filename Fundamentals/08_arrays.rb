# Range
puts "Range"
x = 1..100
puts x.class
letters = ("a".."z").to_a
print letters
puts
20.times { print "-" }
puts

# method ended with "!" will mutate the variable's value
puts "Variable mutation"
y = (1..10).to_a 
print y
puts
y.reverse # doesn't mutate y's value
print y
puts
y.reverse! # mutate y's value
print y
puts
20.times { print "-" }
puts

# add elements to array
puts "Adding Elements"
a = [1, 2, 3, 4, 5, 6, 7, 8, 9]
a << 10 # add to end of array
puts a.last
puts a.first

a.unshift("Wiliam") # add to beginning of array
print a
puts
a.append("Wiliam") # add to end of array
print a
puts
a.uniq! # remove duplicates
print a
puts

20.times { print "-" }
puts

# Searches
puts "Searches"
puts a.empty?
a.include?("Wiliam")
20.times { print "-" }
puts

# Stacks
puts "Stacks"
a.push("new item")
print a
puts
b = a.pop()
print a
puts
puts b
20.times { print "-" }
puts

# Join/Split strings
puts "Join/Split strings"
b = a.join("-")
print b
puts
b = b.split("-")
print b
puts
z = %w(my name is wiliam and this is great Ruby is amazing) # turning each element inside the string into an array
print z
puts
20.times { print "-" }
puts

# Iterators
puts "Iterators"
for i in z # normal foreach
    print i + " "
end
puts
z.each do |food|
    print food + " "
end
puts
z.each{ |food| print food + " "}
puts

# Select
puts "Select operators"
z = (1..100).to_a.shuffle
print z.select { |number| number.odd? }