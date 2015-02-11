class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :address
      t.datetime :ended_at
      t.float :lat
      t.float :lon
      t.string :name
      t.datetime :started_at, null: false
      t.integer :user_id, null: false

      t.timestamps null: false
    end
  end
end
