class RemoveColumnHeadlineToNewsArticles < ActiveRecord::Migration
  def up
    remove_column :news_articles, :headline
  end

  def down
    add_column :news_articles, :headline, :boolean
  end
end
