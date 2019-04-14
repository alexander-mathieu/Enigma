require 'securerandom'

module Keyable

  def generate_secure_key
    5.times.map {SecureRandom.random_number(9).to_s}.join
  end

end
