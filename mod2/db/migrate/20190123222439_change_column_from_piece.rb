class ChangeColumnFromPiece < ActiveRecord::Migration[5.2]
  def change
    change_column :pieces, :clean_lvl, :integer, :default => 0
  end
end
