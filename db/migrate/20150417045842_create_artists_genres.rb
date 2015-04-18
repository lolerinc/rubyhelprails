class CreateArtistsGenres < ActiveRecord::Migration
  def change
    create_table :artists_genres, :id => false do |t|
      t.integer :artist_id, null: false
      t.integer :genre_id, null: false
    end

    add_index :artists_genres, [ :artist_id, :genre_id ], unique: true
  end
end