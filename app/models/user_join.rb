class UserJoin < ApplicationRecord

  belongs_to :user
  belongs_to :jointype

end
