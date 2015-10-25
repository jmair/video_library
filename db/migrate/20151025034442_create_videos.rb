class CreateVideos < ActiveRecord::Migration
  def change
    create_table :videos do |t|
      t.string :title
      t.text :description
      t.belongs_to :producer, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
