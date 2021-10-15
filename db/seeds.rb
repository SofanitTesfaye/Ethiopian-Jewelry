# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Rating.destroy_all
Necklace.destroy_all
User.destroy_all

@admin = User.create!(username: 'Almighty', email: 'almighty@heaven.com', password: 'Theonly1')

puts "#{User.count} users created"

@menen = Necklace.create!(name: 'menen', image_url: 'https://i.etsystatic.com/15418218/r/il/95663f/2830954557/il_1588xN.2830954557_d47u.jpg')
@etege = Necklace.create!(name: 'etege', image_url: 'https://i.etsystatic.com/22794780/r/il/d7d320/2347199445/il_1588xN.2347199445_166b.jpg')
@silassie = Necklace.create!(name: 'silassie', image_url: 'https://i.etsystatic.com/5631781/r/il/94c8f8/608726262/il_1588xN.608726262_sju5.jpg')
@wold = Necklace.create!(name: 'wold', image_url: 'https://i.etsystatic.com/7367325/r/il/fd7d96/2709736557/il_1588xN.2709736557_nwf4.jpg')
@abb = Necklace.create!(name: 'abb', image_url: 'https://i.etsystatic.com/19229681/r/il/620396/2684484603/il_1588xN.2684484603_ccql.jpg')
@menfeskidus = Necklace.create!(name: 'menfeskidus', image_url: 'https://i.etsystatic.com/12398746/r/il/ab265c/3326734791/il_1588xN.3326734791_eod5.jpg')
@meskel = Necklace.create!(name: 'meskel', image_url: 'https://i.etsystatic.com/6472773/r/il/5ec18b/3182449093/il_1588xN.3182449093_9949.jpg')
@timket = Necklace.create!(name: 'timket', image_url: 'https://i.etsystatic.com/11828889/r/il/77b296/3389144112/il_794xN.3389144112_52gr.jpg')
@demera = Necklace.create!(name: 'demera', image_url: 'https://i.etsystatic.com/6472773/r/il/515b07/2768118282/il_1588xN.2768118282_5bff.jpg')

puts "#{Necklace.count} necklaces created"

Rating.create!({ rank: '4', user: @admin, necklace: @menen })
Rating.create!({ rank: '3', user: @admin, necklace: @etege })
Rating.create!({ rank: '4', user: @admin, necklace: @silassie })
Rating.create!({ rank: '3', user: @admin, necklace: @wold })
Rating.create!({ rank: '5', user: @admin, necklace: @abb })
Rating.create!({ rank: '5', user: @admin, necklace: @menfeskidus })
Rating.create!({ rank: '5', user: @admin, necklace: @meskel })
Rating.create!({ rank: '5', user: @admin, necklace: @timket })
Rating.create!({ rank: '5', user: @admin, necklace: @demera })

puts "#{Rating.count} ratings created"
