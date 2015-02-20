class AddAttachmentAvatarToJackets < ActiveRecord::Migration
  def self.up
    change_table :jackets do |t|
      t.attachment :avatar
    end
  end

  def self.down
    remove_attachment :jackets, :avatar
  end
end
