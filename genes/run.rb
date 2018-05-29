require './horse_dictionary'

horse_dictionary = HorseDictionary.new

father = horse_dictionary.get('Amber')
mother = horse_dictionary.get('Amber')

a_feature, t_feature = father.combine(mother)

a_feature.each do |a_gene|
  t_feature.each do |t_gene|
    child_probability = a_gene.probability * t_gene.probability
    puts "#{horse_dictionary.get_breed_name(HorseBreed.new(a_gene.allele_type, t_gene.allele_type))[0]} " \
      "#{child_probability} (#{child_probability.to_f})"
  end
end
