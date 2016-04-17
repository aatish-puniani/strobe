class AddUrlToAssistant < ActiveRecord::Migration
  def change
    add_column :assistants, :url, :string
  end
end
