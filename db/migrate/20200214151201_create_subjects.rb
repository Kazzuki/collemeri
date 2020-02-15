class CreateSubjects < ActiveRecord::Migration[6.0]
  def change
    create_table :subjects do |t|
      t.string :name
      t.string :teacher
      t.integer :semester
      t.integer :grade

      t.timestamps
    end
  end
end
