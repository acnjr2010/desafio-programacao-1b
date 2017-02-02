require 'rails_helper'

RSpec.describe Information, type: :model do
  describe "validations" do
    it "should be valid" do
      document = Information.new document: File.new(Rails.root + 'spec/fixtures/test_data.txt')
    end

    it "validate presence file" do
      is_expected.to validate_presence_of(:document)
    end

    context "when upload files" do
      it "file txt extension" do
        expect allow_value("test_data.txt").for(:document_file_name)
      end

      it "file TXT extension" do
        expect allow_value("test_data.TXT").for(:document_file_name)
      end

      it "file doc extension" do
        should_not allow_value("test_data.doc").for(:document_file_name)
      end

      it "file pdf extension" do
        should_not allow_value("test_data.pdf").for(:document_file_name)
      end

      it "file jpg extension" do
        should_not allow_value("test_data.jpg").for(:document_file_name)
      end

      it "file png extension" do
        should_not allow_value("test_data.png").for(:document_file_name)
      end
    end
  end
end
