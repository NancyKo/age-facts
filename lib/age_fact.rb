require 'open-uri'
require 'pry'
require 'time'
class User
  attr_accessor :day, :month, :year 

  def initialize(day, month, year)
    @day = day 
    @year = year
    @month = month
  end


  def birthday_trivia
    open("http://numbersapi.com/#{@month}/#{@day}").read
  end

end 

class Age_fact

 attr_accessor :birthday, :age
 attr_reader :month, :year

 def initialize(month, year)
   @year = year.to_i
   @month = month.to_i
   @age = age
 end

 def age
   if @month > Time.new.month
     @age = Time.new.year - 1 - @year
   else
     @age = Time.new.year - @year
   end
 end

 def locate_age_fact
  open("http://numbersapi.com/#{@age}").read
 end

end


puts "What is your birth year? (yyyy)"
year = gets.chomp
puts "What month were you born? (mm)"
month = gets.chomp
puts "What day were you born? (dd)"
day = gets.chomp

user = User.new("#{month}","#{day}", "#{year}")
user_extra = Age_fact.new("#{month}","#{year}")
# puts user.birthday_trivia
puts user_extra.locate_age_fact