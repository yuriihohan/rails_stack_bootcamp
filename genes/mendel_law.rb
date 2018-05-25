require './gene_probability'
# Class defining First Mendel Law
class MendelLaw
  @gene_combination_rules = {}
  @gene_combination_rules[GeneCombination.new(:dominant, :dominant)] = [GeneProbability.new(:dominant, 100)]
  @gene_combination_rules[GeneCombination.new(:dominant, :heterozigote)] = [GeneProbability.new(:dominant, 50),
                                                                            GeneProbability.new(:heterozigote, 50)]
  @gene_combination_rules[GeneCombination.new(:heterozigote, :dominant)] = [GeneProbability.new(:dominant, 50),
                                                                            GeneProbability.new(:heterozigote, 50)]
  @gene_combination_rules[GeneCombination.new(:heterozigote, :heterozigote)] = [GeneProbability.new(:heterozigote, 50),
                                                                                GeneProbability.new(:dominant, 25),
                                                                                GeneProbability.new(:recessive, 25)]
  @gene_combination_rules[GeneCombination.new(:dominant, :recessive)] = [GeneProbability.new(:heterozigote, 100)]
  @gene_combination_rules[GeneCombination.new(:recessive, :dominant)] = [GeneProbability.new(:heterozigote, 100)]
  @gene_combination_rules[GeneCombination.new(:heterozigote, :recessive)] = [GeneProbability.new(:recessive, 50),
                                                                             GeneProbability.new(:heterozigote, 50)]
  @gene_combination_rules[GeneCombination.new(:recessive, :heterozigote)] = [GeneProbability.new(:recessive, 50),
                                                                             GeneProbability.new(:heterozigote, 50)]
  @gene_combination_rules[GeneCombination.new(:recessive, :recessive)] = [GeneProbability.new(:recessive, 100)]

  def self.combine(father_gene, mother_gene)
    @gene_combination_rules[GeneCombination.new(father_gene.allele_type,
                                                mother_gene.allele_type)]
  end
end
