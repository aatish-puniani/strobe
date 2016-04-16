class CreateGears < ActiveRecord::Migration
  def change
    create_table :gears do |t|
      t.string :camera

      t.timestamps null: false
    end
  end
end
