# frozen_string_literal: true

class DeviseCreateUserTwitterAuthentications < ActiveRecord::Migration[6.0]
  def change
    create_table :user_twitter_authentications do |t|
      t.references :user, foreign_key: true, index: { unique: true }
      t.string :uid, null: false, index: true
      t.string :name
      t.string :email
      t.string :url
      t.string :image_url

      t.timestamps
    end
  end
end
