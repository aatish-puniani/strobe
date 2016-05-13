class ChangeColumnName < ActiveRecord::Migration
  def change
    rename_column :categorized_assistants, :photo_assistant_id, :assistant_id
  end
end
