class AddCityIdToAssistant < ActiveRecord::Migration
  def change
    add_column :assistants, :city_id, :integer
  end
end
