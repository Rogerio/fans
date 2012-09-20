class PagesController < ApplicationController

  before_filter :load_resources

  def index
    @news_articles = NewsArticle.scoped
    @news_articles = @section.news_articles if @section.present?
    @headlines = @news_articles.to_a.from(1).to(5)
    @headline =  @news_articles.first
    @news_secondaries = @news_articles[7..-1]
  end
  
protected

  def load_resources
    @sections= Section.all
    @section = Section.find(params[:section_id]) if params[:section_id]
  end
end
