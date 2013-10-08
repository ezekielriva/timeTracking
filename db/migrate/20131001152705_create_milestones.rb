class CreateMilestones < ActiveRecord::Migration
  def change
    create_table :milestones do |t|
      t.date :start_date
      t.date :end_date
      t.time :estimated_time
      t.boolean :active
      t.text :description

      t.timestamps
    end
  end
end
