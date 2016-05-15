class CreateCategorizedImages < ActiveRecord::Migration
  def change
    create_table :categorized_images do |t|
      t.integer :image_id
      t.integer :assistant_id

      t.timestamps null: false
    end
  end
end
