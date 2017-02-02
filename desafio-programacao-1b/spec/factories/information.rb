include ActionDispatch::TestProcess

FactoryGirl.define do
  factory :information do
    document { fixture_file_upload(Rails.root.join('spec/fixtures/test_data.txt'), 'text/plain') }
    document_file_size 8
    document_file_name "test_data.txt"
    document_updated_at Time.now
  end

  factory :invalid_information, parent: :information do |f|
    f.document { fixture_file_upload(Rails.root.join('spec/fixtures/test_data.pdf'), 'application/pdf') }
    f.document_file_size 8
    f.document_file_name "test_data.pdf"
    f.document_updated_at Time.now
  end
end
