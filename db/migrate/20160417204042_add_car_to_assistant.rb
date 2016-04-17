class AddCarToAssistant < ActiveRecord::Migration
  def change
    add_column :assistants, :car, :boolean
  end
end
