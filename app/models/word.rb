class Word < Base
  #content:string

  has_and_belongs_to_many :dictionaries, class_name: 'Dictionary', :join_table => 'dictionaries_words'

  has_many :main_word_pairs, class_name: 'Pair', inverse_of: :main_word, foreign_key: 'main_word_id'
  has_many :rel_word_pairs, class_name: 'Pair', inverse_of: :rel_word, foreign_key: 'rel_word_id'
end