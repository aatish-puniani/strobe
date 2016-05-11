class RemoveCameraFromGears < ActiveRecord::Migration
  def change
    remove_column :gears, :camera, :string
  end
end
