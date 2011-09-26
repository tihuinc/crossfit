class AddRoundsToWods < ActiveRecord::Migration
  def up
    add_column :workouts, :rounds, :integer
  end

  def down
    remove_column :workouts, :rounds, :integer
  end
end