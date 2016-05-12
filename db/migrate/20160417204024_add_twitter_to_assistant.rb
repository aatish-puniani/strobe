class AddTwitterToAssistant < ActiveRecord::Migration
  def change
    add_column :assistants, :twitter, :string
  end
end
