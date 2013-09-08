# -*- coding: utf-8 -*-
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


password = "password"
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
  s.active = active
  s.banned = banned
  s.banned_reason = banned_reason

  s.save
end
puts "done."
