# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

informations = [{:topic => 'first topic', :content => 'first content', :picture => 'no image', :institution => 'first institution'},
				{:topic => 'second topic', :content => 'second content', :picture => 'no image',:institution => 'second institution'},
				{:topic => 'third topic', :content => 'third content', :picture => 'no image',:institution => 'three institution'}
				
				]
informations.each do |inform|
	Information.create!(inform)
end
