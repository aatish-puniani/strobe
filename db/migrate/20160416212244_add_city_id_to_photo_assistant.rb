class AddCityIdToPhotoAssistant < ActiveRecord::Migration
  def change
    add_column :photo_assistants, :city_id, :integer
  end
end
