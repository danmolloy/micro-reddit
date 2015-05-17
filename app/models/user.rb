class User < ActiveRecord::Base
  before_save { self.email = email.downcase }
  validates :name, presence: true, uniqueness: true, length: { maximum: 50 }
  validates :email, presence: true, uniqueness: true, length: { maximum: 255 }

  #has_secure_password
  validates :password, presence: true, length: { minimum: 6 }

  has_many :posts
  has_many :comments
end
