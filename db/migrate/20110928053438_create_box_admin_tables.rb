class CreateBoxAdminTables < ActiveRecord::Migration
  def up
    create_table :box_admin, :force => true do |t|
      t.integer :user_id
      t.integer :box_id
      t.timestamps
    end

    add_index :box_admin, :user_id
    add_index :box_admin, :box_id
  end

  def down
    drop_table :box_admin
  end
end