class NewsArticle < ActiveRecord::Base
  
  belongs_to :section
  
  has_many :photos
  
  attr_accessible :body, :head, :subhead, :section_id, :photos_attributes, :overline
  
  accepts_nested_attributes_for :photos

  default_scope order("created_at DESC")

  validates_presence_of :head, :subhead, :overline, :body, :section_id, :photos
  
end