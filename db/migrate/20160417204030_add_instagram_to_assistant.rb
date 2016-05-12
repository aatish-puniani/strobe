class AddInstagramToAssistant < ActiveRecord::Migration
  def change
    add_column :assistants, :instagram, :string
  end
end
