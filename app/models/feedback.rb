class Feedback < ActiveRecord::Base
	validates_presence_of :content
	has_attached_file :attachment
  do_not_validate_attachment_file_type :attachment
  validates_attachment_presence :attachment, :allow_blank => true
  validates_attachment_size :attachment, { :in => 0..2.megabytes }

  after_validation :clean_paperclip_errors


  private

  def clean_paperclip_errors
  	errors.delete(:attachment)
  end
end
