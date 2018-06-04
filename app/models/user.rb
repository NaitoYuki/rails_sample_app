class User < ApplicationRecord
  devise :rememberable, :trackable, :omniauthable, :omniauth_providers => [:facebook]
end
