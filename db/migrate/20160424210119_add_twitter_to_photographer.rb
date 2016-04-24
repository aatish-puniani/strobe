class AddTwitterToPhotographer < ActiveRecord::Migration
  def change
    add_column :photographers, :twitter, :string
  end
end
