# == Schema Information
#
# Table name: subjects
#
#  id         :bigint           not null, primary key
#  grade      :integer
#  name       :string
#  semester   :integer
#  teacher    :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  book_id    :bigint
#
# Indexes
#
#  index_subjects_on_book_id  (book_id)
#

class Subject < ApplicationRecord
    belongs_to :book
end
