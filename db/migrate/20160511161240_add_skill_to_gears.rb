class AddSkillToGears < ActiveRecord::Migration
  def change
    add_column :gears, :skill, :string
  end
end
