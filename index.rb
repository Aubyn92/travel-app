require_relative 'data.rb'

def country_selector
  puts 'Which country are you visiting?'
  target_country = gets.chomp
  country_data = COUNTRIES.detect do |country|
    country[:name] == target_country
  end

  if country_data
    country_data
  else
    puts "Sorry, you can't go to that country."
    country_data = country_selector
    country_data
  end
end

def currency_conversion(country_data)
  puts 'What is your budget?'
  aud_amount = gets.chomp.to_i
  rate = country_data[:currency_rate]
  if rate
    new_amount = aud_amount * rate
    puts "You have $#{format('%.2f', new_amount)} in your new currency."
  else
    puts "Sorry, we don't have their money."
  end
end

def city_selector(country_data)
  puts 'Which city are you heading to?'
  input_city = gets.chomp.to_s
  cities = country_data[:cities]
  chosen_city = nil
  city_data = cities.each do |city|
    chosen_city = city if city[:name] == input_city
  end
  if chosen_city
    # return chosen_city
  else
  puts "Sorry, you can't go to that city."
  chosen_city = city_selector(country_data)
   return chosen_city
  end

  puts 'Here are some recommended sites to visit'
  chosen_city[:sites].each_with_index do |site, index|
  puts "#{index + 1}. #{site} "
end

  sleep 1
  puts 'And accommodation ...'
  puts 'Select your preferred option.'
  puts '1. Closest proximity to airport'
  puts '2. Overall highest rating'
  puts '3. Low to mid range budget'
  preferred_accomodation_option = gets.chomp.to_i
  puts chosen_city[:accommodation][preferred_accomodation_option - 1]
end

def save_selection_history
  sleep 1
  puts 'To save your travel info, select 1.'
  puts 'To access travel history, select 2.'
  print '> '
  preferred_selection_option = gets.chomp.to_i
end

visiting_country = country_selector
currency_conversion(visiting_country)
visiting_city = city_selector(visiting_country)

# save_selection_history
