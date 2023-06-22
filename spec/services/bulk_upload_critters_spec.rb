require 'rails_helper'

RSpec.describe BulkUploadCritters, type: :service do
  let(:csv_file) { File.new(Rails.root + 'spec/fixtures/test.csv') }
  let(:file_data) do
    ActionDispatch::Http::UploadedFile.new(
      tempfile: csv_file,
      filename: File.basename(csv_file),
      type: 'text/csv'
    )
  end

  context 'success' do
    it 'does stuff' do
      described_class.call(file_data: file_data)
    end
  end
end
