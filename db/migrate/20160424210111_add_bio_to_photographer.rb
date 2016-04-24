class AddBioToPhotographer < ActiveRecord::Migration
  def change
    add_column :photographers, :bio, :text
  end
end
