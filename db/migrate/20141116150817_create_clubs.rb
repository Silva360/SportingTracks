class CreateClubs < ActiveRecord::Migration
  def change
    create_table :clubs do |t|
      t.string :club_type
      t.string :name
      t.integer :members
      t.text :description
      t.integer :activity_id
      t.integer :place_id

      t.timestamps
    end
  end
end
