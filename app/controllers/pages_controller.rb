class PagesController < ApplicationController
  def home
  end

  def about
  end

  def csv_tester
  end

  def csv_upload
    result = BulkUploadCritters.call(file_data: csv_params[:file])
    if result[:failure].present?
      flash[:error] = result[:failure]
    else
      flash[:notice] = 'The csv has been processed'
    end
    redirect_to csv_tester_path
  end

  private

  def csv_params
    params.permit(:file)
  end
end
