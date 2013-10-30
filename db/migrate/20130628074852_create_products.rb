class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.string :shortname
      t.string :shortcode
      t.decimal :bid_price, precision: 8, scale: 2
      t.decimal :final_price, precision: 8, scale: 2
      t.text :intro
      t.string :factory
      t.string :spec
      t.string :unit

      t.timestamps
    end

    add_index :products, :name
    add_index :products, :shortcode, unique: true
  end
end
