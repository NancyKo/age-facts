require 'pry'

require_relative '../config/environment.rb'

def run 
  
  puts "What is your birth year? (yyyy)"
  year = gets.chomp
  inputvalidity = InputValidity.new(year: year)
  inputvalidity.valid_input_year
  calendarvalidity = CalendarValidity.new(year: year)
  calendarvalidity.validity_for_year

  puts "What month were you born? (mm)"
  month = gets.chomp
  inputvalidity = InputValidity.new(month: month)
  inputvalidity.valid_input_month
  calendarvalidity = CalendarValidity.new(month: month)
  calendarvalidity.validity_for_month

  puts "What day of the month were you born? (dd)"
  day = gets.chomp
  inputvalidity = InputValidity.new(day: day)
  inputvalidity.valid_input_day
  calendarvalidity = CalendarValidity.new(day: day, month: month)
  calendarvalidity.validity_for_day

  user = User.new("#{month}","#{day}", "#{year}")
  user_extra = Age_fact.new("#{month}","#{year}")
  puts "------------------------------------------------"
  puts user.birthday_trivia
  puts "------------------------------------------------"
  puts "You know what is special about your age? " + user_extra.locate_age_fact
  puts "------------------------------------------------"

end

run