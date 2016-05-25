class CreateLists < ActiveRecord::Migration
  def change
    create_table :lists do |t|
      t.string :name
      t.string :description
      t.boolean :completed

      t.timestamps null: false
    end
  end
end
