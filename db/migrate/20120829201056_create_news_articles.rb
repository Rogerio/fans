class CreateNewsArticles < ActiveRecord::Migration
  def change
    create_table :news_articles do |t|
      t.string :head
      t.string :subhead
      t.text :lead
      t.text :body
      t.references :section

      t.timestamps
    end
    add_index :news_articles, :section_id
  end
end
