class Category < ApplicationRecord

  has_many :users
  has_ancestry

end
