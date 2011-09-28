class ChangeUrlToWebsiteUrlOnBoxes < ActiveRecord::Migration
  def up
    change_column :boxes, :url, :website_url
  end

  def down
    change_column :boxes, :website_url, :url
  end
end