class CreatePictures < ActiveRecord::Migration
  def change
    create_table :pictures do |t|
      t.belongs_to :theme, index: true
      t.attachment :image
    end
  end
end
