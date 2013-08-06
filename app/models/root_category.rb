class RootCategory < ActiveRecord::Base
  attr_accessible :description, :image_url, :title
  validates :title, :description, :image_url, presence: true
  validates :image_url, allow_blank: true, format: {
    with:    %r{\.(gif|jpg|png)\Z}i,
    message: 'must be a URL for GIF, JPG or PNG image.'
  }
end
