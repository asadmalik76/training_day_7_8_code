class RemoveTitleFromCategory < ActiveRecord::Migration[7.0]
  def change
    remove_column :categories, :title
  end
end
