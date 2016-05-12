class AddUserPhotoToPhotographer < ActiveRecord::Migration
  def change
    add_column :photographers, :user_photo, :string
  end
end
