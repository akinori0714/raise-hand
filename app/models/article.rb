class Article < ApplicationRecord

  belongs_to :user, optional: true
  validates :title, presence: true, uniqueness: true

  attachment :image
end
