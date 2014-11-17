class CreatePlaces < ActiveRecord::Migration
  def change
    create_table :places do |t|
      t.string :country
      t.string :district
      t.string :county
      t.string :locality

      t.timestamps
    end
  end
end
