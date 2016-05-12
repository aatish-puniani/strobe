class AddOccupationIdToAssistant < ActiveRecord::Migration
  def change
    add_column :assistants, :occupation_id, :integer
  end
end
