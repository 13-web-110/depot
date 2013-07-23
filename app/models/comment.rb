class Comment < ActiveRecord::Base
  belongs_to :product
  attr_accessible :body, :commenter
end
