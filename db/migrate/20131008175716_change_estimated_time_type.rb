class ChangeEstimatedTimeType < ActiveRecord::Migration
  def up
  	change_column :milestones, :estimated_time, :float
  end

  def down
  	change_column :milestones, :estimated_time, :time
  end
end
