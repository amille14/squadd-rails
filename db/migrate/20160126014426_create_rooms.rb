class CreateRooms < ActiveRecord::Migration[5.0]
  def change
    create_table :rooms do |t|
      t.string :name
      t.string :description
      t.integer :squad_id
      t.integer :user_id
      t.boolean :is_editable, null: false, default: true

      t.timestamps
    end

    add_index :rooms, :squad_id
    add_index :rooms, :user_id
  end
end
