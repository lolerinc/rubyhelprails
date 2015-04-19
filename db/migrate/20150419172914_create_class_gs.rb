class CreateClassGs < ActiveRecord::Migration
  def change
    create_table :class_gs do |t|
      t.integer :col1
      t.integer :col2

      t.timestamps null: false
    end
  end
end
