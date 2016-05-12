class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.string :name
      t.integer :photographer_id
      t.text :description
      t.integer :city_id
      t.string :location
      t.integer :day_rate
      t.integer :category_id
      t.integer :occupation_id
      t.integer :skill_id
      t.time :call_time
      t.date :date
      t.string :call_sheet

      t.timestamps null: false
    end
  end
end
