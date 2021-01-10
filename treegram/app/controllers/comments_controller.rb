class CommentsController < ApplicationController

  # GET /follows
  def index
    @photo_comments = Comment.where(photo_id: params[:photo_id])
    render(:partial => 'comments', :object => @photo_comments) if request.xhr?
  end

  # POST /comments
  def create
    @comment = Comment.create(user_id: params[:user_id], photo_id: params[:photo_id], comment_text: params[:comment][:comment_text])
    flash[:notice] = "Successfully added a comment"
    redirect_to :back
  end

  private
    # Only allow a trusted parameter "white list" through.
    def comment_params
      params.require(:comment).permit(:user_id, :photo_id, :comment_text)
    end
end
