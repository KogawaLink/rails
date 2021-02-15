class CommentsController < ApplicationController

  def create
    topic = Topic.find(params[:topic_id])
    comment = topic.comments.new(comment_params)
    if comment.save
      flash[:success] = "コメントしました"
      redirect_to topics_path
    else
      flash[:success] = "コメントできませんでした"
      render 'topics/index'
    end
  end
  
  private
  
    def comment_params
      params.require(:comment).permit(:content)
    end
end
