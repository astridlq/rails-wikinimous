class ArticlesController < ApplicationController
  before_action :set_article, only: [:show, :edit, :update, :destroy]

  def index
    @articles = Article.all
  end

  def show
  end

  def new
    @articles = Article.new
  end

  def create
    @articles = Article.new(article_params)
    @articles.save
    redirect_to root_path
  end

  def edit
  end

  def update
    @articles.update(article_params)
    redirect_to article_path
  end

  def destroy
    @articles.destroy
    redirect_to root_path
  end

  private

  def set_article
    @articles = Article.find(params[:id])
  end

  def article_params
    params.require(:article).permit(:title, :content)
  end

end
