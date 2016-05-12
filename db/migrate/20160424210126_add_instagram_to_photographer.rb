class AddInstagramToPhotographer < ActiveRecord::Migration
  def change
    add_column :photographers, :instagram, :string
  end
end
