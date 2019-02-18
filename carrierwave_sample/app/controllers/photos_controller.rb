class PhotosController < ApplicationController
  def index
    @photos = Photo.all
  end

  def show
    @photo = find_photo
  end

  def new
    @photo = Photo.new
  end

  def create
    @photo = Photo.new
    @photo.image = params[:image]
    @photo.save!
    redirect_to action: 'index'
  end

  private

  def find_photo
    Photo.find(params[:id])
  end
end
