class CreateCategorizedGears < ActiveRecord::Migration
  def change
    create_table :categorized_gears do |t|
      t.integer :gear_id
      t.integer :photo_assistant_id

      t.timestamps null: false
    end
  end
end
