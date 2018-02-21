class CommentsController < ApplicationController
  def new
    @comment=Comment.new
  end

  def create
    new_content = params[:comment][:content]
    new_post_id = params[:comment][:post_id]

    comment.content=new_content
    comment.post_id=new_post_id
    comment.save

    redirect_to edit_comment_path new_comment
  end

  def index
    @comments=Comment.all
  end

  def show
    @comment=Comment.find(params[:id])
  end

  def edit
    @comment=Comment.find(params[:id])
  end

  def update
    post=Comment.find(params[:id])

    new_content = params[:comment][:content]
    new_post_id = params[:comment][:post_id]

    comment.content=new_content
    comment.post_id=new_post_id
    comment.save

    redirect_to comment_path
  end

  def destroy
    Comment.find(params[:id]).destroy

    redirect_to comments_path
  end
end
