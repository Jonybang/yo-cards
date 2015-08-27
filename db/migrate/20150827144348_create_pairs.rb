class CreatePairs < ActiveRecord::Migration
  def change
    create_table :pairs do |t|
      t.column :status, :integer

      t.belongs_to :dictionary, index: true

      t.belongs_to :main_word, index: true
      t.belongs_to :rel_word, index: true
    end
  end
end
