class AddStudioNumberToPhotographer < ActiveRecord::Migration
  def change
    add_column :photographers, :studio_number, :string
  end
end
