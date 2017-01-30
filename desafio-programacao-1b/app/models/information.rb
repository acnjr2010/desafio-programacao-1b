class Information < ActiveRecord::Base
  has_attached_file :file
  validates_attachment_content_type :file, content_type: 'text/plain'
end
