class Randomizer
  RANGE = [*'0'..'9', *'A'..'Z', *'a'..'z'].freeze
  def self.random_string(length)
    (0...length).map{ RANGE.sample }.join
  end  
end