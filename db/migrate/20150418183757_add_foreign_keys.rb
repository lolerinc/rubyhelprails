class AddForeignKeys < ActiveRecord::Migration
  def change
      change_table :albums do |t|
      t.belongs_to :artist, index: true    
      end
      change_table :songs do |t|
      t.belongs_to :album, index: true
      end

  end
end
