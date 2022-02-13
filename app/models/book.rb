class Book < ApplicationRecord
  has_many :user
  validates :title, presence: true
  validates :author, presence: true
  validates :price, presence: true
  validates :published, presence: true
end
