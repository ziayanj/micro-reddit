class Post < ApplicationRecord
  validates :title, :link, presence: true
  validates :user_id, presence: true

  belongs_to :user
  has_many :comments
end
