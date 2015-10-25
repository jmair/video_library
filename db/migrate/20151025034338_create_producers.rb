class CreateProducers < ActiveRecord::Migration
  def change
    create_table :producers do |t|
      t.string :first
      t.string :last

      t.timestamps null: false
    end
  end
end
