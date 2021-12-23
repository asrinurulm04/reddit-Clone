class CommentsController < ApplicationController
  def create
    @account = Comments.new comments_params
    @account.account_id = current_account.id
    
    respond_to do |format|
      format.js {
        if comment.save
          render "messages/create"
        else
        # enable to save
        end
      }
    end
  end

  def comments_params
    params.require(:comment).permit(:message, :post_id)
  end
end