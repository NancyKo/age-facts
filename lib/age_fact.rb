require 'open-uri'

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



