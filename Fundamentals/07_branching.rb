def multiply(first_num, second_num)
    first_num.to_f * second_num.to_f
end

def divide(first_num, second_num)
    first_num.to_f / second_num.to_f
end

def add(first_num, second_num)
    first_num.to_f + second_num.to_f
end

def subtract(first_num, second_num)
    first_num.to_f - second_num.to_f
end

def mod(first_num, second_num)
    first_num.to_f % second_num.to_f
end

puts "Simple calculator"
25.times { print "-" }
puts
puts "Enter the first number"
num_1 = gets.chomp
puts "Enter the second number"
num_2 = gets.chomp
puts "What do you want to do?"
puts "Enter 1 for multiply, 2 for addition, 3 for subtraction, 4 for division, 5 for modulus"
user_entry = gets.chomp

if user_entry == "1"
    puts "The first number multiplied by the second number is #{multiply(num_1, num_2)}"
elsif user_entry == "2"
    puts "The first number added by the second number is #{add(num_1, num_2)}"
elsif user_entry == "3"
    puts "The first number subtracted by the second number is #{subtract(num_1, num_2)}"
elsif user_entry == "4"
    puts "The first number divided by the second number is #{divide(num_1, num_2)}"
elsif user_entry == "5"
    puts "The first number modulus by the second number is #{mod(num_1, num_2)}"
else puts "Invalid entry"
end