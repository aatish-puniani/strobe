class AddFacebookToPhotographer < ActiveRecord::Migration
  def change
    add_column :photographers, :facebook, :string
  end
end
