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

# Accesorios para vehiculos
accesorios_vehiculos_category = Category.new(name: 'Accesorios para vehículos', description: 'Accesorios para autos, motos, audio, tuning')
accesorios_autos_category = Category.new(name: 'Accesorios para autos', description: 'Accesorios para el interior del auto, Accesorios para el exterior del auto, Repuestos para autos')
accesorios_autos_interior_category = Category.new(name: 'Accesorios para el interior del auto', description: '')
accesorios_autos_exterior_category = Category.new(name: 'Accesorios para el exterior del auto', description: '')
repuestos_autos_category = Category.new(name: 'Accesorios para autos', description: '')
accesorios_motos_category = Category.new(name: 'Accesorios para motos', description: 'Indumentaria para motos, Cascos para motos, Lingas y candados para motos, Respuestos para motos')
indumentaria_motos_category = Category.new(name: 'Indumentaria para motos', description: '')
cascos_motos_category = Category.new(name: 'Cascos para motos', description: '')
lingas_motos_category = Category.new(name: 'Lingas y candados para motos', description: '')
repuestos_motos_category = Category.new(name: 'Respuestos para motos', description: '')
audio_vehiculos_category = Category.new(name: 'Audio para vehículos', description: 'Stereos con CD, Stereos con MP3, Stereos con USB, Subwoofers, Cargadores de MP3, Cargadores de celulares')
mp3_vehiculos_category = Category.new(name: 'Stereos con MP3', description: '')
usb_vehiculos_category = Category.new(name: 'Stereos con USB', description: '')
cd_vehiculos_category = Category.new(name: 'Stereos con CD', description: '')
subwoofer_vehiculos_category = Category.new(name: 'Subwoofers', description: '')
carg_mp3_vehiculos_category = Category.new(name: 'Cargadores de MP3', description: '')
carg_cel_vehiculos_category = Category.new(name: 'Cargadores de celulares', description: '')
tuning_category = Category.new(name: 'Tuning para autos', description: '')
volantes_category = Category.new(name: 'Volantes para autos', description: '')
cromados_category = Category.new(name: 'Cromados para autos', description: '')
polarizado_category = Category.new(name: 'Polarizado para autos', description: '')

mascotas_category = Category.new(name: 'Mascotas', description: 'Aves, conejos, gatos, peces, perros, roedores')
aves_category = Category.new(name: 'Aves', description: 'Alimento para aves, Jaulas para aves')
alimento_aves_category = Category.new(name: 'Alimento para aves', description: '')
jaula_aves_category = Category.new(name: 'Jaula para aves', description: '')
conejos_category = Category.new(name: 'Conejos', description: 'Conejos, Jaulas para conejos')
jaula_conejos_category = Category.new(name: 'Jaulas para conejos', description: '')
gatos_category = Category.new(name: 'Gatos', description: 'Gatos, Accesorios para gatos, Alimento para gatos, Juguetes para gatos, Cuchas y transportadoras para gatos, Piedas sanitarias para gatos')
accesorios_gatos_category = Category.new(name: 'Accesorios para gatos', description: '')
alimento_gatos_category = Category.new(name: 'Alimento para gatos', description: '')
juguetes_gatos_category = Category.new(name: 'Juguetes para gatos', description: '')
cuchas_gatos_category = Category.new(name: 'Cuchas y transportadoras para gatos', description: '')
piedras_gatos_category = Category.new(name: 'Piedras sanitarias para gatos', description: '')
peces_category = Category.new(name: 'Peces', description: 'Peces, Accesorios para peceras, Peceras, Alimento para peces')
accesorios_peces_category = Category.new(name: 'Accesorios para peces', description: '')
peceras_category = Category.new(name: 'Peceras', description: '')
alimento_peces_category = Category.new(name: 'Alimento para peces', description: '')
perros_category = Category.new(name: 'Perros', description: 'Perros, Alimento para perros, Correas para perros, Juguetes para perros, Adiestramiento para perros, Vestimenta para perros')
alimento_perros_category = Category.new(name: 'Alimento para perros', description: '')
correas_perros_category = Category.new(name: 'Correas para perros', description: '')
juguetes_perros_category = Category.new(name: 'Juguetes para perros', description: '')
adiestramiento_perros_category = Category.new(name: 'Adiestramiento para perros', description: '')
vestimenta_perros_category = Category.new(name: 'Vestimenta para perros', description: '')
roedores_category = Category.new(name: 'Roedores', description: 'Cobayos, Hámsters')
cobayos_category = Category.new(name: 'Cobayos', description: '')
hamsters_category = Category.new(name: 'Hámsters', description: '')

