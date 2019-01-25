class AddUserIdToPieces < ActiveRecord::Migration[5.2]
  def change
    add_column :pieces, :user_id, :integer
  end
end
