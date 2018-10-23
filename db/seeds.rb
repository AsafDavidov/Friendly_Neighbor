# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# User.destroy_all
# Item.destroy_all
# Image.destroy_all
# Renting.destroy_all
# Review.destroy_all
User.create(name: "Asaf3", email: "asaf.com", address: "sock drawer", password: "socky_time", password_confirmation: "socky_time")

User.create(name: "Asaf4", email: "asaf1.com", address: "sock drawer", password: "socky_time", password_confirmation: "socky_time")

Item.create(name: "left sock", description: "pretty good condition but has one hole", user_id: 1, price: 5.0)

Item.create(name: "right sock", description: "pretty good condition but has one hole", user_id: 2, price: 5.0)

Image.create(item_id: 1, url: "https://www.google.com/url?sa=i&source=images&cd=&cad=rja&uact=8&ved=2ahUKEwi1pvzVxZreAhUH7YMKHa2ZAUEQjRx6BAgBEAU&url=https%3A%2F%2Fwww.blueq.com%2Fshop%2Fitem%2F229-productId.125847701.html&psig=AOvVaw2ITnz_IXa74lxiK6MfkO44&ust=1540314729534380")

Image.create(item_id:2, url: "http://cdn.shopify.com/s/files/1/0654/8625/files/SockwithHoles_large.jpg?12552862481556833334")

User.create(name: "Kris", email: "kris.com", address: "potato garden", password: "givemethepotatoes", password_confirmation: "givemethepotatoes")

User.create(name: "Kris2", email: "kris2.com", address: "potato garden", password: "givemethepotatoes", password_confirmation: "givemethepotatoes")

Renting.create(item_id: 1, user_id: 3, proposed_duration: 3)
Renting.create(item_id: 2, user_id: 4, proposed_duration: 3)

Review.create(rating: 5, content: "thoroughly pleased", renting_id: 1)
Review.create(rating: 5, content: "could have been better", renting_id: 2)



Item.create(name: "ham sandwich", description: "has mustard sorry", user_id: 1, price: 34.0)
  Item.last.rentings.build(user_id: 3, proposed_duration: 3000).save
    Renting.last.new_review.update(rating: 2, content: "unsatisfactory condiments")
Item.create(name: "pickle juice", description: "super salty", user_id: 1, price: 77.0)
  Item.last.rentings.build(user_id: 3, proposed_duration: 0.02).save
    Renting.last.new_review.update(rating: 5, content: "a delightful brine")
  sleep(5)
  Item.last.rentings.build(user_id: 3, proposed_duration: 3000).save
    Renting.last.new_review.update(rating: 2, content: "need less salt")
Item.create(name: "robot wife", description: "pretty good condition but has one hole", user_id: 1, price: 6.7)
  Item.last.rentings.build(user_id: 3, proposed_duration: 0.01).save
    Renting.last.new_review.update(rating: 4, content: "needs reprogramming")
  Item.last.rentings.build(user_id: 3, proposed_duration: 0.01).save
    Renting.last.new_review.update(rating: 5, content: "great user experience")
