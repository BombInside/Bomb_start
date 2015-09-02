class AddAttachmentPosterToPosts < ActiveRecord::Migration
  def self.up
    change_table :posts do |t|
      t.attachment :poster
    end
  end

  def self.down
    remove_attachment :posts, :poster
  end
end
