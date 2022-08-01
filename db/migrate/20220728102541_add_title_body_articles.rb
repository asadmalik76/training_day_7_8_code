# frozen_string_literal: true

class AddTitleBodyArticles < ActiveRecord::Migration[7.0]
  def change
    add_column :articles, :title, :string
    add_column :articles, :body, :text
  end
end
