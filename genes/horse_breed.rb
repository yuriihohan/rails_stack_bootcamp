require_relative 'gene_combination'
require_relative 'mendel_law'

# Encapsulates allelles relevant to horse breeds
class HorseBreed
  attr_accessor :a_allele, :t_allele

  def initialize(a_allele_type, t_allele_type)
    @a_allele = Allele.new('A', a_allele_type)
    @t_allele = Allele.new('T', t_allele_type)
  end

  def combine(partner)
    if partner.a_allele.mendelian_trate_name != @a_allele.mendelian_trate_name ||
       partner.t_allele.mendelian_trate_name != @t_allele.mendelian_trate_name
      raise ArgumentError, 'Cannot combine different mendelian trates'
    end

    [MendelLaw.combine(@a_allele, partner.a_allele),
     MendelLaw.combine(@t_allele, partner.t_allele)]
  end

  def ==(other)
    other.is_a?(HorseBreed) &&
      other.a_allele.allele_type == @a_allele.allele_type &&
      other.t_allele.allele_type == @t_allele.allele_type
  end

  alias eql? ==
end
