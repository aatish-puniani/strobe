class AddOccupationIdToPhotoAssistant < ActiveRecord::Migration
  def change
    add_column :photo_assistants, :occupation_id, :integer
  end
end
