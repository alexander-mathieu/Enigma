require 'date'

class OffsetGenerator
  attr_reader :date

  def initialize(date = default)
    @date = date
  end

  def default
    default = Date.today
    default.strftime("%m%d%y")
  end

  def offset_array
    stringify.split("").last(4)
  end

  def stringify
    square_date.to_s
  end

  def square_date
    date_to_integer ** 2
  end

  def date_to_integer
    @date.to_i
  end

end
