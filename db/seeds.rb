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
print "Creating categories..."
#
autos_category = Category.new(name: 'Autos', description: 'Automóviles')
accesorios_vehiculos_category = Category.new(name: 'Accesorios para vehículos', description: 'Accesorios para autos, motos, audio, tuning')
repuestos_autos_category = Category.new(name: 'Accesorios para autos', description: '')
accesorios_motos_category = Category.new(name: 'Accesorios para motos', description: 'Indumentaria para motos, Cascos para motos, Lingas y candados para motos, Respuestos para motos')
indumentaria_motos_category = Category.new(name: 'Indumentaria para motos', description: '')
repuestos_motos_category = Category.new(name: 'Respuestos para motos', description: '')
audio_vehiculos_category = Category.new(name: 'Audio para vehículos', description: 'Stereos con CD, Stereos con MP3, Stereos con USB, Subwoofers, Cargadores de MP3, Cargadores de celulares')
volantes_category = Category.new(name: 'Volantes para autos', description: '')
polarizado_category = Category.new(name: 'Polarizado para autos', description: '')
mascotas_category = Category.new(name: 'Mascotas', description: 'Aves, conejos, gatos, peces, perros, roedores')
aves_category = Category.new(name: 'Aves', description: 'Alimento para aves, Jaulas para aves')
conejos_category = Category.new(name: 'Conejos', description: 'Conejos, Jaulas para conejos')
gatos_category = Category.new(name: 'Gatos', description: 'Gatos, Accesorios para gatos, Alimento para gatos, Juguetes para gatos, Cuchas y transportadoras para gatos, Piedas sanitarias para gatos')
peces_category = Category.new(name: 'Peces', description: 'Peces, Accesorios para peceras, Peceras, Alimento para peces')
perros_category = Category.new(name: 'Perros', description: 'Perros, Alimento para perros, Correas para perros, Juguetes para perros, Adiestramiento para perros, Vestimenta para perros')
roedores_category = Category.new(name: 'Roedores', description: 'Cobayos, Hámsters')
antiguedades_category = Category.new(name: 'Antigüedades', description: 'Muebles, ornamentos, cristaleria, cámaras de fotos')
audio_antiguo_category = Category.new(name: 'Audio antiguo', description: 'Discos de pasta, grabadores, radios, tocadiscots, vitrolas')
cristaleria_antigua_category = Category.new(name: 'Cristaleria antigua', description: 'Botellas, ceniceros, centros de mesa, copas, floreros, fruteras, jarras, vasos')
camaras_antiguas_category = Category.new(name: 'Cámaras antiguas', description: 'Cámaras de fotos antiguas')
iluminacion_antigua_category = Category.new(name: 'Iluminación antigua', description: 'Apliques, arañas, cadelabros, faroles, plafones, veladores')
juguetes_antiguos_category = Category.new(name: 'Juguetes antiguos', description: 'Animalitos y peluches, armas de juguete, juegos, muebles para muñecas, muñecas de porcelana, robots, soldaditos, trenes, vehículos, yoyos y trompos')
muebles_antiguos_category = Category.new(name: 'Muebles antiguos', description: 'Aparadores, banquetas, bares, bargueños, baúles, bibliotecas, cómodas, consolas, cristaleros, mesas, percheros, puertas y herrajes, repisas, roperos, sillas, sillones, vitrinas')
maquinas_de_escribir_antiguas_category = Category.new(name: 'Máquinas de escribir antiguas', description: 'Máquinas de escribir antiguas')
libros_category = Category.new(name: 'Libros', description: 'Novelas, ciencia, comics')
juegos_category = Category.new(name: 'Juegos', description: 'TEG, Juego de la Vida, Monopoly y otros clásicos')
arte_artesanias_category = Category.new(name: 'Arte y Artesanías', description: 'Artesanías, esculturas, libros, materiales para tatuajes, souvenirs')
materiales_para_tatuajes_category = Category.new(name: 'Materiales para tatuajes', description: 'Tintas, equipos de tatuaje, Stencils, Kits')
souvenirs_category = Category.new(name: 'Souvenirs', description: '15 años, bautimos, casamientos, comuniones, cumpleaños infantiles, empresariales, nacimientos')
bebes_category = Category.new(name: 'Bebés', description: 'Alimentos, andadores, arneses para autos, artículos de bebés para baño, embarazadas, cochecitos, juguetes, pañales y pañaleras, recuerdos, ropa, seguridad, sillas de comer')
articulos_embarazadas_category = Category.new(name: 'Artículos para embarazadas', description: 'Todo para la mujer embarazada')
juguetes_bebes_category = Category.new(name: 'Juguetes para bebés', description: 'Cubos, gimnasios, libros didácticos, mantas, mecedoras, hamacas, mesas y sillas, móviles, musicales, muñecos, ositos y peluches, pelotas, sonajeros')
seguridad_bebes_category = Category.new(name: 'Seguridad para bebés', description: 'Arneses, baby calls, mochilas y porta bebés, mostuiteros, pisos de goma, puertas de seguridad')
camaras_accesorios_category = Category.new(name: 'Cámaras y accesorios', description: 'Cámaras digitales, polaroid y a rollo, memorias, baterías, pilas y cargadores.')
accesorios_camaras_category = Category.new(name: 'Accesorios para cámaras', description: 'Accesorios ópticos, bolsos, fundas, correas, cables, controles remotos, displayas, films protectores, filtros flashes e iluminación, toómetros, lectores de tarjetas, rollos, trípodes, monopies')
laboratorios_category = Category.new(name: 'Laboratorios para revelado', description: 'Kioskos digitales, mini labs, papéles fotográficos')
portarretratos_albumes_category = Category.new(name: 'Portarretratos y álbumes', description: 'Álbumes, llaveros, portarretratos convecionales y digitales')
videocamaras_category = Category.new(name: 'Videocámaras', description: 'Cámaras filmadoras análogicas y digitales, profesionales y convencionales')
accesorios_celulares_category = Category.new(name: 'Accesorios para celulares', description: 'Adaptadores, amplificadores, antenas, baterias, cables, carcasas, cargadores, colgantes y correas, holders y fundas, manos libres, memorias, parlantes, protectores de pantallas, soportes para autos')
celulares_category = Category.new(name: 'Celulares', description: 'Todas las marcas')
telefonia_IP_category = Category.new(name: 'Telefonía IP', description: 'Gateways, planes, routers')
telefonia_convencional_category = Category.new(name: 'Telefonía convencional', description: 'Aceesorios, caller ID, contestadores, telefónos con cables, teléfonos inalámbricos')
tablets_category = Category.new(name: 'Tablets', description: 'MAC, Hacer, Archos, BlackBerry playbook, Kindle, Motorola, Samsung, Titan')
pcs_portatiles_category = Category.new(name: 'PC y Portátiles', description: 'Con y sin monitor, portátiles notebooks y netbooks')
software_category = Category.new(name: 'Software', description: 'Aplicaciones comerciales, juegos, seguridad, antivirus')
hardware_category = Category.new(name: 'Hardware', description: 'Memorias RAM, procesadores, lectoras (CD/DVD/Bluray), PenDrives, fuentes, UPS, estabilizadores, impresoras')
consolas_videojuegos_retro_category = Category.new(name: 'Consolas y juegos retro', description: 'Consolas y juegos retro')
consolas_category = Category.new(name: 'Consolas de videojuegos', description: 'GameCube, Playstation 1 2 y 3, Nintendo 3DS, Nintendo Ds, Xbox y Xbox 360, Wii, GameBoy')
joysticks_category = Category.new(name: 'Joysticks', description: '')
videojuegos_category = Category.new(name: 'Videojuegos', description: 'GameCube, Playstation 1 2 y 3, Nintendo 3DS, Nintendo Ds, Xbox y Xbox 360, Wii')
bodegas_category = Category.new(name: 'Bodegas', description: 'Muebles, wine sellars')
bebidas_alcoholicas_category = Category.new(name: 'Bebidas alcoholicas', description: 'Bebidas blancas, vinos, fernets, licores, champagnes, whiskys')
energizantes_category = Category.new(name: 'Energizantes', description: '')
cigarros_pipas_category = Category.new(name: 'Cigarros y pipas', description: 'Cigarros, habanos, humidores, narguiles, pipas')
deportes_category = Category.new(name: 'Accesorios para deportes', description: 'Accesorios para aerobics, fitness, artes marciales, básquet, ciclismo, fútbol, fútbol americano, gold, handball, Hockey, tennis, paddle, squash, pulsómetros, cronómetros')
indumentaria_deportiva_category = Category.new(name: 'Indumentaria Deportiva', description: 'Indumentaria para aerobics, fitness, artes marciales, básquet, ciclismo, fútbol, fútbol americano, gold, handball, Hockey, tennis, paddle, squash, pulsómetros, cronómetros')
calazado_deportivo_category = Category.new(name: 'Calzado deportivo', description: 'Calzado para aerobics, fitness, artes marciales, básquet, ciclismo, fútbol, fútbol americano, gold, handball, Hockey, tennis, paddle, squash, pulsómetros, cronómetros')
accesorios_audio_category = Category.new(name: 'Accesorios para audio', description: 'Cables, adaptadores, antenas, conversores')
equipos_audio_category = Category.new(name: 'Equipos de audio', description: 'Reproductores, equipos para DJ, home theater')
accesorios_video_category = Category.new(name: 'Accesorios para video', description: 'Lentes 3D')
equipos_video_category = Category.new(name: 'Equipos de video', description: 'Lectograbadores CD, DVD, Bluray, videocaseteras')
televisores_category = Category.new(name: 'Televisores', description: '')
gps_category = Category.new(name: 'GPS', description: '')
entradas_eventos_category = Category.new(name: 'Entradas para eventos', description: 'Eventos deportivos, eventos finalizados, recitales, teatro')
instrumentos_musicales_category = Category.new(name: 'Intrumentos musicales', description: 'Bajos, instrumentos de percusión, instrumentos de cuerdas, instrumentos de viento')
accesorios_musica_category = Category.new(name: 'Accesorios para música', description: 'Amplificadores, consolas de sonido, efectos de sonido, micrófonos, pies, parlantes')
guitarras_category = Category.new(name: 'Guitarras', description: 'Criollas, eléctricas')
pianos_category = Category.new(name: 'Pianos', description: 'Teclados y pianos')
baterias_category = Category.new(name: 'Baterías', description: '')
juguetes_mujer_category = Category.new(name: 'Juguetes para mujer', description: '')
juguetes_hombre_category = Category.new(name: 'Juguetes para hombre', description: '')
peliculas_series_category = Category.new(name: 'Películas series', description: 'Merchandising y DVD/Bluray')
musica_pop_category = Category.new(name: 'Música Pop', description: '')
musica_rock_category = Category.new(name: 'Música Rock', description: '')
musica_punk_category = Category.new(name: 'Música Punk', description: '')
musica_folk_category = Category.new(name: 'Música Folk', description: '')
musica_electronica_category = Category.new(name: 'Música Electrónica', description: '')
musica_raggae_category = Category.new(name: 'Música Raggae', description: '')
salud_category = Category.new(name: 'Salud', description: 'Cuidados del cuerpo, dietas')
relajacion_category = Category.new(name: 'Relajación', description: 'Spa, masajes')
ropa_mujer_category = Category.new(name: 'Ropa de mujer', description: '')
ropa_hombre_category = Category.new(name: 'Ropa de hombre', description: '')

