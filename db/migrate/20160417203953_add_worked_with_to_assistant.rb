class AddWorkedWithToAssistant < ActiveRecord::Migration
  def change
    add_column :assistants, :worked_with, :text
  end
end