_category = Category.new(name: '', description: '')
_category = Category.new(name: '', description: '')
_category = Category.new(name: '', description: '')
_category = Category.new(name: '', description: '')
_category = Category.new(name: '', description: '')


deportes_category = Category.new(name: 'Deportes', description: 'Productos para entrenamiento y fitness')
libros_category = Category.new(name: 'Libros', description: 'Novelas, ciencia, comics')
peliculas_category = Category.new(name: 'Películas', description: 'De Chaplin a Avatar')
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
libro_yenny = SellingProduct.new
libro_yenny.product  = libro_product
sellers[0].selling_products << libro_yenny
libro_yenny.price = 65
libro_yenny.save

libro_yenny2 = SellingProduct.new
libro_yenny2.product  = libro_product2
sellers[0].selling_products << libro_yenny2
libro_yenny2.price = 70
libro_yenny2.save

libro_yenny3 = SellingProduct.new
libro_yenny3.product  = libro_product3
sellers[0].selling_products << libro_yenny3
libro_yenny3.price = 75
libro_yenny3.save

libro_yenny4 = SellingProduct.new
libro_yenny4.product  = libro_product4
sellers[0].selling_products << libro_yenny4
libro_yenny4.price = 72
libro_yenny4.save

libro_yenny5 = SellingProduct.new
libro_yenny5.product  = libro_product5
sellers[0].selling_products << libro_yenny5
libro_yenny5.price = 82
libro_yenny5.save

libro_yenny6 = SellingProduct.new
libro_yenny6.product  = libro_product6
sellers[0].selling_products << libro_yenny6
libro_yenny6.price = 85
libro_yenny6.save

libro_yenny7 = SellingProduct.new
libro_yenny7.product  = libro_product7
sellers[0].selling_products << libro_yenny7
libro_yenny7.price = 90
libro_yenny7.save

libro_cuspide = SellingProduct.new
libro_cuspide.product  = libro_product
sellers[1].selling_products << libro_cuspide
libro_cuspide.price = 60
libro_cuspide.save

pelota_adidas = SellingProduct.new
pelota_adidas.product  = pelota_product
sellers[2].selling_products << pelota_adidas
pelota_adidas.price = 128
pelota_adidas.save

pelota_stockcenter = SellingProduct.new
pelota_stockcenter.product  = pelota_product
sellers[3].selling_products << pelota_stockcenter
pelota_stockcenter.price = 123
pelota_stockcenter.save

juego_apioverde = SellingProduct.new
juego_apioverde.product  = juegos_product
sellers[4].selling_products << juego_apioverde
juego_apioverde.price = 132
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
sach.wishlist << Product.all.entries[rand.rand(10)]
sach.wishlist << Product.all.entries[rand.rand(10)]
gift = Gift.new
gift.product = Product.all[rand.rand(10)]
gift.score = rand.rand(10)
sach.gifts = [gift]
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
fer.wishlist << Product.all.entries[rand.rand(10)]
fer.wishlist << Product.all.entries[rand.rand(10)]
gift = Gift.new
gift.product = Product.all[rand.rand(10)]
gift.score = rand.rand(10)
fer.gifts = [gift]
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
joaquincito.wishlist << Product.all.entries[rand.rand(10)]
joaquincito.wishlist << Product.all.entries[rand.rand(10)]
gift = Gift.new
gift.product = Product.all[rand.rand(10)]
gift.score = rand.rand(10)
joaquincito.gifts = [gift]
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
vero.wishlist << Product.all.entries[rand.rand(10)]
vero.wishlist << Product.all.entries[rand.rand(10)]
gift = Gift.new
gift.product = Product.all[rand.rand(10)]
gift.score = rand.rand(10)
vero.gifts = [gift]
vero.birthday = rand(20.years).ago
vero.save
