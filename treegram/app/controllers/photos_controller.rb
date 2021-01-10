class PhotosController < ApplicationController
  def create
    @user = User.find(params[:user_id])
    if params[:photo][:image] == nil
      flash[:alert] = "Please upload a photo"
      redirect_to :back
    elsif params[:photo][:title] == ""
      flash[:alert] = "Please write a title for the photo"
      redirect_to :back
    else
      @photo = Photo.create(photo_params)
      @photo.user_id = @user.id
      @photo.save
      flash[:notice] = "Successfully uploaded a photo"
      redirect_to user_path(@user)
    end
  end

  def new
    @user = User.find(params[:user_id])
    @photo = Photo.create()
  end

  def destroy
    Photo.find(params[:id]).destroy
    flash[:notice] = "Successfully deleted photo"
    redirect_to :back
  end

  private
  def photo_params
    params.require(:photo).permit(:image, :title)
  end
end
