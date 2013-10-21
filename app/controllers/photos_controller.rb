class PhotosController < ApplicationController

  def index
    @photos = Photo.all
  end

  def show
    @photo = Photo.find(params[:id])
  end

  def new
    @photo = Photo.new
  end

  def create
    @photo = Photo.create(photo_params)

    redirect_to action: :index
  end
end

  private
    def photo_params
      params.require(:photo).permit(:image)
    end
