class RemoveLeadFromNewsArticle < ActiveRecord::Migration
  def up
    remove_column :news_articles, :lead
  end

  def down
    add_column :news_articles, :lead, :string
  end
end
