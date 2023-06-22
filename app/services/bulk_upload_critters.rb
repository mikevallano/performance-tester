require 'csv'
class BulkUploadCritters < ApplicationService
  def initialize(file_data:)
    @file_data = file_data
    @errors = []
    @new_records = []
    @updated_records = []
  end

  def call
    process_csv
    result
  rescue => exception
    failure(exception.message)
  end

  private

  def process_csv
    CSV.foreach(@file_data.tempfile, headers: true) do |row|
      critter_attrs = {
        name: row['critter name']
      }
      critter = Critter.find_by(id: row['id'])
      if critter
        update_critter!(critter: critter, attrs: critter_attrs)
      else
        create_critter!(attrs: critter_attrs)
      end
    end
  end

  def update_critter!(critter:, attrs:)
    if critter.update(attrs)
      @updated_records << critter
    else
      # TODO: improve error handling/reporting
      @errors << critter.errors
    end
  end

  def create_critter!(attrs:)
    critter = Critter.new(attrs)
    if critter.save
      @new_records << critter
    else
      # TODO: improve error handling/reporting
      @errors << critter.errors
    end
  end

  # TODO: this could be its own class
  def result
    {
      errors: @errors,
      new_records: @new_records,
      updated_records: @updated_records
    }
  end

  # TODO: this could be its own class
  def failure(message)
    { failure: message }
  end
end
