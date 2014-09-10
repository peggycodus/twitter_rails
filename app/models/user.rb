class User < ActiveRecord::Base

  has_secure_password
 
  validates :password,
    :length => { :minimum => 5 }
 
  validates_confirmation_of :password

  validates_uniqueness_of :name

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  validates :email, presence: true,
                    format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }
end
