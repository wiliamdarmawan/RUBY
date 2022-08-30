dial_book = {
  'newyork' => '212',
  'newbrunswick' => '732',
  'edison' => '908',
  'plainsboro' => '609',
  'sanfrancisco' => '301',
  'miami' => '305',
  'paloalto' => '650',
  'evanston' => '847',
  'orlando' => '407',
  'lancaster' => '717'
}

# Get city names from the hash
def get_city_names(dial_book)
  dial_book.keys
end

# Get area code based on given hash and key
def get_area_code(dial_book, city)
  dial_book[city]
end

# Execution flow
loop do
  puts 'Do you want to lookup an area code based on a city name? (Y/N)'
  answer = gets.chomp.downcase
  break if answer != 'y'

  puts 'Which city do you want the area code for?'
  puts get_city_names(dial_book)
  puts 'Enter your selection'
  city = gets.chomp
  area_code = get_area_code(dial_book, city)
  if !area_code
    puts "No area code found for #{city}"
  else
    puts "The area code for #{city} is #{get_area_code(dial_book, city)}"
  end
end
