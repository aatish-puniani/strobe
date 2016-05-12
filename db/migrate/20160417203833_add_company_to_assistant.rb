class AddCompanyToAssistant < ActiveRecord::Migration
  def change
    add_column :assistants, :company, :string
  end
end
