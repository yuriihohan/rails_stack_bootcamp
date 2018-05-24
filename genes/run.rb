require './horse_dictionary'

horse_dictionary = HorseDictionary.new

father = horse_dictionary.get('Amber')
mother = horse_dictionary.get('Amber')

colt = father.combine(mother)

colt[0].each  do |geneA|
  geneA.each do |aKey, aValue|
    colt[1].each  do |geneT|
      geneT.each do |tKey, tValue|
        puts horse_dictionary.get_breed_name(HorseBreed.new(aKey, tKey))[0] + " " + ((aValue * tValue) /10000.0).to_s
      end
    end
  end
end