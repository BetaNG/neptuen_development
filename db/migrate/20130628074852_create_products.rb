class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name, null: false
      t.string :shortname, null: false
      t.string :shortcode, null: false
      t.decimal :bid_price, precision: 8, scale: 2  #结算价
      t.decimal :final_price, precision: 8, scale: 2  #挂网价
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
