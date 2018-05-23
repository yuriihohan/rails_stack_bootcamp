require_relative 'allele'
require_relative 'horse_breed'

# Dictionary of horse breeds
class HorseDictionary
  attr_reader :hash

  def initialize
    @hash = {}
    @hash['Alizarin crimson'] = HorseBreed.new(:dominant, :recessive)
    @hash['Alloy orange'] = HorseBreed.new(:dominant, :heterozigote)
    @hash['Almond'] = HorseBreed.new(:dominant, :dominant)

    @hash['Amaranth'] = HorseBreed.new(:heterozigote, :recessive)
    @hash['Amber'] = HorseBreed.new(:heterozigote, :heterozigote)
    @hash['Begonia'] = HorseBreed.new(:heterozigote, :dominant)

    @hash['Bittersweet'] = HorseBreed.new(:recessive, :recessive)
    @hash['Blush'] = HorseBreed.new(:recessive, :heterozigote)
    @hash['Cadmium'] = HorseBreed.new(:recessive, :dominant)
  end

  def get(breed_name)
    @hash[breed_name]
  end
end