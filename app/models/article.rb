class Article < ApplicationRecord
  has_many :comments, as: :commentable
  belongs_to :category
  belongs_to :author

  validates :name, :description, presence: true
end
