class CreateBreeds < ActiveRecord::Migration[6.0]
  def change
    create_table :breeds do |t|
      t.string  :title,              null: false
      t.integer :category_id,        null: false
      t.string  :type_name,          null: false
      t.date    :date,               null: false
      t.string  :result,             null: false
      t.text    :note,               null: false
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
