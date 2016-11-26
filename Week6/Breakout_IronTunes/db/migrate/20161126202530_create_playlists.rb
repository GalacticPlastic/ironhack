class CreatePlaylists < ActiveRecord::Migration[5.0]
  def change
    create_table :playlists do |t|
      t.string :name
      t.string :git
      t.string :status

      t.timestamps
    end
  end
end
