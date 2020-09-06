# == Schema Information
#
# Table name: users
#
#  id         :bigint           not null, primary key
#  nickname   :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class User < ApplicationRecord
  devise :authenticatable
  has_one :database_authentication, dependent: :destroy
  has_one :twitter_authentication, dependent: :destroy
end
