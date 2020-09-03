class Article < ApplicationRecord
  belongs_to :user
  belongs_to :category
  has_many :comments
  validates :title, :image, presence:true
  has_one_attached :image
end
