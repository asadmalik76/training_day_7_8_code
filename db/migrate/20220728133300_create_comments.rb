# frozen_string_literal: true

class CreateComments < ActiveRecord::Migration[7.0]
  def change
    create_table :comments do |t|
      t.text :content
      t.references :commentable, polymorphic: true
      t.timestamps
    end
    add_index :comments, %i[commentable_id commentable_type]
  end
end
