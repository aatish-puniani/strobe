class CreateCategorizedSkills < ActiveRecord::Migration
  def change
    create_table :categorized_skills do |t|
      t.integer :skill_id
      t.integer :assistant_id

      t.timestamps null: false
    end
  end
end
