class HorseBreed
  attr_accessor :a_allele, :t_allele

  def initialize(a_allele_type, t_allele_type)
    @a_allele = Allele.new('A', a_allele_type)
    @t_allele = Allele.new('T', t_allele_type)
  end
end
