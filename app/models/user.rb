# == Schema Information
#
# Table name: users
#
#  id                 :bigint           not null, primary key
#  crypted_password   :string
#  current_login_at   :datetime
#  current_login_ip   :string
#  email              :string
#  failed_login_count :integer          default(0), not null
#  introduction       :string
#  last_login_at      :datetime
#  last_login_ip      :string
#  last_request_at    :datetime
#  login_count        :integer          default(0), not null
#  name               :string
#  password_salt      :string
#  persistence_token  :string
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#

class User < ApplicationRecord
    acts_as_authentic
end
