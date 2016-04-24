class AddBlogToPhotographer < ActiveRecord::Migration
  def change
    add_column :photographers, :blog, :string
  end
end
