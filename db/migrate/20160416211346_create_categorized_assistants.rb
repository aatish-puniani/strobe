class CreateCategorizedAssistants < ActiveRecord::Migration
  def change
    create_table :categorized_assistants do |t|
      t.integer :category_id
      t.integer :photo_assistant_id

      t.timestamps null: false
    end
  end
end
