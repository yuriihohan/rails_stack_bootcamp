# Class defining First Mendel Law
class Mendel_Law
  
  @@gene_combination_rules  = {}
  @@gene_combination_rules [GeneCombination.new(:dominant, :dominant)] = [{ :dominant => 100 }]
  @@gene_combination_rules [GeneCombination.new(:dominant, :heterozigote)] = [{ :dominant => 50 }, { :heterozigote => 50 }]
  @@gene_combination_rules [GeneCombination.new(:heterozigote, :dominant)] = [{ :dominant => 50 }, { :heterozigote => 50 }]
  @@gene_combination_rules [GeneCombination.new(:heterozigote, :heterozigote)] = [{ :heterozigote => 50 }, { :dominant => 25 }, { :recessive => 25 }]
  @@gene_combination_rules [GeneCombination.new(:dominant, :recessive)] = [{ :heterozigote => 100 }]
  @@gene_combination_rules [GeneCombination.new(:recessive, :dominant)] = [{ :heterozigote => 100 }]
  @@gene_combination_rules [GeneCombination.new(:heterozigote, :recessive)] = [{ :recessive => 50 }, { :heterozigote => 50 }]
  @@gene_combination_rules [GeneCombination.new(:recessive, :heterozigote)] = [{ :recessive => 50 }, { :heterozigote => 50 }]
  @@gene_combination_rules [GeneCombination.new(:recessive, :recessive)] = [{ :recessive => 100 }]
  
  def self.combine(father_gene, mother_gene)
    @@gene_combination_rules[GeneCombination.new(father_gene.allele_type, mother_gene.allele_type)] 
  end
end