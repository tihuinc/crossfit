class AddWodTypeChangeContentTypeOnWods < ActiveRecord::Migration
  def up
    add_column :wods, :wod_type, :string
    change_column :wods, :content, :text
  end

  def down
    remove_column :wods, :wod_type
    change_column :wods, :content, :string
  end
end