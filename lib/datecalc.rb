require 'date'

class Datecalc

  def initialize(day,month)
    @day = day
    @month = month
    @today = Date.today
  end

  def convert_to_date
    @birthday = Date.new(@today.year,@month,@day)
  end

  # def day_of_the_year
  #   .yday
  # end

end
