class AddAttachmentImageToOutlines < ActiveRecord::Migration
  def self.up
    change_table :outlines do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :outlines, :image
  end
end
