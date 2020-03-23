# frozen_string_literal: true

class DeviseCreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|

      ## Database authenticatable
      t.string :name,               null: false
      t.string :sex,                null: false
      t.string :age,                null: false
      t.string :area,               null: false
      t.string :performance1
      t.string :performance2
      t.string :performance3
      t.string :performance4
      t.string :performance5
      t.string :introduce,          null: false
      t.string :want_to_do,         null: false, array: true
      t.string :want_to_meet,       null: false, array: true
      t.string :jointype,           null: false, array: true
      t.string :image_id,                        default: ""
      t.string :email,              null: false, default: ""
      t.string :encrypted_password, null: false, default: ""
      t.references :category, foreign_key: true
      t.references :skill1, foreign_key: true
      t.references :skill2, foreign_key: true, null: true
      t.references :skill3, foreign_key: true, null: true
      t.references :skill4, foreign_key: true, null: true
      t.references :skill5, foreign_key: true, null: true
      t.string :skill1_period
      t.string :skill2_period
      t.string :skill3_period
      t.string :skill4_period
      t.string :skill5_period

      ## Recoverable
      t.string   :reset_password_token
      t.datetime :reset_password_sent_at

      ## Rememberable
      t.datetime :remember_created_at

      ## Trackable
      # t.integer  :sign_in_count, default: 0, null: false
      # t.datetime :current_sign_in_at
      # t.datetime :last_sign_in_at
      # t.string   :current_sign_in_ip
      # t.string   :last_sign_in_ip

      ## Confirmable
      # t.string   :confirmation_token
      # t.datetime :confirmed_at
      # t.datetime :confirmation_sent_at
      # t.string   :unconfirmed_email # Only if using reconfirmable

      ## Lockable
      # t.integer  :failed_attempts, default: 0, null: false # Only if lock strategy is :failed_attempts
      # t.string   :unlock_token # Only if unlock strategy is :email or :both
      # t.datetime :locked_at

      t.timestamps null: false
    end

    # add_index :users, :email,                unique: true
    # add_index :users, :reset_password_token, unique: true
    # add_index :users, :confirmation_token,   unique: true
    # add_index :users, :unlock_token,         unique: true
  end
end
