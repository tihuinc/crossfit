class CreateBoxUserTable < ActiveRecord::Migration
  def up
    create_table :box_user, :force => true do |t|
      t.integer :box_id
      t.integer :user_id
      t.timestamps
    end

    add_index :box_user, :user_id
    add_index :box_user, :box_id
  end

  def down
    drop_table :box_user
  end
end