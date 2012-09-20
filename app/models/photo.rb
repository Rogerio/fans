class Photo < ActiveRecord::Base
  belongs_to :news_article
  attr_accessible :caption, :news_article_id, :picture
  
  has_attached_file :picture, :styles => {
    :headline => "365x365#",
    :thumbnail =>"150x150#"
  }

  validates_attachment_size         :picture, :less_than => 5.megabyte
  validates_attachment_content_type :picture, :content_type => %w(image/png image/jpeg image/pjpeg image/gif image/tiff)
  validates_attachment_presence     :picture

end