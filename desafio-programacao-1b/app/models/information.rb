class Information < ActiveRecord::Base
  before_save :contents_of_file_into_body

  has_attached_file :document
  validates_attachment_presence :document
  validates_attachment_content_type :document, content_type: 'text/plain'

  private

  def contents_of_file_into_body
    path = document.queued_for_write[:original].path
    content = File.open(path).read
  end

end
