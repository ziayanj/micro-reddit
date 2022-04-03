class User < ApplicationRecord
  validates :username, :email, :password, presence: true
  validates :password, length: { in: 6..16 }
  validates :username, :email, uniqueness: true

  has_many :posts
  has_many :comments
end
