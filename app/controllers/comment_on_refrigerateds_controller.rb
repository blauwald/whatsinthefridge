class CommentOnRefrigeratedsController < ApplicationController
  def index
    @comment_on_refrigerateds = CommentOnRefrigerated.find(params[:refrigerated_id])
  end

  def show
    @comment_on_refrigerated = CommentOnRefrigerated.find(params[:user_id])
  end

  def new
    @comment_on_refrigerated = CommentOnRefrigerated.new
  end

  def create
    @comment_on_refrigerated = CommentOnRefrigerated.new
    @comment_on_refrigerated.user_id = params[:user_id]
    @comment_on_refrigerated.body = params[:body]
    @comment_on_refrigerated.refrigerated_id = params[:refrigerated_id]

    if @comment_on_refrigerated.save
      redirect_to "/comment_on_refrigerateds", :notice => "Comment on refrigerated created successfully."
    else
      render 'new'
    end
  end

  def edit
    @comment_on_refrigerated = CommentOnRefrigerated.find(params[:id])
  end

  def update
    @comment_on_refrigerated = CommentOnRefrigerated.find(params[:id])

    @comment_on_refrigerated.user_id = params[:user_id]
    @comment_on_refrigerated.body = params[:body]
    @comment_on_refrigerated.refrigerated_id = params[:refrigerated_id]

    if @comment_on_refrigerated.save
      redirect_to "/comment_on_refrigerateds", :notice => "Comment on refrigerated updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @comment_on_refrigerated = CommentOnRefrigerated.find(params[:id])

    @comment_on_refrigerated.destroy

    redirect_to "/comment_on_refrigerateds", :notice => "Comment on refrigerated deleted."
  end
end
