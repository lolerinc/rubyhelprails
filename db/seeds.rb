# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

   Artist.create(name: 'Germany')

   Album.create(title: 'album Example 1', artist_id: 1 , year: 1993)

   Album.create(title: 'album Example 2', artist_id: 1 , year: 1988)

   Song.create(title: 'song example 1', album_id: 1)
   Song.create(title: 'song example 2', album_id: 1)
   Song.create(title: 'song example 3', album_id: 1)
   Song.create(title: 'song example 4', album_id: 1)
   Song.create(title: 'song example 5', album_id: 1)