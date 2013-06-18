#encoding: utf-8
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#locale_id ='1'
Locale.create(language: 'EN')
#locale_id ='2'
Locale.create(language: 'FR')
#locale_id ='3'
Locale.create(language: 'DE')


DisplayName.create(text: 'Vegetarian', locale_id: '1')
DisplayName.create(text: 'Végétarien', locale_id: '2')
DisplayName.create(text: 'Vegetarisch', locale_id: '3')
