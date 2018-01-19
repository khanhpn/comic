class ArticlesController < ApplicationController
  before_action :set_article, only: [:edit, :show, :update, :delete]
  def index
    @articles = Article.all
  end

  def new
    @article = Article.new
    @categories = Category.all
    @authors = Author.all
  end

  def create
    @categories = Category.all
    @authors = Author.all
    @article = Article.new(set_param)
    if @article.valid? && @article.save
      redirect_to articles_path, notice: "Create article successfully"
    else
      render :new, notice: "Some thing errors"
    end
  end

  def edit
    @categories = Category.all
    @authors = Author.all
  end

  def show
    @comment = @article.comments.new
    @comments = @article.comments
  end

  def delete
  end

  def update
    if @article.update(set_param)
      redirect_to article_path(@article), notice: "update article successfully"
    else
      render :edit, notice: "Some thing errors"
    end
  end

  private
  def set_article
    @article = Article.find_by(id: params[:id])
  end

  def set_param
    params.require(:article).permit(:name, :description, :category_id, :author_id)
  end
end
