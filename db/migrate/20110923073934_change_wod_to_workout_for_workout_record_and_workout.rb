class ChangeWodToWorkoutForWorkoutRecordAndWorkout < ActiveRecord::Migration
  def up
    rename_column :workouts, :wod_type, :workout_type
    rename_column :workout_records, :wod_id, :workout_id
  end

  def down
    rename_column :workouts, :workout_type, :wod_type
    rename_column :workout_records, :workout_id, :wod_id
  end
end