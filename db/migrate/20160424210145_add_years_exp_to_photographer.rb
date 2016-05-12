class AddYearsExpToPhotographer < ActiveRecord::Migration
  def change
    add_column :photographers, :years_exp, :integer
  end
end
