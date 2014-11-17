class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.string :activity_type
      t.string :title
      t.date :date
      t.time :start
      t.time :duration
      t.text :info
      t.integer :user_id
      t.integer :place_id

      t.timestamps
    end
  end
end
