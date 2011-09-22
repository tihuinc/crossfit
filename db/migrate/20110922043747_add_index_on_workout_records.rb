class AddIndexOnWorkoutRecords < ActiveRecord::Migration
  def up
    add_index :workout_records, :user_id
    add_index :workout_records, :wod_id
  end

  def down
    remove_index :workout_records, :user_id
    remove_index :workout_records, :wod_id
  end
end