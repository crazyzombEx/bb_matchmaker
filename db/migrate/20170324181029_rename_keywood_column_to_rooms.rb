class RenameKeywoodColumnToRooms < ActiveRecord::Migration[5.0]
  def change
  	rename_column :rooms, :keywood, :keyword
  end
end
