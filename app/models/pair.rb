class Pair < Base
  enum status: { synonym: 1, antonym: 2 }
  def status_enum
    # alternatively
    { synonym: 1, antonym: 2 }
    # [ %w(Green 0), %w(White 1)]
  end

  belongs_to :dictionary

  belongs_to :main_word, class_name: 'Word', inverse_of: :main_word_pairs, foreign_key: 'main_word_id'
  belongs_to :rel_word, class_name: 'Word', inverse_of: :rel_word_pairs, foreign_key: 'rel_word_id'
end