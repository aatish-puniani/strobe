class AddMobileNumberToPhotographer < ActiveRecord::Migration
  def change
    add_column :photographers, :mobile_number, :string
  end
end
