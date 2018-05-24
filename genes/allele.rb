# Represent an allele, a variant form of a given gene
# E.g. - most multicellular organisms have diploid chromosomes
class Allele
  attr_reader :mendelian_trate_name, :allele_type

  def initialize(mendelian_trate_name, allele_type)
    @mendelian_trate_name = mendelian_trate_name
    @allele_type = allele_type
  end
end
