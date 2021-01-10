class TagsController<ActionController::Base
  def new
    redirect_to "/"
  end

  def create
    @user = User.find(params[:tag][:user_id])
    @tag = Tag.create({user_id: params[:tag][:user_id], photo_id: params[:tag][:photo_id]})
    redirect_to user_path(session[:user_id])
  end




end
