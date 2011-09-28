class AddNickNameToUser < ActiveRecord::Migration
  def up
    add_column :users, :nickname, :string
  end

  def down
    remove_column :users, :nickname
  end
end