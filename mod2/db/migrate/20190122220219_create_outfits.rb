class CreateOutfits < ActiveRecord::Migration[5.2]
  def change
    create_table :outfits do |t|
      t.string :name
      t.integer :rating
      t.integer :user_id
      t.integer :occasion_id

      t.timestamps
    end
  end
end
