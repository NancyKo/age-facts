require 'open-uri'
require 'pry'
require 'open-uri'
require 'pry'

class User
  
  attr_accessor :day, :month, :year 

  def initialize(month, day, year)
    @day = day 
    @year = year
    @month = month
  end

  def birthday_trivia
    open("http://numbersapi.com/#{@month}/#{@day}").read
  end

end 
