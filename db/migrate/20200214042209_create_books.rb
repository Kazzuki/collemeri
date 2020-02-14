class CreateBooks < ActiveRecord::Migration[6.0]
  def change
    create_table :books do |t|
      t.string :title
      t.string :publisher
      t.string :image
      t.integer :status, default: 0, null: false

      t.timestamps
    end
  end
end
