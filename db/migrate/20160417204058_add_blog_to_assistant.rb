class AddBlogToAssistant < ActiveRecord::Migration
  def change
    add_column :assistants, :blog, :string
  end
end
