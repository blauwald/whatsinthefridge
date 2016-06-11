class CommentOnFrozensController < ApplicationController
  def index
    @comment_on_frozens = CommentOnFrozen.all
  end

  def show
    @comment_on_frozen = CommentOnFrozen.find(params[:id])
  end

  def new
    @comment_on_frozen = CommentOnFrozen.new
  end

  def create
    @comment_on_frozen = CommentOnFrozen.new

    if @comment_on_frozen.save
      redirect_to "/comment_on_frozens", :notice => "Comment on frozen created successfully."
    else
      render 'new'
    end
  end

  def edit
    @comment_on_frozen = CommentOnFrozen.find(params[:id])
  end

  def update
    @comment_on_frozen = CommentOnFrozen.find(params[:id])


    if @comment_on_frozen.save
      redirect_to "/comment_on_frozens", :notice => "Comment on frozen updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @comment_on_frozen = CommentOnFrozen.find(params[:id])

    @comment_on_frozen.destroy

    redirect_to "/comment_on_frozens", :notice => "Comment on frozen deleted."
  end
end
