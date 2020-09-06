# == Schema Information
#
# Table name: user_registrations
#
#  id                   :bigint           not null, primary key
#  confirmation_token   :string
#  confirmed_at         :datetime
#  confirmation_sent_at :datetime
#  unconfirmed_email    :string
#  email                :string           default(""), not null
#  created_at           :datetime         not null
#  updated_at           :datetime         not null
#
# Indexes
#
#  index_user_registrations_on_confirmation_token  (confirmation_token) UNIQUE
#  index_user_registrations_on_unconfirmed_email   (unconfirmed_email) UNIQUE
#
class User::Registration < ApplicationRecord
  devise :registerable, :confirmable
end
