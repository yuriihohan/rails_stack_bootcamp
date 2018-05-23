require './horse_dictionary'

horse_dictionary = HorseDictionary.new

father = horse_dictionary.get('Alizarin crimson')
mother = horse_dictionary.get('Begonia')

colt = Horse_Breed.combine(father, mother)
