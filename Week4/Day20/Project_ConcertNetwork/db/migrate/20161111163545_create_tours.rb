class CreateTours < ActiveRecord::Migration[5.0]
  def change
    create_table :tours do |t|
      t.string :name
      t.string :artist
      t.text :description
      t.integer :price

      t.timestamps
    end
  end
end
