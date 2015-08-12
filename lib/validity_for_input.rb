# require 'pry'

class InputValidity

  attr_accessor :month, :day, :year

  def initialize(month: nil, day: nil, year: nil)
  @month = month
  @day = day
  @year = year
  end

  def valid_input_year
    if @year.to_i == 0
      incorrect_user_input 
    end
  end

  
  def valid_input_month
    if @month.to_i == 0   
      incorrect_user_input
    end
  end

  def valid_input_day
    if @day.to_i == 0
      incorrect_user_input
    end
  end


  def incorrect_user_input
    begin
      puts "Invalid input: please make sure you’re typing a number and try again!"
    rescue
      exit
    end
    run
  end

end