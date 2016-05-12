class AddFacebookToAssistant < ActiveRecord::Migration
  def change
    add_column :assistants, :facebook, :string
  end
end
