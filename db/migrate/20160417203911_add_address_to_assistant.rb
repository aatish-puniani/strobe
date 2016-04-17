class AddAddressToAssistant < ActiveRecord::Migration
  def change
    add_column :assistants, :address, :string
  end
end
