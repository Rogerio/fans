class Admin::NewsArticlesController < ApplicationController

  layout 'admin'

  before_filter :load_resources, :only => [:new, :create, :edit, :update] 

  
  def index
    @news_articles = NewsArticle.paginate(:page => params[:page], :per_page => 5)
    respond_with @news_articles
  end

  def show
    @news_article = NewsArticle.find(params[:id])
    respond_with @news_article
  end

  def new
    @news_article = NewsArticle.new
    respond_with @news_article
  end

  def edit
    @news_article = NewsArticle.find(params[:id])
  end

  def create
    @news_article = NewsArticle.new(params[:news_article])
    flash[:notice] = 'Noticia Publicada.' if @news_article.save
    respond_with @news_article, :location => admin_news_articles_path
  end

  def update
    @news_article = NewsArticle.find(params[:id])
    flash[:notice] = 'Noticia Atualizada.' if @news_article.update_attributes(params[:news_article])
    respond_with @news_article, :location => admin_news_articles_path
  end

  def destroy
    @news_article = NewsArticle.find(params[:id])
    @news_article.destroy
    respond_with @news_article, :location => admin_news_articles_path
  end
  
protected

  def load_resources
    @sections = Section.all
  end
  
end