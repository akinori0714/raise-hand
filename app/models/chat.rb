class Chat < ApplicationRecord
  
  belongs_to :community
  belongs_to :user
  validates :content, presence: true, unless: :image?
  mount_uploader :image, ImageUploader
  default_scope -> { order(created_at: :desc) }
end
