class AddAttachmentAvatarToAssistants < ActiveRecord::Migration
  def self.up
    change_table :assistants do |t|
      t.attachment :avatar
    end
  end

  def self.down
    remove_attachment :assistants, :avatar
  end
end
