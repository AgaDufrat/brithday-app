require 'date'

DAYS_IN_YEAR = 365

class Datecalc

  def initialize(day,month, today = Date.today)
    @day = day
    @month = month
    @today = today
  end

  def day_of_the_year
    @birthday = Date.new(@today.year,@month,@day).yday.to_i
  end

  def days_until_birthday
    return @birthday - @today.yday if @today.yday < @birthday
    DAYS_IN_YEAR + (@birthday - @today.yday)
  end

  def birthday_today?
    @today.yday == @birthday
  end

end
