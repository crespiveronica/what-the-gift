# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Users
ban_reasons = ["Vendía droga", "Traficaba órganos"]

print "Creating 100 users..."

100.times do
  u = User.new(
    first_name = Faker::Name.first_name,
    last_name = Faker::Name.last_name,
    email = Faker::Internet.email,
    password = "password",
    active = true,
    banned = false,
    banned_reason = "none"
    # Para completar más luego... tiene referencias
    # a productos que todavía no existen
    #:whishlist,
    #:received_gifts,
    #:hobbies
  )

  u.save
end
puts "done."


# Sellers
print "Creating 50 sellers..."
50.times do
  s = Seller.new(
    first_name = Faker::Name.first_name,
    last_name = Faker::Name.last_name,
    email = Faker::Internet.email,
    password = "password",
    active = true,
    banned = false,
    banned_reason = "none",
    company_name = Faker::Company.bs,
    web = Faker::Internet.url
    #:products
  )

  s.sane
end
puts "done."


# Products

#
