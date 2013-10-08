class CreateTimeEntries < ActiveRecord::Migration
  def change
    create_table :time_entries do |t|
      t.time :start_time
      t.time :end_time
      t.text :note
      t.integer :type_id

      t.timestamps
    end
  end
end
