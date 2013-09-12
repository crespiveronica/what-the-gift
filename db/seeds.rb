# -*- coding: utf-8 -*-
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


password = "password"
password_confirmation = "password"
active = true
banned = false
banned_reason = "none"

# Users
#ban_reasons = ["Vendía droga", "Traficaba órganos"]
print "Creating 100 users..."
100.times do
  u = User.new
  first_name = Faker::Name.first_name
  last_name = Faker::Name.last_name
  email = Faker::Internet.email

  u.first_name = first_name
  u.last_name = last_name
  u.email = email
  u.password = password
  u.password_confirmation = password_confirmation
  u.active = active
  u.banned = banned
  u.banned_reason = banned_reason

  u.save
end
puts "done."


# Sellers
print "Creating 50 sellers..."
50.times do
  s = Seller.new
  first_name = Faker::Name.first_name
  last_name = Faker::Name.last_name
  email = Faker::Internet.email
  company_name = Faker::Company.bs
  web = Faker::Internet.url

  s.first_name = first_name
  s.last_name = last_name
  s.email = email
  s.company_name = company_name
  s.web = web
  s.password = password
  s.password_confirmation = password_confirmation
  s.active = active
  s.banned = banned
  s.banned_reason = banned_reason

  s.save
end
puts "done."


# Products
print "Creating 350 products... "
status = [true, true, true, true, true, true, false]
350.times do
  p = Product.new
  p.name = Faker::Commerce.product_name
  p.description = Faker::Lorem.sentence(word_count = 4, 
                  supplemental = false, random_words_to_add = 6)
  p.brand = Faker::Company.name
  p.approved = status.sample

  p.save
end
puts "done"

# ... next model
