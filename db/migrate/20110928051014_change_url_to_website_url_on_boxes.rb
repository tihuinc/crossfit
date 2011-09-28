class ChangeUrlToWebsiteUrlOnBoxes < ActiveRecord::Migration
  def up
    rename_column :boxes, :url, :website_url
  end

  def down
    rename_column :boxes, :website_url, :url
  end
end