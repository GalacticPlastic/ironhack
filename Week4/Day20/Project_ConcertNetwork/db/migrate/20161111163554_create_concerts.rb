class CreateConcerts < ActiveRecord::Migration[5.0]
  def change
    create_table :concerts do |t|
      t.datetime :date
      t.string :venue
      t.string :city
      t.string :state

      t.timestamps
    end
  end
end
