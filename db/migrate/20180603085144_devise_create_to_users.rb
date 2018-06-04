# frozen_string_literal: true

class DeviseCreateToUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      ## Omniauthable
      t.string :provider, null: false
      t.string :uid, null: false

      t.string :username
      t.string :avatar

      ## Rememberable
      t.datetime :remember_created_at
      t.string :remember_token

      ## Trackable
      t.integer  :sign_in_count, default: 0, null: false
      t.datetime :current_sign_in_at
      t.datetime :last_sign_in_at
      t.inet     :current_sign_in_ip
      t.inet     :last_sign_in_ip

      t.timestamps null: false
    end

    add_index :users, [:provider, :uid], unique: true
  end
end
