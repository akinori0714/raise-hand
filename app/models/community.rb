class Community < ApplicationRecord
  has_many :communities_users
  has_many :users, through: :communities_users
  validates :name, presence: true, uniqueness: true
  attachment :image # ここを追加（_idは含めない）
end
