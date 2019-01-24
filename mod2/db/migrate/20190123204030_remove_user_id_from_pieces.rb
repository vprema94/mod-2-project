class RemoveUserIdFromPieces < ActiveRecord::Migration[5.2]
  def change
    remove_column :pieces, :user_id, :integer
  end
end
