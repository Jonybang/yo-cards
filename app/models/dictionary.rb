class Dictionary < Base
  #name:string

  has_many :pairs, class_name: 'Pair'
  has_and_belongs_to_many :words, class_name: 'Word', :join_table => 'dictionaries_words'
end