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
    password: password,
    password_confirmation: password_confirmation)
  sellers.push(s)
end

sellers[0].company_name = 'Librerías Yenny'
sellers[0].web = 'http://www.yenny.com.ar/'
sellers[0].save
sellers[1].company_name = 'Librería Cúspide'
sellers[1].web = 'http://www.cuspide.com.ar/'
sellers[1].save
sellers[2].company_name = 'Adidas'
sellers[2].web = 'www.adidas.com.ar'
sellers[2].save
sellers[3].company_name = 'Stock Center'
sellers[3].web = 'www.stockcenter.com.ar'
sellers[3].save
sellers[4].company_name = 'Apio Verde'
sellers[4].web = 'www.apioverde.com'
sellers[4].save


#
# Creación de Productos Vendedor (Selling Product)
#
libro_yenny = SellingProduct.new(price: 65)
libro_yenny.update_attributes({ "seller" => sellers[0]._id })
libro_yenny.update_attributes({ "product" => libro_product._id })

libro_cuspide = SellingProduct.new(price: 60)
libro_cuspide.update_attributes({ "seller" => sellers[1]._id })
libro_cuspide.update_attributes({ "product" => libro_product._id })

pelota_adidas = SellingProduct.new(price: 128)
pelota_adidas.update_attributes({ "seller" => sellers[2]._id })
pelota_adidas.update_attributes({ "product" => pelota_product._id })

pelota_stockcenter = SellingProduct.new(price: 132)
pelota_stockcenter.update_attributes({ "seller" => sellers[3]._id })
pelota_stockcenter.update_attributes({ "product" => pelota_product._id })

juego_apioverde = SellingProduct.new(price: 132)
juego_apioverde.update_attributes({ "seller" => sellers[4]._id })
juego_apioverde.update_attributes({ "product" => juegos_product._id })




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