class LikedUser < ActiveRecord::Base
  belongs_to :product
  attr_accessible :user_name, :user_id
end
