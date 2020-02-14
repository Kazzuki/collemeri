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
#

class Book < ApplicationRecord
end
