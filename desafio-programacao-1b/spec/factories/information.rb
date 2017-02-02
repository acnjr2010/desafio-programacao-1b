include ActionDispatch::TestProcess

FactoryGirl.define do
  factory :information do
    document { fixture_file_upload(Rails.root.join('spec/fixtures/test_data.txt'), 'text/plain') }
  end
end
