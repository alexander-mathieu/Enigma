require 'date'

class DateGenerator
  attr_reader :date

  def initialize
    @date = date
  end

  def date
    date = Date.today
    date.strftime("%m%d%y")
  end

end
