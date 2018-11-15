require 'date'

class Datecalc

  def initialize(day,month)
    @day = day
    @month = month
    @today = Date.today
  end

  def day_of_the_year
    @birthday = Date.new(@today.year,@month,@day).yday
  end

end
