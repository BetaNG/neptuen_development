class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :name
      t.string :department
      t.string :duty
      t.integer :age
      t.string :sex
      t.date :birthdate
      t.string :address
      t.string :mobile
      t.string :tel
      t.string :email
      t.string :tencent
      t.string :idcard
      t.string :hobby
      t.string :nation
      t.boolean :marital
      t.string :blood
      t.integer :height
      t.integer :weight
      t.string :zodiac
      t.string :school
      t.string :science
      t.string :note

      t.timestamps
    end
    add_index :contacts, :name
  end
end
