sample_hash = { 'a' => 1, 'b' => 2, 'c' => 3 }
my_details = { :name => 'Wiliam', 'favcolor' => 'red'}
my_hash = {}
p sample_hash['b']
p sample_hash

another_hash = {a: 1, b: 2, c: 3} # symbol, has a semicolon (:) in the key
p another_hash

my_details.each do |key, value|
    puts "The class for key is #{key.class} and the value is #{value.class}"
end

# Adding new hash
my_hash[:e] = "Wiliam"
p my_hash

my_details.each { |some_key, some_value| puts "The key is #{some_key} and the value is #{some_value}"}
my_details.select{ |k, v| v.is_a?(String) }
my_details.each { |k, v| my_details.delete(k) if k.is_a?(String) }
p my_details