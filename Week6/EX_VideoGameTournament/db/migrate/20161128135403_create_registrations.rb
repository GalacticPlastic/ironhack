class CreateRegistrations < ActiveRecord::Migration
  def change
    create_table :registrations do |t|
      t.belongs_to :tournament, index: true, foreign_key: true
      t.belongs_to :player, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
