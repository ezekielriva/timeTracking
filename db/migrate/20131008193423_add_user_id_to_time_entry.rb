class AddUserIdToTimeEntry < ActiveRecord::Migration
  def up
  	add_column :time_entries, :user_id, :integer
  end

  def down
  	remove_column :time_entries, :user_id
  end
end
