require 'date'

module Datable

  def generate_date
    date = Date.today
    date.strftime("%m%d%y")
  end

end
