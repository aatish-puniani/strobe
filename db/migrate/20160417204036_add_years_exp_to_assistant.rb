class AddYearsExpToAssistant < ActiveRecord::Migration
  def change
    add_column :assistants, :years_exp, :integer
  end
end
