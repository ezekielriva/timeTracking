class AddMilestoneToTimeEntry < ActiveRecord::Migration
  def up
  	add_column :time_entries, :milestone_id, :integer
  end

  def down
  	remove_column :time_entries, :milestone_id
  end
end
