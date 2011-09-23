class ChangeTableNameGymToBox < ActiveRecord::Migration
  def up
    rename_table :gyms, :boxes
  end

  def down
    rename_table :boxes, :gyms
  end
end