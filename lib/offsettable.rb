module Offsettable

  def date_to_integer
    date.to_i
  end

  def square_date
    date_to_integer ** 2
  end

  def stringify
    square_date.to_s
  end

  def calculate_offset(date)
    stringify.split("").last(4).join
  end

end
