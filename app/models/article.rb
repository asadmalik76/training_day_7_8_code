class TestingValidator < ActiveModel::Validator
  def validate(record)
    if record.title == "Testing"
      record.errors.add :base, "This is Testing Article"
    end
  end
end
class Article < ApplicationRecord
  belongs_to :category
  has_many :comments, as: :commentable

  before_save do
    self.title = title.upcase
  end


  validates :title, length: { minimum: 5, message: 'Length must be greater than 5 characters' }
  validates :body, length: { minimum: 10, message: 'content must be greater than 10 characters' }
  validates :title, uniqueness: { message: ' Already exists' }
  validates_with TestingValidator
end
