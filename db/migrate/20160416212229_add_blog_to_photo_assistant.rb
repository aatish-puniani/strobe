class AddBlogToPhotoAssistant < ActiveRecord::Migration
  def change
    add_column :photo_assistants, :blog, :string
  end
end
