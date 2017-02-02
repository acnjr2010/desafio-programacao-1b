class Information < ActiveRecord::Base
  has_attached_file :document
  validates_presence_of :document
  validates_attachment_presence :document
  validates_attachment_file_name :document, matches: %r{\.txt\Z}i
  validates_attachment_content_type :document, content_type: 'text/plain'
end
