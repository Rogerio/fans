class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.text :caption
      t.references :news_article

      t.timestamps
    end
    add_index :photos, :news_article_id
  end
end
