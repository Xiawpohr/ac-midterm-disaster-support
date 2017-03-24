# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Disaster.destroy_all
Category.destroy_all

category_list = [
	{ name: '快報資訊'},
	{ name: '求物資'},
	{ name: '求救'}
]

disaster_list = [
	{ 
		title: '台南地震',
		content: '房子倒塌',
		category_id: 1
	},
	{ 
		title: '花蓮海嘯',
		content: '死傷慘重',
		category_id: 1
	}
]

category_list.each { |category|
	Category.create(name: category[:name])
}

disaster_list.each { |disaster|
	Disaster.create(title: disaster[:title], content: disaster[:content], category_id: disaster[:category_id])
}