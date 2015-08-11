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


# def incorrect_user_input
#   begin
#     puts "Invalid input: please make sure you’re typing a number and try again!"
#   rescue
#   end
# end

# def leap_year_recog
#   year = leap_year if year % 4 == 0 || (year % 100 == 0 && year % 400 == 0)
# end
