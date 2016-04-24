class AddCompanyToPhotographer < ActiveRecord::Migration
  def change
    add_column :photographers, :company, :string
  end
end
