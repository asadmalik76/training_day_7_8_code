class CreateArticles < ActiveRecord::Migration[7.0]
  def change
    create_table :articles do |t|
      t.title:string
      t.body:text
      t.timestamps
    end
  end
end
