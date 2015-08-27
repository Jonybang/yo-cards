class CreateDictionariesWords < ActiveRecord::Migration
  def change
    create_table :dictionaries_words, id: false do |t|
      t.belongs_to :dictionary, index: true
      t.belongs_to :word, index: true
    end
  end
end
