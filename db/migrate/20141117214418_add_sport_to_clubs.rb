class AddSportToClubs < ActiveRecord::Migration
  def change
    add_column :clubs, :sport, :string
  end
end
