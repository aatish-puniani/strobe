class AddAddressToPhotographer < ActiveRecord::Migration
  def change
    add_column :photographers, :address, :string
  end
end
