class CalendarValidity

  attr_accessor :month, :day, :year

  def initialize(month: nil, day: nil, year: nil)
    @month = month.to_i
    @day = day.to_i
    @year = year.to_i
  end 

  def validity_for_year
    if @year > Time.new.year
      incorrect_user_input
    end
  end

  def validity_for_month 
    if @month > 12 || @month < 0
      incorrect_user_input 
    elsif @month > Time.new.month && year == Time.new.year 
      incorrect_user_input 
    end
  end

  def validity_for_day
    if days_31.include?(@month)
      if @day > 31 || @day < 0
      incorrect_user_input
      end
    elsif days_30.include?(@month)
      if @day > 30 || @day < 0
        incorrect_user_input
      end
    elsif @month == 2
      if @year == leap_year?
        if @day > 29 || @day < 0
          incorrect_user_input
        end
      else @day > 28 || @day < 0
        incorrect_user_input
      end 
    end
  end

  def days_31
    days_31 = [1, 3, 5, 7, 8, 10, 12]
    days_31
  end

  def days_30
    days_30 = [4, 6, 9, 11]
    days_30
  end

  def leap_year?
    @year % 4 == 0 || (@year % 100 == 0 && @year % 400 == 0)
  end

  def incorrect_user_input
    begin
      puts "Invalid input: please make sure you’re typing a real date!"
    rescue
      exit
    end
    run
  end

end