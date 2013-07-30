class User < ActiveRecord::Base
  attr_accessible :name, :password, :password_confirmation, :cart_id 
  

  
  validates :name, presence: true, uniqueness: true
  has_secure_password

  after_destroy :ensure_an_admin_remains

  has_one :cart, dependent: :destroy

  private
    def ensure_an_admin_remains
      if User.count.zero?
        raise "Can't delete last user"
      end
    end     
end