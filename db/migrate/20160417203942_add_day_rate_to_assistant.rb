class AddDayRateToAssistant < ActiveRecord::Migration
  def change
    add_column :assistants, :day_rate, :integer
  end
end
