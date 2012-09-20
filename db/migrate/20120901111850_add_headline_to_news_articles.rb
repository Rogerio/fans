class AddHeadlineToNewsArticles < ActiveRecord::Migration
  def change
    add_column :news_articles, :headline, :boolean, :default => 0
  end
end
