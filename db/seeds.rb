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

# Cración de Categorías (Category)
#
deportes_category = Category.new(name: 'Deportes', description: 'Productos para entrenamiento y fitness')
libros_category = Category.new(name: 'Libros', description: 'Novelas, ciencia, comics')
peliculas_category = Category.new(name: 'Películas', description: 'De Chaplin a Avatar')
mascotas_category = Category.new(name: 'Mascotas', description: 'Accesorios para tu perro o gato')
autos_category = Category.new(name: 'Autos', description: '')
computacion_category = Category.new(name: 'Computacion', description: 'Laptops, de escritorio y todos sus accesorios')
celulares_category = Category.new(name: 'Celulares', description: 'Dumbphones, smartphones, cargadores y fundas')
juegos_category = Category.new(name: 'Juegos', description: 'TEG, Juego de la Vida, Monopoly y otros clásicos')
instrumentos_category = Category.new(name: 'Instrumentos', description: 'Guitarras, bajos, amplificadores y cuerdas')

#
# Guardar Categorías
#
deportes_category.save
libros_category.save
peliculas_category.save
mascotas_category.save
autos_category.save
computacion_category.save
celulares_category.save
juegos_category.save
instrumentos_category.save

#
# Creación de Productos (Product)
#
pelota_product = Product.new(name: 'Roteiro', description: 'Pelota de Alemania 2006', brand: 'Adidas')
libro_product = Product.new(name: 'La Piedra Filosofal', description: 'J.K. Rowling', brand: 'Editorial Sudamericana')
libro_product2 = Product.new(name: 'Harry Potter 2', description: 'J.K. Rowling', brand: 'Editorial Sudamericana')
libro_product3 = Product.new(name: 'Harry Potter 3', description: 'J.K. Rowling', brand: 'Editorial Sudamericana')
libro_product4 = Product.new(name: 'Harry Potter 4', description: 'J.K. Rowling', brand: 'Editorial Sudamericana')
libro_product5 = Product.new(name: 'Harry Potter 5', description: 'J.K. Rowling', brand: 'Editorial Sudamericana')
libro_product6 = Product.new(name: 'Harry Potter 6', description: 'J.K. Rowling', brand: 'Editorial Sudamericana')
libro_product7 = Product.new(name: 'Harry Potter 7', description: 'J.K. Rowling', brand: 'Editorial Sudamericana')
pelicula_product = Product.new(name: 'Pulp Fiction', description: 'La mejor pelicula de Tarantino', brand: '20th Century Fox')
mascota_product = Product.new(name: 'Caniche', description: 'Perro con ladrido insoportable', brand: 'Cabana Las Lilas, versión canina')
autos_product = Product.new(name: 'Fit 2012', description: 'El auto de Joaquincito', brand: 'Honda')
computacion_product = Product.new(name: 'MacBook 13 in.', description: 'La compu de Sach', brand: 'Apple')
celular_product = Product.new(name: 'iPhone 5S', description: 'El celular que quiere ser mi Samsung Ace cuando sea grande', brand: 'Apple')
juegos_product = Product.new(name: 'Monopoly', description: 'El juego más aburrido de la historia', brand: 'Hasbro')
instrumento_product = Product.new(name: 'Les Paul', description: 'Clásica guitarra', brand: 'Gibson')
instrumento2_product = Product.new(name: 'Batería eléctrica', description: 'Batería roja', brand: 'Roland')

