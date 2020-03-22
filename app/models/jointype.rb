class Jointype < ApplicationRecord

  has_many :users, through: :user_joins
  has_many :user_joins

end