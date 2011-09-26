class CreateFundamentals < ActiveRecord::Migration
  def change
    create_table :fundamentals do |t|
      t.string :name

      t.timestamps
    end
  end
end
