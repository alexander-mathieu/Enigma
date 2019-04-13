class Offsetter
  attr_reader :date

  def initialize(date)
    @date = date
  end

  def date_to_integer
    @date.to_i
  end

end
