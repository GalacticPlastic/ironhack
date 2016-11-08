class AddDescriptionToProjects < ActiveRecord::Migration[5.0]
  def change
    add_column :projects, :descript, :text
  end
end