#
# Asociación Categoría-Producto
#
pelota_product.update_attributes({ "category_ids" => deportes_category._id })
libro_product.update_attributes({ "category_ids" => libros_category._id })
libro_product2.update_attributes({ "category_ids" => libros_category._id })
libro_product3.update_attributes({ "category_ids" => libros_category._id })
libro_product4.update_attributes({ "category_ids" => libros_category._id })
libro_product5.update_attributes({ "category_ids" => libros_category._id })
libro_product6.update_attributes({ "category_ids" => libros_category._id })
libro_product7.update_attributes({ "category_ids" => libros_category._id })
pelicula_product.update_attributes({ "category_ids" => peliculas_category._id})
mascota_product.update_attributes({ "category_ids" => mascotas_category._id})
autos_product.update_attributes({ "category_ids" => autos_category._id  })
computacion_product.update_attributes({ "category_ids" => computacion_category._id })
celular_product.update_attributes({ "category_ids" => celulares_category._id })
juegos_product.update_attributes({ "category_ids" => juegos_category._id })
instrumento_product.update_attributes({ "category_ids" => instrumentos_category._id })
instrumento2_product.update_attributes({ "category_ids" => instrumentos_category._id })

#
# Creación de Vendedores (Seller)
#
sellers = []

(1..5).each do |s|
  s = Seller.new(first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.email,
    banned: false,
    password: password,
    password_confirmation: password_confirmation,
    active: true)
  sellers.push(s)
end

sellers[0].company_name = 'Librerías Yenny'
sellers[0].web = 'http://www.yenny.com.ar/'
sellers[0].active = active
sellers[0].email= 'yenny@yenny.com'
sellers[0].save
sellers[1].company_name = 'Librería Cúspide'
sellers[1].web = 'http://www.cuspide.com.ar/'
sellers[1].active = active
sellers[1].save
sellers[2].company_name = 'Adidas'
sellers[2].web = 'www.adidas.com.ar'
sellers[2].active = active
sellers[2].save
sellers[3].company_name = 'Stock Center'
sellers[3].web = 'www.stockcenter.com.ar'
sellers[3].active = active
sellers[3].save
sellers[4].company_name = 'Apio Verde'
sellers[4].web = 'www.apioverde.com'
sellers[4].active = active
sellers[4].save


#
# Creación de Productos Vendedor (Selling Product)
#
sellers[0].selling_products = []
libro_yenny = SellingProduct.new(price: 65)
libro_yenny.product  = libro_product
sellers[0].selling_products << libro_yenny
libro_yenny.save

libro_yenny2 = SellingProduct.new(price: 70)
libro_yenny2.product  = libro_product2
sellers[0].selling_products << libro_yenny2
libro_yenny2.save

libro_yenny3 = SellingProduct.new(price: 75)
libro_yenny3.product  = libro_product3
sellers[0].selling_products << libro_yenny3
libro_yenny3.save

libro_yenny4 = SellingProduct.new(price: 72)
libro_yenny4.product  = libro_product4
sellers[0].selling_products << libro_yenny4
libro_yenny4.save

libro_yenny5 = SellingProduct.new(price: 82)
libro_yenny5.product  = libro_product5
sellers[0].selling_products << libro_yenny5
libro_yenny5.save


libro_yenny6 = SellingProduct.new(price: 85)
libro_yenny6.product  = libro_product6
sellers[0].selling_products << libro_yenny6
libro_yenny6.save

libro_yenny7 = SellingProduct.new(price: 90)
libro_yenny7.product  = libro_product7
sellers[0].selling_products << libro_yenny7
libro_yenny7.save

libro_cuspide = SellingProduct.new(price: 60)
libro_cuspide.product  = libro_product
sellers[1].selling_products << libro_cuspide
libro_cuspide.save

pelota_adidas = SellingProduct.new(price: 128)
pelota_adidas.product  = pelota_product
sellers[2].selling_products << pelota_adidas
pelota_adidas.save

pelota_stockcenter = SellingProduct.new(price: 132)
pelota_stockcenter.product  = pelota_product
sellers[3].selling_products << pelota_stockcenter
pelota_stockcenter.save

juego_apioverde = SellingProduct.new(price: 132)
juego_apioverde.product  = juegos_product
sellers[4].selling_products << juego_apioverde
juego_apioverde.save

