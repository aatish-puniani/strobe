class AddBioToAssistant < ActiveRecord::Migration
  def change
    add_column :assistants, :bio, :text
  end
end
