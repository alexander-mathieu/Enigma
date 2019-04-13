class ShiftCalculator
  attr_reader :key,
              :offset

  def initialize(key, offset)
    @key         = key
    @offset      = offset
  end

  def key_shift
    {"A" => @key[0..1].to_i,
     "B" => @key[1..2].to_i,
     "C" => @key[2..3].to_i,
     "D" => @key[3..4].to_i}
  end

  def offset_shift
    {"A" => @offset[0].to_i,
     "B" => @offset[1].to_i,
     "C" => @offset[2].to_i,
     "D" => @offset[3].to_i}
  end

  def total_shift
    key_shift.merge(offset_shift) do |key, key_value, offset_value|
      key_value + offset_value
    end
  end

end
