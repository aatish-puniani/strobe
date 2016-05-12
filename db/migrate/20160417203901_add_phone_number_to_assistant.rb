class AddPhoneNumberToAssistant < ActiveRecord::Migration
  def change
    add_column :assistants, :phone_number, :string
  end
end
