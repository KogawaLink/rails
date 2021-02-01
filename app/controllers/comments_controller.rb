class CommentsController < ApplicationController

  def create
    comment = Comment.new(comment_params)
    binding.pry
    if comment.save
      flash[:success] = "コメントしました"
      redirect_to topics_path
    else
      binding.pry
      flash[:success] = "コメントできませんでした"
      render 'topics/index'
    end
  end
  
  private
  
    def comment_params
      params.require(:comment).permit(:topic_id, :content)
    end
end
