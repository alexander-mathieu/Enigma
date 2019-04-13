module Offsettable

  def date_to_integer(date)
    date.to_i
  end

  def square_date(date)
    date_to_integer ** 2
  end

  def stringify(date)
    square_date.to_s
  end

  def offset(date)
    stringify.split("").last(4).join
  end

end
