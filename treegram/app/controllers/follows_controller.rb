class FollowsController < ApplicationController

  # GET /follows
  def index
    @users = User.all
    @users_no_current = User.where.not(id: current_user)
  end

  # POST /follows
  def create
    @followed = User.find(params[:followed_id])
    @follow = Follow.create(follower_id: params[:user_id], followed_id: params[:followed_id])

    flash[:notice] = "Successfuly followed #{@followed.email}"
    redirect_to :back
  end

  private
    # Only allow a trusted parameter "white list" through.
    def follow_params
      params.require(:follow).permit(:follower_id, :followed_id)
    end
end
