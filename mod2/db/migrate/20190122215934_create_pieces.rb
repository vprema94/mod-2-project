class CreatePieces < ActiveRecord::Migration[5.2]
  def change
    create_table :pieces do |t|
      t.string :name
      t.integer :clean_lvl
      t.string :color
      t.string :image
      t.integer :category_id
      t.integer :user_id

      t.timestamps
    end
  end
end
