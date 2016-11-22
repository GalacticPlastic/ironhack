class AddTotalCaloriesToSandwiches < ActiveRecord::Migration[5.0]
  def change
    add_column :sandwiches, :total_calories, :integer
  end
end