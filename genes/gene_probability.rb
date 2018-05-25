# Defines the probability of child having that allele
class GeneProbability
  attr_reader :probability, :allele_type

  def initialize(allele_type, probability)
    @allele_type = allele_type
    @probability = probability
  end
end
