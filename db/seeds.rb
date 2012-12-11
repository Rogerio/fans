# encoding: utf-8

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Reporter.create!(
  :name => "Rogério Alexandre",
  :email => "rogerioaba@gmail.com",
  :password => "123456"
)

%w(POLÍTICA ECONOMIA URBANO ESPORTE ESTILO VIVER COMPRAR NAVEGAR CADERNO\ F).each do |name|
  Section.create!(:name => name)
end