class CreateRooms < ActiveRecord::Migration[5.0]
  def change
    create_table :rooms do |t|
      t.string :title
      t.string :area
      t.string :keywood
      t.boolean :complete, default: false
      t.string :content
      t.string :roommaster

      t.timestamps
    end
  end
end
