# == Schema Information
#
# Table name: user_twitter_authentications
#
#  id         :bigint           not null, primary key
#  user_id    :bigint
#  uid        :string           not null
#  name       :string
#  email      :string
#  url        :string
#  image_url  :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_user_twitter_authentications_on_uid      (uid)
#  index_user_twitter_authentications_on_user_id  (user_id) UNIQUE
#
# Foreign Keys
#
#  fk_rails_...  (user_id => users.id)
#
FactoryBot.define do
  factory :user_twitter_authentication, class: 'User::TwitterAuthentication' do
    
  end
end
