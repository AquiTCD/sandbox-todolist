# == Schema Information
#
# Table name: user_database_authentications
#
#  id                     :bigint           not null, primary key
#  user_id                :bigint
#  email                  :string           not null
#  encrypted_password     :string           not null
#  remember_created_at    :datetime
#  reset_password_token   :string
#  reset_password_sent_at :datetime
#  failed_attempts        :integer          default(0), not null
#  unlock_token           :string
#  locked_at              :datetime
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#
# Indexes
#
#  index_user_database_authentications_on_email    (email) UNIQUE
#  index_user_database_authentications_on_user_id  (user_id) UNIQUE
#
# Foreign Keys
#
#  fk_rails_...  (user_id => users.id)
#
FactoryBot.define do
  factory :user_database_authentication, class: 'User::DatabaseAuthentication' do
    
  end
end
