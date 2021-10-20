class CommentsController < ApplicationController
  def create
    @comment = Comment.new(comment_params)
    if @comment.save
      redirect_to booth_path(@comment.booth)
    else
      @booth = @comment.booth
      @comments = @booth.comments
      render "booths/show"
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:text).merge(user_id: current_user.id, booth_id: params[:booth_id])
  end

end
