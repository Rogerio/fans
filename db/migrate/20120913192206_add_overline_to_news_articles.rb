class AddOverlineToNewsArticles < ActiveRecord::Migration
  def change
    add_column :news_articles, :overline, :string
  end
end
