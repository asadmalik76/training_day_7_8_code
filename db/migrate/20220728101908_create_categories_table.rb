# frozen_string_literal: true

class CreateCategoriesTable < ActiveRecord::Migration[7.0]
  def change
    create_table :categories, &:timestamps
  end
end
