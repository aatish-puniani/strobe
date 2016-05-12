class AddUserPhotoToAssistant < ActiveRecord::Migration
  def change
    add_column :assistants, :user_photo, :string
  end
end
