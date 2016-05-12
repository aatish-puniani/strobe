class AddClientsToPhotographer < ActiveRecord::Migration
  def change
    add_column :photographers, :clients, :text
  end
end
