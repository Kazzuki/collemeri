class AddBookRefToSubject < ActiveRecord::Migration[6.0]
  def change
    add_reference :subjects, :book, index: true
  end
end
