class CreateClothingOutfits < ActiveRecord::Migration[5.2]
  def change
    create_table :clothing_outfits do |t|
      t.integer :piece_id
      t.integer :outfit_id

      t.timestamps
    end
  end
end
