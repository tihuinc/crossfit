class CreateWorkoutFundamentals < ActiveRecord::Migration
  def change
    create_table :workout_fundamentals do |t|
      t.integer :workout_id
      t.integer :fundamental_id
      t.integer :count
      t.integer :weight
      t.integer :distance

      t.timestamps
    end
  end
end
