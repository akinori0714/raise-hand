class Community < ApplicationRecord
  has_many :communities_users
  has_many :users, through: :communities_users
  validates :name, presence: true, uniqueness: true
end
