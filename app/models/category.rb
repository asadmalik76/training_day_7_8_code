# frozen_string_literal: true

class Category < ApplicationRecord
  has_many :articles, dependent: :destroy
  has_many :comments, as: :commentable
end
