class Article < ApplicationRecord
  belongs_to :category
  validates :title, length: { minimum: 5, message: "Length must be greater than 5 characters" }
  validates :body, length: { minimum: 10, message: "content must be greater than 10 characters" }
  validates :title, uniqueness: { message: " Already exists"}
end
