class RemoveActivityIdFromClubs < ActiveRecord::Migration
  def change
    remove_column :clubs, :activity_id, :integer
  end
end