puts "done."

#
# Guardar Categorías
print "Saving categories..."
#

accesorios_vehiculos_category.save
repuestos_autos_category.save
accesorios_motos_category.save
indumentaria_motos_category.save
repuestos_motos_category.save
audio_vehiculos_category.save
volantes_category.save
polarizado_category.save
mascotas_category.save
aves_category.save
conejos_category.save
gatos_category.save
peces_category.save
perros_category.save
roedores_category.save
antiguedades_category.save
audio_antiguo_category.save
cristaleria_antigua_category.save
camaras_antiguas_category.save
iluminacion_antigua_category.save
juguetes_antiguos_category.save
muebles_antiguos_category.save
maquinas_de_escribir_antiguas_category.save
libros_category.save
juegos_category.save
arte_artesanias_category.save
materiales_para_tatuajes_category.save
souvenirs_category.save
bebes_category.save
articulos_embarazadas_category.save
juguetes_bebes_category.save
seguridad_bebes_category.save
camaras_accesorios_category.save
accesorios_camaras_category.save
laboratorios_category.save
portarretratos_albumes_category.save
videocamaras_category.save
accesorios_celulares_category.save
celulares_category.save
telefonia_IP_category.save
telefonia_convencional_category.save
tablets_category.save
pcs_portatiles_category.save
software_category.save
hardware_category.save
consolas_videojuegos_retro_category.save
consolas_category.save
joysticks_category.save
videojuegos_category.save
bodegas_category.save
bebidas_alcoholicas_category.save
energizantes_category.save
cigarros_pipas_category.save
deportes_category.save
indumentaria_deportiva_category.save
calazado_deportivo_category.save
accesorios_audio_category.save
equipos_audio_category.save
accesorios_video_category.save
equipos_video_category.save
televisores_category.save
gps_category.save
entradas_eventos_category.save
instrumentos_musicales_category.save
accesorios_musica_category.save
guitarras_category.save
pianos_category.save
baterias_category.save
juguetes_mujer_category.save
juguetes_hombre_category.save
peliculas_series_category.save
musica_pop_category.save
musica_rock_category.save
musica_punk_category.save
musica_folk_category.save
musica_electronica_category.save
musica_raggae_category.save
salud_category.save
relajacion_category.save
ropa_mujer_category.save
ropa_hombre_category.save

