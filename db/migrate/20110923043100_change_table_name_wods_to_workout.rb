class ChangeTableNameWodsToWorkout < ActiveRecord::Migration
  def up
    rename_table :wods, :workouts
  end

  def down
    rename_table :workouts, :wods
  end
end