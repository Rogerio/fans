class AllTablesWeNeed < ActiveRecord::Migration
  def change
    
    
    
    create_table :sections do |t|
      t.string :name

      t.timestamps
    end
    
    create_table :news_articles do |t|
      t.string :head
      t.string :subhead
      t.string :overline
      t.text :lead
      t.text :body
      t.references :section
      
      t.timestamps
    end
    
    add_index :news_articles, :section_id
    
    create_table :photos do |t|
      t.text :caption
      t.references :news_article
      t.has_attached_file :picture

      t.timestamps
    end
    add_index :photos, :news_article_id
    
    create_table :ckeditor_assets do |t|
      t.string  :data_file_name, :null => false
      t.string  :data_content_type
      t.integer :data_file_size

      t.integer :assetable_id
  	  t.string  :assetable_type, :limit => 30
      t.string  :type, :limit => 30

      # Uncomment	it to save images dimensions, if your need it
  	  t.integer :width
  	  t.integer :height

      t.timestamps
    end

    add_index "ckeditor_assets", ["assetable_type", "type", "assetable_id"], :name => "idx_ckeditor_assetable_type"
  	add_index "ckeditor_assets", ["assetable_type", "assetable_id"], :name => "idx_ckeditor_assetable"

    create_table :reporters do |t|
      t.string :name

      t.timestamps
    end
  end
end
