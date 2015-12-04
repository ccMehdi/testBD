class UploadsController < ApplicationController
  before_filter :authenticate_user!

  def index
    @uploads = current_user.uploads
  end

  def show
    @upload = current_user.uploads.find(params[:id])
  end

  def new
    @upload = current_user.uploads.new
  end

  def create
    @upload = current_user.uploads.new(upload_params)
    redirect_to uploads_path
  end

  def edit
    @upload = current_user.uploads.find(params[:id])
  end

  def update
    @upload = current_user.uploads.find(params[:id])
  end

  def destroy
    @upload = current_user.uploads.find(params[:id])
  end

  private

  def upload_params
    params.require(:upload).permit(upload: :uploaded_file)
  end
end
