require 'date'

class Datecalc

  DAYS_IN_LEAP_YEAR = 366
  DAYS_IN_NORMAL_YEAR = 365

  def initialize(day,month, today = Date.today)
    @day = day
    @month = month
    @today = today
    @days_in_year = DAYS_IN_NORMAL_YEAR
  end

  def day_of_the_year
    @birthday = Date.new(@today.year,@month.to_i,@day.to_i).yday
  end

  def days_until_birthday
    update_days_in_year.to_i
    day_of_the_year
    return @birthday - @today.yday if @today.yday < @birthday
    @days_in_year + (@birthday - @today.yday)
  end

  def birthday_today?
    @day_of_the_year
    @today.yday == @birthday
  end

  def update_days_in_year
    @days_in_year = DAYS_IN_LEAP_YEAR if leap_year?
  end

  def leap_year?
    Date.new(@today.year,12,31).yday == 366
  end

end
