class CreatePorridges < ActiveRecord::Migration
  def change
    create_table :porridges do |t|
      t.text :name
      t.text :description
      t.integer :prep_time
      t.integer :cooking_time

      t.timestamps null: false
    end
  end
end
