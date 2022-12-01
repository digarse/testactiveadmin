class VideosUploadController < ApplicationController
	before_action :set_videosupload, only: %i[show update destroy]
	def index
    @videosupload = VideoUpload.all
    render json: @videosupload, status: :ok
    end
  def create
    @videoupload = VideoUpload.create!(videosupload_params)
    render json: @videoupload, status: :created
  end
  def show
    render json: @videoupload, status: :ok
  end
  def update
    @videoupload.update(videosupload_params)
    head :no_content
  end
  def destroy
    @videoupload.destroy
    head :no_content
  end

  private
  
  def speaker_params
    params.permit(:name, :description, :video, :thumbnail)
  end

  def set_videosupload
    @videoupload = VideoUpload.find(params[:id])
   end
end
