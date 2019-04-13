module Assignable

  def key_assignment(key)
    {"A" => key[0..1].join,
     "B" => key[1..2].join,
     "C" => key[2..3].join,
     "D" => key[3..4].join}
  end

  def offset_assignment(offset)
    {"A" => offset[0],
     "B" => offset[1],
     "C" => offset[2],
     "D" => offset[3]}
  end

end
