# A class for combining genes of two partners
class GeneCombination
  attr_reader :father_gene, :mother_gene

  def initialize(father_gene, mother_gene)
    @father_gene = father_gene
    @mother_gene = mother_gene
  end

  def ==(other)
    other.is_a?(GeneCombination) &&
      other.father_gene == @father_gene &&
      other.mother_gene == @mother_gene
  end

  alias eql? ==

  def hash
    (@father_gene.to_s + mother_gene.to_s).hash
  end
end
