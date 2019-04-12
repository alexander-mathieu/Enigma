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

end
