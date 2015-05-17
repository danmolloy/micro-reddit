class Post < ActiveRecord::Base
  validates :user_id, presence: true
  validates :title, presence: true, length: { maximum: 300 }
  validates :link, presence: true, length: { maximum: 1000 }
  belongs_to :user
  has_many :comments
end
