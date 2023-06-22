require 'csv'
class BulkUploadCritters < ApplicationService
  def initialize(file_data:)
    @file_data = file_data
  end

  def call
    process_csv
  end

  private

  def process_csv
    @errors = []
    CSV.foreach(@file_data.tempfile, headers: true).with_index do |row, index|
      validate_headers(row.to_h.keys) if index == 0
      binding.pry
      # critter = Critter.find_by(name: row['critter name'])
      # errors << row['critter name'] if critter.nil?
      # ... do other stuff
    end
  end

  def validate_headers(headers)

  end
end
