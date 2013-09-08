# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Users
print "Creating 100 users..."

ban_reasons = ["Vendía droga", "Traficaba órganos"]
100.times do
  u = User.new(
    :first_name = Faker::Name.first_name,
    :last_name = Faker::Name.last_name,
    :email = Faker::Internet.email,
    :password = "password",
    :active = true,
    :banned = false,
    :banned_reason = ban_reasons.sample
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

puts "done."


# Products

#