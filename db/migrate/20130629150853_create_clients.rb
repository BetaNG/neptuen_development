class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :name, unique: true, null: false
      t.string :reg_name_1
      t.string :reg_name_2
      t.string :grade
      t.string :tel
      t.string :website
      t.string :address
      t.integer :employee
      t.decimal :turnover
      t.text :intro

      t.timestamps
    end
    add_index :clients, :name, unique: true
  end
end
