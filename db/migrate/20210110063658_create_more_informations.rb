class CreateMoreInformations < ActiveRecord::Migration[6.0]
  def change
    create_table :more_informations do |t|
      t.integer  :number,        null: false
      t.integer  :size
      t.integer  :sex_id
      t.date     :birthday
      t.text     :memos
     
      t.references :information, foreign_key: true
      t.timestamps
    end
  end
end