puts "done."

#
# Creación de Productos (Product)
print "Creating products..."
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

puts "done."

#
# Asociación Categoría-Producto
print "Asociating categories to products..."
#
pelota_product.update_attributes({ "category_ids" => deportes_category._id })
libro_product.update_attributes({ "category_ids" => libros_category._id })
libro_product2.update_attributes({ "category_ids" => libros_category._id })
libro_product3.update_attributes({ "category_ids" => libros_category._id })
libro_product4.update_attributes({ "category_ids" => libros_category._id })
libro_product5.update_attributes({ "category_ids" => libros_category._id })
libro_product6.update_attributes({ "category_ids" => libros_category._id })
libro_product7.update_attributes({ "category_ids" => libros_category._id })
pelicula_product.update_attributes({ "category_ids" => peliculas_series_category._id})
mascota_product.update_attributes({ "category_ids" => mascotas_category._id})
autos_product.update_attributes({ "category_ids" => autos_category._id  })
computacion_product.update_attributes({ "category_ids" => pcs_portatiles_category._id })
celular_product.update_attributes({ "category_ids" => celulares_category._id })
juegos_product.update_attributes({ "category_ids" => juegos_category._id })
instrumento_product.update_attributes({ "category_ids" => guitarras_category._id })
instrumento2_product.update_attributes({ "category_ids" => baterias_category._id })

puts "done."

#
# Creación de Vendedores (Seller)
print "Creating sellers..."
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

puts "done."

#
# Creación de Productos Vendedor (Selling Product)
print "Asociating products with sellers..."
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

puts "done."

## Users
rand = Random.new

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
  u.birthday = rand(25.years).ago
  u.wishlist = []
  u.wishlist << Product.all.entries[rand.rand(10)]
  u.wishlist << Product.all.entries[rand.rand(10)]
  gift = Gift.new
  gift.product = Product.all[rand.rand(10)]
  gift.score = rand.rand(10)
  u.gifts = [gift]
  u.save
  fr = FriendRequest.new
  fr.owner = fer
  fr.friend = u
  fr.accepted = true
  fr.save
end
puts "done."

fer.save
