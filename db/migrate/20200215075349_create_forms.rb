class CreateForms < ActiveRecord::Migration[6.0]
  def change
    create_table :forms do |t|
      t.bigint :form_uid
      t.bigint :to_uid
      t.references :book, null: false, foreign_key: true
      t.string :place
      t.date :day
      t.time :time
      t.integer :status
      t.timestamps
    end
    add_foreign_key :forms, :users, column: :form_uid
    add_foreign_key :forms, :users, column: :to_uid
  end
end
