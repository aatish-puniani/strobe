class CreatePhotoAssistants < ActiveRecord::Migration
  def change
    create_table :photo_assistants do |t|
      t.string :name
      t.string :company
      t.string :email
      t.string :phone_number
      t.string :address
      t.integer :day_rate
      t.text :worked_with
      t.string :url
      t.string :user_photo
      t.text :bio
      t.string :twitter
      t.string :instagram
      t.integer :years_exp
      t.boolean :car

      t.timestamps null: false
    end
  end
end
