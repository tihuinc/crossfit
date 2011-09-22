class CreateWorkoutRecords < ActiveRecord::Migration
  def up
    create_table :workout_records do |t|
      t.integer :user_id
      t.string :time
      t.integer :wod_id
      t.integer :rounds
      t.integer :max_reps
      t.boolean :scaled
      t.text :detail

      t.timestamps
    end
  end

  def down
    drop_table :workout_records
  end
end
