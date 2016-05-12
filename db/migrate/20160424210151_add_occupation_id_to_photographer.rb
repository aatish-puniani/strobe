class AddOccupationIdToPhotographer < ActiveRecord::Migration
  def change
    add_column :photographers, :occupation_id, :integer
  end
end
