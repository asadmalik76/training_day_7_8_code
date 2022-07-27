class AddColumnCategory < ActiveRecord::Migration[7.0]
  def change
    add_column :categories,:id,:int ,:name, :string
  end
end
