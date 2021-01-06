class CreateInformation < ActiveRecord::Migration[6.0]
  def change
    create_table :information do |t|
      t.string  :breedname,        null: false
      t.string  :locality  ,       null: false
      t.integer :generation_id,    null: false
      t.integer :food_id,          null: false
      t.text    :memo
      
      t.references :user, foreign_key: true
      t.references :breed, foreign_key: true
      t.timestamps
    end
  end
end

