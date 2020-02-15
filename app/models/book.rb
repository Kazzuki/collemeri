# == Schema Information
#
# Table name: books
#
#  id         :bigint           not null, primary key
#  image      :string
#  publisher  :string
#  status     :integer          default(0), not null
#  title      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :bigint
#
# Indexes
#
#  index_books_on_user_id  (user_id)
#

class Book < ApplicationRecord
    has_one :subject, dependent: :destroy
    has_one :form, dependent: :destroy
    belongs_to :user
end
