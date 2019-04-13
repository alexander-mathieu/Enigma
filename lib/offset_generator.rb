require 'date'

class OffsetGenerator
  attr_reader :date

  def initialize
    @date = date
  end

  def date
    date = Date.today
    date.strftime("%m%d%y")
  end

  def date_to_integer
    @date.to_i
  end

  def square_date
    date_to_integer ** 2
  end

  def stringify
    square_date.to_s
  end

  def offset
    stringify.split("").last(4).join
  end

end
