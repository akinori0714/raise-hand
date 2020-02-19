class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :name, presence: true

  has_many :community_users
  has_many :communitys, through: :community_users
  has_many :chats
  has_many :projects
  has_many :articles

  attachment :image
end
