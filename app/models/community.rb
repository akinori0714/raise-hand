class Community < ApplicationRecord
  
  has_many :community_users
  has_many :users, through: :community_users
  has_many :chats
  validates :name, presence: true, uniqueness: true
  
  attachment :image

end
