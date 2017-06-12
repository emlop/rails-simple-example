class CommentsController < ApplicationController
  def create
    @supply = Supply.find(params[:supply_id])
    @comment = @supply.comments.create(comment_params)
    redirect_to supply_path(@supply)
  end
 
  def destroy
    @supply = Supply.find(params[:supply_id])
    @comment = @supply.comments.find(params[:id])
    @comment.destroy
    redirect_to supply_path(@supply)
  end
 
  private
    def comment_params
      params.require(:comment).permit(:commenter, :body)
    end
end