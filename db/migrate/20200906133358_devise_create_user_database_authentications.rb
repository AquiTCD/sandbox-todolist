# frozen_string_literal: true

class DeviseCreateUserDatabaseAuthentications < ActiveRecord::Migration[6.0]
  def change
    create_table :user_database_authentications do |t|
      t.references :user, foreign_key: true, index: { unique: true }
      ## Database authenticatable
      t.string :email,              null: false, index: { unique: true }
      t.string :encrypted_password, null: false
      ## Rememberable
      t.datetime :remember_created_at
      ## Recoverable
      t.string   :reset_password_token
      t.datetime :reset_password_sent_at
      ## Lockable
      t.integer  :failed_attempts, default: 0, null: false # Only if lock strategy is :failed_attempts
      t.string   :unlock_token # Only if unlock strategy is :email or :both
      t.datetime :locked_at
      t.timestamps null: false
    end
  end
end
