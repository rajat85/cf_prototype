class AddAttachmentColumnsToFeedbacks < ActiveRecord::Migration
  def up
  	add_attachment :feedbacks, :attachment
  end

  def down
  	remove_attachment :feedbacks, :attachment
  end
end
