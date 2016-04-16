class AddFacebookToPhotoAssistant < ActiveRecord::Migration
  def change
    add_column :photo_assistants, :facebook, :string
  end
end
