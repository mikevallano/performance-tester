class PagesController < ApplicationController
  def home
  end

  def about
  end

  def csv_tester
  end

  def csv_upload
    BulkUploadCritters.call(file_data: csv_params[:file])
    flash[:notice] = 'yay!'
    redirect_to csv_tester_path
  end

  private

  def csv_params
    params.permit(:file)
  end
end
