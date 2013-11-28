class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :name, unique: true, null: false
      t.string :types
      t.string :grade
      t.string :terminal
      t.integer :bed, default: 0
      t.integer :staff, default: 0
      t.string :address

      t.timestamps
    end
    add_index :clients, :name, unique: true
  end
end
