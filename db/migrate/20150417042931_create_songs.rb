class CreateSongs < ActiveRecord::Migration
  def change
    create_table :songs do |t|
      t.string :title
      t.integer :album_id
      t.string :length
      t.string :composer

      t.timestamps null: false
    end
  end
end
