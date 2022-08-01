# frozen_string_literal: true

class CreatePhotos < ActiveRecord::Migration[7.0]
  def change
    create_table :photos do |t|
      t.string :text
      t.timestamps
    end
  end
end
