class AddAttachmentFileToInformation < ActiveRecord::Migration
  def self.up
    change_table :information do |t|
      t.attachment :file
    end
  end

  def self.down
    remove_attachment :information, :file
  end
end
