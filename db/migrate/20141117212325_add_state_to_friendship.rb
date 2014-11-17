class AddStateToFriendship < ActiveRecord::Migration
  def change
    add_column :friendships, :state, :boolean
  end
end
