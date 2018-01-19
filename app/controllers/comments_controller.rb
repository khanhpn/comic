class CommentsController < ApplicationController
  def index
  end

  def new
    @article = Article.find_by(id: params[:article_id])
    @comment = @article.comments.new
  end

  def create
    @article = Article.find_by(id: params[:article_id])
    @comment = @article.comments.new(set_params)
    if @comment.valid? && @comment.save
      redirect_to article_path(@article)
    else
      render :new
    end
  end

  def show

  end

  def edit
  end

  def update
  end

  def delete
  end

  private
  def set_params
    params.require(:comment).permit(:name)
  end

  def set_comment
    @article = Article.find_by(id: params[:article_id])
    @comment = @article.comments.find_by(id: params[:id])
  end
end
