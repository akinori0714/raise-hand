class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         
  validates :name, presence: true
  validates :sex, presence: true
  validates :age, presence: true
  validates :introduce, presence: true
  validates :area, presence: true
  validates :skill1, presence: true

  attachment :image

  has_many :community_users
  has_many :communitys, through: :community_users
  has_many :chats
  has_many :projects
  has_many :articles

  has_many :relationships
  has_many :followings, through: :relationships, source: :follow
  has_many :reverse_of_relationships, class_name: 'Relationship', foreign_key: 'follow_id'
  has_many :followers, through: :reverse_of_relationships, source: :user

  def follow(other_user)
    unless self == other_user
      self.relationships.find_or_create_by(follow_id: other_user.id)
    end
  end

  def unfollow(other_user)
    relationship = self.relationships.find_by(follow_id: other_user.id)
    relationship.destroy if relationship
  end

  def following?(other_user)
    self.followings.include?(other_user)
  end

  belongs_to :category
  belongs_to :skill1
  belongs_to :skill2
  belongs_to :skill3
  belongs_to :skill4
  belongs_to :skill5

  def self.search(search) #ここでのself.はUser.を意味する
    if search
      where(['name LIKE ?', "%#{search}%"]) #検索とnameの部分一致を表示。User.は省略
    else
      all #全て表示。User.は省略
    end
  end

  has_many :dms, dependent: :destroy
  has_many :entries, dependent: :destroy
  has_many :jointypes, through: :user_joins
  has_many :user_joins
  has_many :wanttodos
  has_many :wanttomeets
  
end
