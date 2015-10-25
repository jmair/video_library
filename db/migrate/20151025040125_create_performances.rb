class CreatePerformances < ActiveRecord::Migration
  def change
    create_table :performances, id: false do |t|
      t.belongs_to :actor, index: true, foreign_key: true
      t.belongs_to :video, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
