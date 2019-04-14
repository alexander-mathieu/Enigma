class OffsetCalculator
  attr_reader :date

  def initialize(date)
    @date = date
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
