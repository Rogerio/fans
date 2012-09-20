class Section < ActiveRecord::Base
  attr_accessible :name
  has_many :news_articles

end
