require './gene_probability'
# Class defining First Mendel Law
class MendelLaw
  @mendel_rules = {}
  @mendel_rules[GeneCombination.new(:dominant, :dominant)] = [GeneProbability.new(:dominant, Rational(1))]
  @mendel_rules[GeneCombination.new(:dominant, :heterozigote)] = [GeneProbability.new(:dominant, Rational(1, 2)),
                                                                  GeneProbability.new(:heterozigote, Rational(1, 2))]
  @mendel_rules[GeneCombination.new(:heterozigote, :dominant)] = [GeneProbability.new(:dominant, Rational(1, 2)),
                                                                  GeneProbability.new(:heterozigote, Rational(1, 2))]
  @mendel_rules[GeneCombination.new(:heterozigote, :heterozigote)] = [GeneProbability.new(:heterozigote,
                                                                                          Rational(1, 2)),
                                                                      GeneProbability.new(:dominant, Rational(1, 4)),
                                                                      GeneProbability.new(:recessive, Rational(1, 4))]
  @mendel_rules[GeneCombination.new(:dominant, :recessive)] = [GeneProbability.new(:heterozigote, Rational(1))]
  @mendel_rules[GeneCombination.new(:recessive, :dominant)] = [GeneProbability.new(:heterozigote, Rational(1))]
  @mendel_rules[GeneCombination.new(:heterozigote, :recessive)] = [GeneProbability.new(:recessive, Rational(1, 2)),
                                                                   GeneProbability.new(:heterozigote, Rational(1, 2))]
  @mendel_rules[GeneCombination.new(:recessive, :heterozigote)] = [GeneProbability.new(:recessive, Rational(1, 2)),
                                                                   GeneProbability.new(:heterozigote, Rational(1, 2))]
  @mendel_rules[GeneCombination.new(:recessive, :recessive)] = [GeneProbability.new(:recessive, Rational(1))]

  def self.combine(father_gene, mother_gene)
    @mendel_rules[GeneCombination.new(father_gene.allele_type,
                                      mother_gene.allele_type)]
  end
end
