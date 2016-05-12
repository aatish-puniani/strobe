class AddUrlToPhotographer < ActiveRecord::Migration
  def change
    add_column :photographers, :url, :string
  end
end
