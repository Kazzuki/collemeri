# == Schema Information
#
# Table name: forms
#
#  id         :bigint           not null, primary key
#  day        :date
#  form_uid   :bigint
#  place      :string
#  status     :integer
#  time       :time
#  to_uid     :bigint
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  book_id    :bigint           not null
#
# Indexes
#
#  index_forms_on_book_id  (book_id)
#
# Foreign Keys
#
#  fk_rails_...  (book_id => books.id)
#  fk_rails_...  (form_uid => users.id)
#  fk_rails_...  (to_uid => users.id)
#

class Form < ApplicationRecord
  belongs_to :book
  belongs_to :from_user, class_name: "User", foreign_key: 'form_uid'
  belongs_to :to_user, class_name: "User", foreign_key: 'to_uid'
end
