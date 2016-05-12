class AddCityIdToPhotographer < ActiveRecord::Migration
  def change
    add_column :photographers, :city_id, :integer
  end
end
