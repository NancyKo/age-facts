require_relative '../config/environment.rb'

puts "What is your birth year? (yyyy)"
year = gets.chomp
puts "What month were you born? (mm)"
month = gets.chomp
puts "What day were you born? (dd)"
day = gets.chomp

user = User.new("#{month}","#{day}", "#{year}")
user_extra = Age_fact.new("#{month}","#{year}")
puts user.birthday_trivia
puts user_extra.locate_age_fact


=begin puts "What is your birth year? (yyyy)"
year = gets.chomp
#must be 4 Fixnums
#must be an integer/Fixnum
#cannot be smaller than 0
#cannot be greater than todays date

puts "What month were you born? (mm)"
month = gets.chomp
#must be a fixnum
#must 1-12 */NOTE/* CHECK IF 0 on one digit numbers is required by the API

puts "What day were you born? (dd)"
day = gets.chomp
#must be fixnum
#must be within the days allocated to that month ******
=end
