class NewsArticlesController < ApplicationController

  before_filter :load_resources
  
  def show
    @news_article = NewsArticle.find(params[:id])
    respond_with @news_article
  end
  

protected

def load_resources
  @sections = Section.all
end
  
end