class RemoveUserIdFromOutfits < ActiveRecord::Migration[5.2]
  def change
    remove_column :outfits, :user_id, :integer
  end
end