## Users
rand = Random.new
print "Creating 100 users..."
100.times do
  u = User.new
  u.first_name = Faker::Name.first_name
  u.last_name = Faker::Name.last_name
  u.email = Faker::Internet.email
  u.password = password
  u.password_confirmation = password_confirmation
  u.active = active
  u.banned = banned
  u.wishlist = []
  u.wishlist << Product.all.entries[rand.rand(10)]
  u.wishlist << Product.all.entries[rand.rand(10)]
  gift = Gift.new
  gift.product = Product.all[rand.rand(10)]
  gift.score = rand.rand(10)
  u.gifts = [gift]
  u.save
end
puts "done."

#
# Creación de Administradores
#
puts "Creando aministradores..."
puts "Vero"
a = Admin.new
a.username = 'v.crespi'
a.password = 'password'
a.password_confirmation = 'password'

a.save

puts "Sacha"
a = Admin.new
a.username = 's.lifzsyc'
a.password = 'password'
a.password_confirmation = 'password'

a.save

puts "Fer"
a = Admin.new
a.username = 'f.nino'
a.password = 'password'
a.password_confirmation = 'password'

a.save

puts "Joaco"
a = Admin.new
a.username = 'joaquinpb'
a.password = 'password'
a.password_confirmation = 'password'

a.save
puts "done"


sach = User.new
sach.first_name = 'Sacha'
sach.last_name = 'Lifszyc'
sach.email = 'sacha.lifszyc@gmail.com'
sach.password = '12345678'
sach.password_confirmation = '12345678'
sach.active = active
sach.banned = banned
sach.wishlist = []
#sach.wishlist << Product.all.entries[rand.rand(10)]
#sach.wishlist << Product.all.entries[rand.rand(10)]
gift = Gift.new
#gift.product = Product.all[rand.rand(10)]
#gift.score = rand.rand(10)
#sach.gifts = [gift]
sach.birthday = rand(20.years).ago
sach.save

fer = User.new
fer.first_name = 'Fernando'
fer.last_name = 'Niño'
fer.email = 'nino.fernando@gmail.com'
fer.password = 'password'
fer.password_confirmation = 'password'
fer.active = active
fer.banned = banned
fer.wishlist = []
#fer.wishlist << Product.all.entries[rand.rand(10)]
#fer.wishlist << Product.all.entries[rand.rand(10)]
gift = Gift.new
#gift.product = Product.all[rand.rand(10)]
#gift.score = rand.rand(10)
#fer.gifts = [gift]
fer.birthday = rand(20.years).ago
fer.save

joaquincito = User.new
joaquincito.first_name = 'Joaquín'
joaquincito.last_name = 'Perez Bay'
joaquincito.email = 'joaquinperezbay@gmail.com'
joaquincito.password = '12345678'
joaquincito.password_confirmation = '12345678'
joaquincito.active = active
joaquincito.banned = banned
joaquincito.wishlist = []
#joaquincito.wishlist << Product.all.entries[rand.rand(10)]
#joaquincito.wishlist << Product.all.entries[rand.rand(10)]
gift = Gift.new
#gift.product = Product.all[rand.rand(10)]
#gift.score = rand.rand(10)
#joaquincito.gifts = [gift]
joaquincito.birthday = rand(20.years).ago
joaquincito.save

vero = User.new
vero.first_name = 'Verónica'
vero.last_name = 'Crespi'
vero.email = 'crespi.veronica@gmail.com'
vero.password = '12345678'
vero.password_confirmation = '12345678'
vero.active = active
vero.banned = banned
vero.wishlist = []
#vero.wishlist << Product.all.entries[rand.rand(10)]
#vero.wishlist << Product.all.entries[rand.rand(10)]
gift = Gift.new
#gift.product = Product.all[rand.rand(10)]
#gift.score = rand.rand(10)
#vero.gifts = [gift]
vero.birthday = rand(20.years).ago
vero.save
