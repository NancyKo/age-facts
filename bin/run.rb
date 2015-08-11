require_relative '../config/environment.rb'

def run 
  
  puts "What is your birth year? (yyyy)"
  year = gets.chomp
  validity = Validity.new(year: year)
  validity.validity_for_year

  puts "What month were you born? (mm)"
  month = gets.chomp
  validity = Validity.new(month: month)
  validity.validity_for_month

  puts "What day were you born? (dd)"
  day = gets.chomp
  validity = Validity.new(day: day)
  validity.validity_for_day

  user = User.new("#{month}","#{day}", "#{year}")
  user_extra = Age_fact.new("#{month}","#{year}")
  puts "------------------------------------------------"
  puts user.birthday_trivia
  puts "------------------------------------------------"
  puts "You know what is special about your age? " + user_extra.locate_age_fact
  puts "------------------------------------------------"

end

run