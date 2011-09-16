class CreateWods < ActiveRecord::Migration
  def change
    create_table :wods do |t|
      t.string :name
      t.string :content
      t.timestamp :date

      t.timestamps
    end
  end
end
