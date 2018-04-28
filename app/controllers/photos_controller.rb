class PhotosController < ApplicationController

  def index
    @photos = Photo.order(:photo_name)
  end

  def new
   @photo = Photo.new
  end

  def show
    @photo = Photo.find(params[:id])
  end

  def create
    @photo = Photo.new(photo_params)
    if @photo.save
      flash[:notice] = "Your photo has been saved."
      redirect_to root_path
    else
      flash[:notice] = "Something went wrong. Please try again."
      render :new
    end
  end

  def edit
    @photo = Photo.find(params[:id])
  end

  def update
    @photo = Photo.find(params[:id])
    if @photo.update(photo_params)
      flash[:notice] = "Your photos have been updated."
      redirect_to photo_path(@photo)
    else
      flash[:notice] = "Something went wrong. Please try again."
      render :edit
    end
  end

  def destroy
    @photo = Photo.find(params[:id])
    @photo.destroy
    redirect_to photos_path
  end

  private
  def photo_params
    params.require(:photo).permit(:photo_name, :photo_description, :image)
  end
end
