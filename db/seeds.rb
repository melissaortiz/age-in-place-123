# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

agencies = Agency.create([ 
 { name: 'Brightcity Care of East Tucson', street: '2510 Kerry Street', city: 'Tucson', state: 'AZ', phone: '517-679-1700', rating:5},
 { name: 'Brightcare Care of East Lansing', street: '2510 Kerry Street', city: 'Lansing', state: 'MI', phone: '517-679-1700', rating:4}, 
 { name: 'BrightS Care of East Seattle', street: '2510 Kerry Street', city: 'Seattle', state: 'WA', phone: '517-679-1700', rating:4}, 
 { name: 'BrightStar Care of East Lansing', street: '2510 Kerry Street', city: 'Lansing', state: 'MI', phone: '517-679-1700', rating:3}, 
 { name: 'BrightStar Care of East Lansing', street: '2510 Kerry Street', city: 'Lansing', state: 'MI', phone: '517-679-1700', rating:1} ])