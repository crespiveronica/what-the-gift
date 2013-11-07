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

autos_category = Category.new(name: 'Automovilismo', description: 'Automóviles', show_in_menu: true)
accesorios_autos_category = Category.new(name: 'Accesorios para autos', description: 'Accesorios para autos, audio y tuning')
repuestos_autos_category = Category.new(name: 'Repuestos para autos', description: 'Todos los accesorios para tu Automóvil')
accesorios_motos_category = Category.new(name: 'Accesorios para motos', description: 'Indumentaria para motos, Cascos para motos, Lingas y candados para motos, Respuestos para motos')
indumentaria_motos_category = Category.new(name: 'Indumentaria para motos', description: '')
audio_vehiculos_category = Category.new(name: 'Audio para vehículos', description: 'Stereos con CD, Stereos con MP3, Stereos con USB, Subwoofers, Cargadores de MP3, Cargadores de celulares')
volantes_category = Category.new(name: 'Volantes para autos', description: '')
polarizado_category = Category.new(name: 'Polarizado para autos', description: '')
mascotas_category = Category.new(name: 'Mascotas', description: 'Aves, conejos, gatos, peces, perros, roedores', show_in_menu: true)
aves_category = Category.new(name: 'Aves', description: 'Alimento para aves, Jaulas para aves')
conejos_category = Category.new(name: 'Conejos', description: 'Conejos, Jaulas para conejos')
gatos_category = Category.new(name: 'Gatos', description: 'Gatos, Accesorios para gatos, Alimento para gatos, Juguetes para gatos, Cuchas y transportadoras para gatos, Piedas sanitarias para gatos')
peces_category = Category.new(name: 'Peces', description: 'Peces, Accesorios para peceras, Peceras, Alimento para peces')
perros_category = Category.new(name: 'Perros', description: 'Perros, Alimento para perros, Correas para perros, Juguetes para perros, Adiestramiento para perros, Vestimenta para perros')
roedores_category = Category.new(name: 'Roedores', description: 'Cobayos, Hámsters')
antiguedades_category = Category.new(name: 'Antigüedades', description: 'Muebles, ornamentos, cristaleria, cámaras de fotos', show_in_menu: true)
audio_antiguo_category = Category.new(name: 'Audio antiguo', description: 'Discos de pasta, grabadores, radios, tocadiscots, vitrolas')
cristaleria_antigua_category = Category.new(name: 'Cristaleria antigua', description: 'Botellas, ceniceros, centros de mesa, copas, floreros, fruteras, jarras, vasos')
camaras_antiguas_category = Category.new(name: 'Cámaras antiguas', description: 'Cámaras de fotos antiguas')
iluminacion_antigua_category = Category.new(name: 'Iluminación antigua', description: 'Apliques, arañas, cadelabros, faroles, plafones, veladores')
juguetes_antiguos_category = Category.new(name: 'Juguetes antiguos', description: 'Animalitos y peluches, armas de juguete, juegos, muebles para muñecas, muñecas de porcelana, robots, soldaditos, trenes, vehículos, yoyos y trompos')
muebles_antiguos_category = Category.new(name: 'Muebles antiguos', description: 'Aparadores, banquetas, bares, bargueños, baúles, bibliotecas, cómodas, consolas, cristaleros, mesas, percheros, puertas y herrajes, repisas, roperos, sillas, sillones, vitrinas')
maquinas_de_escribir_antiguas_category = Category.new(name: 'Máquinas de escribir antiguas', description: 'Máquinas de escribir antiguas')
libros_category = Category.new(name: 'Libros', description: 'Novelas, ciencia, comics', show_in_menu: true)
juegos_de_mesa_category = Category.new(name: 'Juegos', description: 'TEG, Juego de la Vida, Monopoly y otros clásicos')
arte_artesanias_category = Category.new(name: 'Arte y Artesanías', description: 'Artesanías, esculturas, libros, materiales para tatuajes, souvenirs')
materiales_para_tatuajes_category = Category.new(name: 'Materiales para tatuajes', description: 'Tintas, equipos de tatuaje, Stencils, Kits')
souvenirs_category = Category.new(name: 'Souvenirs', description: '15 años, bautimos, casamientos, comuniones, cumpleaños infantiles, empresariales, nacimientos')
bebes_category = Category.new(name: 'Bebés', description: 'Alimentos, andadores, arneses para autos, artículos de bebés para baño, embarazadas, cochecitos, juguetes, pañales y pañaleras, recuerdos, ropa, seguridad, sillas de comer')
articulos_embarazadas_category = Category.new(name: 'Artículos para embarazadas', description: 'Todo para la mujer embarazada')
juguetes_bebes_category = Category.new(name: 'Juguetes para bebés', description: 'Cubos, gimnasios, libros didácticos, mantas, mecedoras, hamacas, mesas y sillas, móviles, musicales, muñecos, ositos y peluches, pelotas, sonajeros')
seguridad_bebes_category = Category.new(name: 'Seguridad para bebés', description: 'Arneses, baby calls, mochilas y porta bebés, mostuiteros, pisos de goma, puertas de seguridad')
camaras_accesorios_category = Category.new(name: 'Fotografía', description: 'Cámaras digitales, polaroid y a rollo, memorias, baterías, pilas y cargadores.', show_in_menu: true)
accesorios_camaras_category = Category.new(name: 'Accesorios para cámaras', description: 'Accesorios ópticos, bolsos, fundas, correas, cables, controles remotos, displayas, films protectores, filtros flashes e iluminación, toómetros, lectores de tarjetas, rollos, trípodes, monopies')
laboratorios_category = Category.new(name: 'Laboratorios para revelado', description: 'Kioskos digitales, mini labs, papéles fotográficos')
portarretratos_albumes_category = Category.new(name: 'Portarretratos y álbumes', description: 'Álbumes, llaveros, portarretratos convecionales y digitales')
videocamaras_category = Category.new(name: 'Videocámaras', description: 'Cámaras filmadoras análogicas y digitales, profesionales y convencionales')
accesorios_celulares_category = Category.new(name: 'Accesorios para celulares', description: 'Adaptadores, amplificadores, antenas, baterias, cables, carcasas, cargadores, colgantes y correas, holders y fundas, manos libres, memorias, parlantes, protectores de pantallas, soportes para autos')
celulares_category = Category.new(name: 'Celulares', description: 'Todas las marcas', show_in_menu: true)
telefonia_category = Category.new(name: 'Telefonía', description: '')
tablets_category = Category.new(name: 'Tablets', description: 'MAC, Hacer, Archos, BlackBerry playbook, Kindle, Motorola, Samsung, Titan')
pcs_portatiles_category = Category.new(name: 'PC y Portátiles', description: 'Con y sin monitor, portátiles notebooks y netbooks', show_in_menu: true)
software_category = Category.new(name: 'Software', description: 'Aplicaciones comerciales, juegos, seguridad, antivirus')
hardware_category = Category.new(name: 'Hardware', description: 'Memorias RAM, procesadores, lectoras (CD/DVD/Bluray), PenDrives, fuentes, UPS, estabilizadores, impresoras')
consolas_videojuegos_retro_category = Category.new(name: 'Consolas y juegos retro', description: 'Consolas y juegos retro')
consolas_category = Category.new(name: 'Consolas de videojuegos', description: 'GameCube, Playstation 1 2 y 3, Nintendo 3DS, Nintendo Ds, Xbox y Xbox 360, Wii, GameBoy', show_in_menu: true)
joysticks_category = Category.new(name: 'Joysticks', description: '')
videojuegos_category = Category.new(name: 'Videojuegos', description: 'GameCube, Playstation 1 2 y 3, Nintendo 3DS, Nintendo Ds, Xbox y Xbox 360, Wii')
bodegas_category = Category.new(name: 'Bodegas', description: 'Muebles, wine sellars')
bebidas_alcoholicas_category = Category.new(name: 'Bebidas alcoholicas', description: 'Bebidas blancas, vinos, fernets, licores, champagnes, whiskys', show_in_menu: true)
energizantes_category = Category.new(name: 'Energizantes', description: '')
cigarros_pipas_category = Category.new(name: 'Cigarros y pipas', description: 'Cigarros, habanos, humidores, narguiles, pipas')
deportes_category = Category.new(name: 'Accesorios para deportes', description: 'Accesorios para aerobics, fitness, artes marciales, básquet, ciclismo, fútbol, fútbol americano, gold, handball, Hockey, tennis, paddle, squash, pulsómetros, cronómetros')
accesorios_audio_category = Category.new(name: 'Accesorios para audio', description: 'Cables, adaptadores, antenas, conversores')
equipos_audio_category = Category.new(name: 'Equipos de audio', description: 'Reproductores, equipos para DJ, home theater', show_in_menu: true)
accesorios_video_category = Category.new(name: 'Accesorios para video', description: 'Lentes 3D')
equipos_video_category = Category.new(name: 'Equipos de video', description: 'Lectograbadores CD, DVD, Bluray, videocaseteras')
televisores_category = Category.new(name: 'Televisores', description: '', show_in_menu: true)
gps_category = Category.new(name: 'GPS', description: '')
entradas_eventos_category = Category.new(name: 'Entradas para eventos', description: 'Eventos deportivos, eventos finalizados, recitales, teatro', show_in_menu: true)
instrumentos_musicales_category = Category.new(name: 'Intrumentos musicales', description: 'Bajos, instrumentos de percusión, instrumentos de cuerdas, instrumentos de viento', show_in_menu: true)
accesorios_musica_category = Category.new(name: 'Accesorios para música', description: 'Amplificadores, consolas de sonido, efectos de sonido, micrófonos, pies, parlantes')
guitarras_category = Category.new(name: 'Guitarras', description: 'Criollas, eléctricas')
pianos_category = Category.new(name: 'Pianos', description: 'Teclados y pianos')
baterias_category = Category.new(name: 'Baterías', description: '')
juguetes_mujer_category = Category.new(name: 'Juguetes para mujer', description: '')
juguetes_hombre_category = Category.new(name: 'Juguetes para hombre', description: '')
peliculas_series_category = Category.new(name: 'Películas series', description: 'Merchandising y DVD/Bluray')
musica_category = Category.new(name: 'Música', description: '', show_in_menu: true)
musica_alternativa_category = Category.new(name: 'Música alternativa', description: '')
musica_clasica_category = Category.new(name: 'Música de bandas sonoras', description: '')
musica_bandas_sonoras_category = Category.new(name: 'Música de bandas sonoras', description: '')
musica_blues_jazz_category = Category.new(name: 'Música blues y jazz', description: '')
musica_cumbia_cuarteto_category = Category.new(name: 'Música cumbia y cuarteto', description: '')
musica_dance_category = Category.new(name: 'Música dance', description: '')
musica_electronica_category = Category.new(name: 'Música electrónica', description: '')
musica_folklore_category = Category.new(name: 'Música folklore', description: '')
musica_funk_category = Category.new(name: 'Música funk', description: '')
musica_heavy_metal_category = Category.new(name: 'Música heavy metal', description: '')
musica_hip_hop_category = Category.new(name: 'Música hip hop', description: '')
musica_infantil_category = Category.new(name: 'Música instrumental', description: '')
musica_instrumental_category = Category.new(name: 'Música instrumental', description: '')
musica_karaoke_category = Category.new(name: 'Música karaoke', description: '')
musica_pop_category = Category.new(name: 'Música pop', description: '')
musica_ska_category = Category.new(name: 'Música ska', description: '')
musica_reggae_category = Category.new(name: 'Música reggae', description: '')
musica_nacional_category = Category.new(name: 'Música nacional', description: '')
musica_internacional_category = Category.new(name: 'Música internacional', description: '')
musica_tango_category = Category.new(name: 'Música tango', description: '')
salud_category = Category.new(name: 'Cuidado personal', description: 'Cuidados del cuerpo, dietas')
relajacion_category = Category.new(name: 'Relajación', description: 'Spa, masajes')
ropa_mujer_category = Category.new(name: 'Ropa de mujer', description: '')
ropa_hombre_category = Category.new(name: 'Ropa de hombre', description: '')
libro_novela_category = Category.new(name: 'Libros de novelas', description: '')
libro_suspenso_category = Category.new(name: 'Libros de suspenso', description: '')
libro_filosofia_category = Category.new(name: 'Libros de filosofía', description: '')
libro_infantiles_category = Category.new(name: 'Libros infantiles', description: '')
libro_arte_category = Category.new(name: 'Libros de arte', description: '')
libro_autoayuda_category = Category.new(name: 'Libros de autoayuda', description: '')
libro_ficcion_category = Category.new(name: 'Libros de ficción', description: '')
indumentaria_deportiva_category = Category.new(name: 'Indumentaria Deportiva', description: '', show_in_menu: true)
indumentaria_futbol_hombre_category = Category.new(name: 'Indumentaria de Fútbol (hombres)', description: '')
indumentaria_futbol_mujer_category = Category.new(name: 'Indumentaria de Fútbol (mujeres)', description: '')
indumentaria_basquet_hombre_category = Category.new(name: 'Indumentaria de Básquet (hombres)', description: '')
indumentaria_tenis_hombre_category = Category.new(name: 'Indumentaria de Tenis (hombres)', description: '')
indumentaria_tenis_mujer_category = Category.new(name: 'Indumentaria de Tenis (mujeres)', description: '')
indumentaria_golf_hombre_category = Category.new(name: 'Indumentaria de Golf (hombres)', description: '')
indumentaria_golf_mujer_category = Category.new(name: 'Indumentaria de Golf (mujeres)', description: '')
indumentaria_natacion_hombre_category = Category.new(name: 'Indumentaria de Natación (hombres)', description: '')
indumentaria_natacion_mujer_category = Category.new(name: 'Indumentaria de Natación (mujeres)', description: '')
indumentaria_hockey_hombre_category = Category.new(name: 'Indumentaria de Hockey (hombres)', description: '')
indumentaria_hockey_mujer_category = Category.new(name: 'Indumentaria de Hockey (mujeres)', description: '')
indumentaria_voley_hombre_category = Category.new(name: 'Indumentaria de Voley (hombres)', description: '')
indumentaria_voley_mujer_category = Category.new(name: 'Indumentaria de Voley (mujeres)', description: '')
juguetes_category =  Category.new(name: 'Juguetes', description: '', show_in_menu: true)
ropa_category = Category.new(name: 'Ropa', description: '', show_in_menu: true)


puts "done."

#
# Guardar Categorías
#

print "Saving categories..."

autos_category.save
accesorios_autos_category.save
repuestos_autos_category.save
accesorios_motos_category.save
indumentaria_motos_category.save
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
juegos_de_mesa_category.save
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
telefonia_category.save
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
musica_category.save
musica_alternativa_category.save
musica_clasica_category.save
musica_bandas_sonoras_category.save
musica_blues_jazz_category.save
musica_cumbia_cuarteto_category.save
musica_dance_category.save
musica_electronica_category.save
musica_folklore_category.save
musica_funk_category.save
musica_heavy_metal_category.save
musica_hip_hop_category.save
musica_infantil_category.save
musica_instrumental_category.save
musica_karaoke_category.save
musica_pop_category.save
musica_ska_category.save
musica_reggae_category.save
musica_nacional_category.save
musica_internacional_category.save
musica_tango_category.save
salud_category.save
relajacion_category.save
ropa_mujer_category.save
ropa_hombre_category.save
libro_novela_category.save
libro_suspenso_category.save
libro_filosofia_category.save
libro_infantiles_category.save
libro_arte_category.save
libro_autoayuda_category.save
libro_ficcion_category.save
indumentaria_deportiva_category.save
indumentaria_futbol_hombre_category.save
indumentaria_futbol_mujer_category.save
indumentaria_basquet_hombre_category.save
indumentaria_tenis_hombre_category.save
indumentaria_tenis_mujer_category.save
indumentaria_golf_hombre_category.save
indumentaria_golf_mujer_category.save
indumentaria_natacion_hombre_category.save
indumentaria_natacion_mujer_category.save
indumentaria_hockey_hombre_category.save
indumentaria_hockey_mujer_category.save
indumentaria_voley_hombre_category.save
indumentaria_voley_mujer_category.save
juguetes_category.save
ropa_category.save

puts "done."

#
# Creación de Productos (Product)
print "Creating products..."
#

sensor_estacionamiento_product = Product.new(name: 'Sensor de estacionamiento', description: 'Conserva La Apariencia Original. No Requiere Agujerear El Paragolpe.', brand:'FAITEC', approved: 'true', photo_url:'http://mla-s2-p.mlstatic.com/sensores-de-estacionamiento-electromagneticos-sin-agujeros-5177-MLA4220819288_042013-O.jpg', "category_ids" => [accesorios_autos_category._id, autos_category._id])
apoyabrazo_product = Product.new(name: 'Apoyabrazos Universal', description: 'Apoyabrazo universal central, con porta objetos y posa vasos trasero', brand:'NCB', approved: 'true', photo_url:'http://mla-s2-p.mlstatic.com/apoyabrazo-universal-central-100-regulable-muy-practico-5292-MLA4275019753_052013-O.jpg', "category_ids" => [accesorios_autos_category._id, autos_category._id])
kit_emergencia_auto_product = Product.new(name: 'Kit de emergencia para auto', description: 'Matafuego Balizas Chaleco Botiquín Cuarta Tensores Guantes Y Bolso', brand:'Georgia', approved: 'true', photo_url:'http://img2.mlstatic.com/kit-reglamentario-de-emergencia-para-el-automovil-8-en-1_MLA-O-136769896_4751.jpg', "category_ids" => [accesorios_autos_category._id, autos_category._id])
llantas_product = Product.new(name: 'Llantas de aleacion deportiva', description: 'Llanta de Aleación inyectada marca Style Line rodado 15x6,5 de ancho', brand:'Il Cavallino', approved: 'true', photo_url:'http://mla-s1-p.mlstatic.com/llantas-de-aleacion-deportiva-style-line-rodado-15-6261-MLA83592718_3758-O.jpg', "category_ids" => [accesorios_autos_category._id, autos_category._id])
enganche_trailer_product = Product.new(name: 'Enganche trailer para auto', description: 'Estructura caño laminado en caliente con 3,20mm espesor', brand:'Ciclon escapes', approved: 'true', photo_url:'http://img1.mlstatic.com/-enganches-para-trailers-somos-fabricantes-_MLA-O-78216093_922.jpg', "category_ids" => [accesorios_autos_category._id, autos_category._id])
espiral_amortiguador_product = Product.new(name: 'Espiral progresivo', description: 'Reduce el centro de gravedad, look deportivo, mejora la estabilidad, control y maniobrabilidad.', brand:'Agkit', approved: 'true', photo_url:'http://mla-s2-p.mlstatic.com/espiral-progresivo-ag-kit-todos-los-modelos-4200-MLA2693617431_052012-O.jpg', "category_ids" => [repuestos_autos_category._id, autos_category._id])
cierre_centralizado_product = Product.new(name: 'Cierre centralizado', description: 'Con control remoto indestructible', brand:'NCB', approved: 'true', photo_url:'http://mla-s2-p.mlstatic.com/cierre-centralizado-con-dos-controles-remoto-indestructibles-4051-MLA111117901_1379-O.jpg', "category_ids" => [repuestos_autos_category._id, autos_category._id])
kit_amortiguadores_product = Product.new(name: 'Kit amortiguadores regulables', description: 'Amortiguador deportivo de alto redimiento, desarmable con válvula antidescarga.', brand:'JORSA', approved: 'true', photo_url:'http://mla-s1-p.mlstatic.com/kit-de-amortiguadores-regulables-en-altura-4063-MLA128067384_478-O.jpg', "category_ids" => [repuestos_autos_category._id, autos_category._id])
bateria_auto_product = Product.new(name: 'Bateria de auto 12x75', description: 'Batería de calcio - plata. Libre mantenimiento, apto para vehículos GNC y gasoleros.', brand:'COSMOS', approved: 'true', photo_url:'http://mla-s1-p.mlstatic.com/bateria-autos12x75-diesel-gnc-calcio-plata-cosmos-4004-MLA104753327_1491-O.jpg', "category_ids" => [repuestos_autos_category._id, autos_category._id])
cubiertas_bridgestone_product = Product.new(name: 'Ruedas Bridgestone', description: '195/55R15 85H Bridgestone Turanza ER30 Original Volkswagen Suran, Fox', brand:'Bridgestone', approved: 'true', photo_url:'https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcSeuV1aZcdtHuev0PAxS7FrBMYTSCDVVuh9knDLFdoJrO98uMPa1g', "category_ids" => [repuestos_autos_category._id, autos_category._id])
alarma_moto_product = Product.new(name: 'Alarma Positron para moto', description: 'Alarma Pst Positron Mps100 Fx Modelo Fas Motos', brand:'Positron', approved: 'true', photo_url:'http://mla-s1-p.mlstatic.com/oferta-alarma-pst-positron-mps100-fx-nuevo-modelo-fas-motos-4034-MLA120789680_122-O.jpg', "category_ids" => [accesorios_motos_category._id, autos_category._id])
funda_moto_product = Product.new(name: 'Funda cubre moto', description: 'Funda impermeable reforzada 100% impermeable. No raya la pintura de la moto.', brand:'NET', approved: 'true', photo_url:'http://mla-s2-p.mlstatic.com/funda-cubre-moto-2-medidas-impermeable-facil-colocacoon-5348-MLA4365167047_052013-O.jpg', "category_ids" => [accesorios_motos_category._id, autos_category._id])
intercomunicador_moto_product = Product.new(name: 'Intercomunicador Bluetooth para casco', description: '500 metros de distancia, 7 horas de conversación, funciona hasta 120km/h, resistente al agua. Batería de litio', brand:'Bidcom', approved: 'true', photo_url:'http://img2.mlstatic.com/intercomunicadores-bluetooth-kit-manos-libres-stereo-casco_MLA-O-3173184869_092012.jpg', "category_ids" => [accesorios_motos_category._id, autos_category._id])
amplificador_moto_product = Product.new(name: 'Amplificador de Potencia Audio', description: 'Amplificador Hifi 12v 180w estereo para Moto. 2 entradas RCA audio. Original con garantía', brand:'SP-140', approved: 'true', photo_url:'http://mla-s1-p.mlstatic.com/amplificador-potencia-audio-hifi-12v-1-sonido-moto-pc-compu-4173-MLA2752378260_052012-O.jpg', "category_ids" => [accesorios_motos_category._id, autos_category._id])
arrancador_motos_product = Product.new(name: 'Arrancador Inflador para Motos', description: 'Arrancador, inflador y batería auxiliar para auto y motos.', brand:'Black&Decker', approved: 'true', photo_url:'http://mla-s2-p.mlstatic.com/arrancador-inflador-bateria-aux-auto-moto-4x4-black-decker-5169-MLA41934278_328-O.jpg', "category_ids" => [accesorios_motos_category._id, autos_category._id])
botas_moto_product = Product.new(name: 'Botas motocross', description: 'Botas motocross higly ATV-Enduro-cross Serie 2012 Fas Motos', brand:'hifly', approved: 'true', photo_url:'http://mla-s1-p.mlstatic.com/botas-motocross-hifly-atv-enduro-cross-serie-2012-fas-motos-4190-MLA2779887024_062012-O.jpg', "category_ids" => [indumentaria_motos_category._id, autos_category._id])
casco_moto_product = Product.new(name: 'Casco Rebatilbe', description: 'Rebatible con visor interno, sistema de cierre súper rápido y seguro. Ventilación posterior, inferior y superior', brand:'Max', approved: 'true', photo_url:'http://mla-s1-p.mlstatic.com/casco-rebatible-v-can-v-210-doble-visor-2012-en-fas-motos-4140-MLA142656118_642-O.jpg', "category_ids" => [indumentaria_motos_category._id, autos_category._id])
campera_moto_product = Product.new(name: 'Campera Joe Rocket Atomic 4,0', description: 'Capa exterior de rocktex 100% impermeable, con protectores de hombros y codos, pad de espina extraible. Ventilación vinculado con tunel de enfriamiento. Cintura ajustable', brand:'Yamaha', approved: 'true', photo_url:'http://mla-s2-p.mlstatic.com/campera-joe-rocket-atomic-40-envio-sin-cargo-en-fas-motos-5077-MLA4102247267_042013-F.jpg', "category_ids" => [indumentaria_motos_category._id, autos_category._id])
conjunto_moto_product = Product.new(name: 'Conjunto Motocross', description: 'Conjunto pantalon y buzo para motocross enduro Atv Fas Motos', brand:'FOX', approved: 'true', photo_url:'http://mla-s1-p.mlstatic.com/conjunto-pantalon-y-buzo-motocross-enduro-atv-fas-motos-4036-MLA118278091_7194-F.jpg', "category_ids" => [indumentaria_motos_category._id, autos_category._id])
equipo_lluvia_moto_product = Product.new(name: 'Traje/Equipo de lluvia para motos', description: '100% impermeable, pvc revestido con malla de poliester. Los reflectivos alba proveen la mejor visibilidad a distancias para su seguridad.', brand:'Alba', approved: 'true', photo_url:'http://mla-s2-p.mlstatic.com/trajeequipo-de-lluvia-alba-2013-al-mejor-precio-fas-motos-4270-MLA2926638843_072012-F.jpg', "category_ids" => [indumentaria_motos_category._id, autos_category._id])
stereo_autos_product = Product.new(name: 'Stereo para autos', description: 'Stereo Pionee Deh 155 / 1550 USB New Linea', brand:'Pioneer', approved: 'true', photo_url:'http://img1.mlstatic.com/stereo-pioneer-deh-155-1550-usb-new-linea-gtia-usa-jw_MLA-O-3373433158_112012.jpg', "category_ids" => [audio_vehiculos_category._id, autos_category._id])
subwoofer_auto_product = Product.new(name: 'Combo Subwoofer + Cajón + Potencia + Kit', description: 'Subwoofer 400 RMS 12 pulgadas + Caja + Potencia Boss + Kit de cables', brand:'Pioneer', approved: 'true', photo_url:'http://mla-s2-p.mlstatic.com/combo-subwoofer-pioneer-310-cajon-potencia-boss-kit-5106-MLA4203313716_042013-F.jpg', "category_ids" => [audio_vehiculos_category._id, autos_category._id])
dvd_auto_product = Product.new(name: 'DVD Pioneer para auto', description: 'DVD Piooner 735 Av DVD - USB - Linea 2012 RCA', brand:'Pioneer', approved: 'true', photo_url:'http://img2.mlstatic.com/dvd-pioneer-735-av-dvd-usb-linea-2012-rca-capital-federal_MLA-O-143735713_9700.jpg', "category_ids" => [audio_vehiculos_category._id, autos_category._id])
volante1_auto_product = Product.new(name: 'Volante deportivo para auto', description: 'Viene en varios colores. Hecho de aluminio y caucho antideslizante', brand:'Westunning', approved: 'true', photo_url:'http://mla-s2-p.mlstatic.com/volante-deportivo-32cm-33cm-varios-colores-tunning-5082-MLA4164664554_042013-F.jpg', "category_ids" => [volantes_category._id, autos_category._id])
volante2_auto_product = Product.new(name: 'Volante Rallye para auto', description: 'Volante Rallye Super Surf Gol Parati Saveiro G1 G2 G3 G4 G5', brand:'Saveiro Surf', approved: 'true', photo_url:'http://mla-s2-p.mlstatic.com/volante-rallye-super-surf-gol-parati-saveiro-g1-g2-g3-g4-g5-6347-MLA5053042121_092013-O.jpg', "category_ids" => [volantes_category._id, autos_category._id])
volante3_auto_product = Product.new(name: 'Volante deportivo ju lchi para auto', description: 'Volante deportivo Modelo: Bart 34cm de diametro. Volante de 3 rayos, combinado de poliuretano y cuero ecologico.', brand:'Lidecar', approved: 'true', photo_url:'http://mla-s2-p.mlstatic.com/volante-deportivo-ju-ichi-modelo-bart-34cm-diametro-4009-MLA110309907_3598-F.jpg', "category_ids" => [volantes_category._id, autos_category._id])
polarizado1_autos_product = Product.new(name: 'Polarizado 3M para autos', description: 'Sistema antiasalto. Lamina de seguridad 200 micrones + Polarizado 3M intermedio lamina de alto impacto', brand:'3M', approved: 'true', photo_url:'http://img1.mlstatic.com/polarizado-3m-antivandalico-imperdible_MLA-O-138185923_5806.jpg', "category_ids" => [polarizado_category._id, autos_category._id])
polarizado2_autos_product = Product.new(name: 'Polarizado de autos', description: 'Film de origen importado con filtro UV. 10 años de garantía. Tonalidades a elección', brand:'Polar Cars', approved: 'true', photo_url:'http://mla-s1-p.mlstatic.com/polarizado-de-autos-desde-17999-garantia-10-anos-5138-MLA4199474468_042013-O.jpg', "category_ids" => [polarizado_category._id, autos_category._id])
telefono_inalambrico_product = Product.new(name: 'Teléfono Inalambrico Siemens Gigaset A400', description: 'Tecnología ECO DECT 6.0 calidad de voz y reducción de energia. Expandible hasta 4 handies', brand:'Siemens', approved: 'true', photo_url:'http://mla-s2-p.mlstatic.com/inalambrico-siemens-gigaset-a400duo-dect-60mlibres-nuevo-4085-MLA119378983_2558-O.jpg', "category_ids" => telefonia_category._id)
telefono_product = Product.new(name: 'Telefono Fijo Polaroid Ptp-110', description: 'Telefono Fijo Polaroid Ptp-110. Apto para colgar en la pared. Teclado independiente del auricular. Parpadeante de sonado. Función de flash.', brand:'Polaroid', approved: 'true', photo_url:'http://img1.mlstatic.com/telefono-fijo-polaroid-ptp-110-apto-para-colgar-pared-y-mesa_MLA-O-3378629826_112012.jpg', "category_ids" => telefonia_category._id)
telefono2_product = Product.new(name: 'Telefono Inalambrico Panasonic Kx Tc1311', description: 'Mesa o pared. Identificador de llamadas. 6 tonos polifónicos. Agenda de 50 números. Pantalla luminosa. 22 idiomas', brand:'Panasonic', approved: 'true', photo_url:'http://mla-s1-p.mlstatic.com/telefono-inalambrico-panasonic-kx-tc1311-dect-60-cidentif-4036-MLA117474762_5866-O.jpg', "category_ids" => telefonia_category._id)
telefono_labios_product = Product.new(name: 'Telefono Labios - Boca', description: 'Cable de conexión telefónica. Dispone de tecla redial/pausa/tono y pulso. Teclado digital y cable del mismo color que el teléfono.', brand:'Regalo Original', approved: 'true', photo_url:'http://mla-s1-p.mlstatic.com/telefono-labios-boca-mejor-precio-regalo-original-4003-MLA106999224_4963-O.jpg', "category_ids" => telefonia_category._id)
telefono_zapato_product = Product.new(name: 'Telefono Zapato Con Taco', description: 'Cable de conexión telefónica. Dispone de tecla redial/pausa/tono y pulso. Teclado digital y cable del mismo color que el teléfono.', brand:'Regalo Original', approved: 'true', photo_url:'http://mla-s1-p.mlstatic.com/telefono-zapato-con-taco-importado-grande-6-colores-oferta-4112-MLA2798624916_062012-O.jpg', "category_ids" => telefonia_category._id)
telefono_kitty_product = Product.new(name: 'Telefono Hello Kitty', description: 'Cable de conexión telefónica. Dispone de tecla redial/pausa/tono y pulso. Teclado digital y cable del mismo color que el teléfono.', brand:'Regalo Original', approved: 'true', photo_url:'http://mla-s1-p.mlstatic.com/telefono-hello-kitty-exclusivo-oferta-unico-en-mercado-libre-4157-MLA2785414259_062012-F.jpg', "category_ids" => telefonia_category._id)
galaxy_tab_product = Product.new(name: 'Samsung Galaxy Tab 2 P3110', description: 'Pantalla 7 pulgadas. Comunicación fácil y divertida. Android 4.0 Ice Cream Sandwich. Procesador Dual Core. Conectividad Wi-Fi', brand:'Samsung', approved: 'true', photo_url:'http://mla-s1-p.mlstatic.com/nueva-samsung-galaxy-tab-2-p3110-8gb-android-40-wifi-7-led-5188-MLA4215591754_042013-F.jpg', "category_ids" => [tablets_category._id, pcs_portatiles_category._id])
galaxy_tab10_product = Product.new(name: 'Samsung P5210 Galaxy Tab 3', description: 'Pantalla 10.1". Comunicación fácil y divertida. Android 4.0 Ice Cream Sandwich. Procesador Quad Core. Conectividad Wi-Fi', brand:'Samsung', approved: 'true', photo_url:'http://mla-s1-p.mlstatic.com/samsung-p5210-galaxy-tab-3-de-101-pulgadas-nueva-5529-MLA4973169903_092013-O.jpg', "category_ids" => [tablets_category._id, pcs_portatiles_category._id])
ipad_mini_16_product = Product.new(name: 'Ipad Mini 16gb ', description: 'La pantalla mide 7.9 pulgadas de diagonal con una resolución de 1024 x 768 píxeles, la misma que el iPad 2. La tecnología de pantalla no es Retina, un aspecto que decepcionará a más de uno. Del otro lado, la pantalla tiene un 35% más área que la de, por ejemplo, el Google Nexus 7. Tras la estela del iPhone 5 Otro de los cambios externos que se veían venir es la incorporación del conector Lightning del iPhone 5 en el iPad Mini. La batería del dispositivo tiene una autonomía nominal de 10 horas. Internamente, el iPad Mini se mueve gracias al procesador Apple A5 de doble núcleo que también vemos en el iPhone 5.', brand:'Apple', approved: 'true', photo_url:'http://i.ebayimg.com/t/Apple-iPad-mini-16GB-Wi-Fi-4G-Cellular-AT-T-7-9in-Black-Slate-Latest-Model/00/$(KGrHqJHJEkFBjRBmT29BQmUdQ1eMg~~_35.JPG', "category_ids" => [tablets_category._id, pcs_portatiles_category._id])
kindle_product = Product.new(name: 'Amazon Kindle 5ta Generacion', description: 'El mejor dispositivo de lectura del mercado. Piérdete dentro de la lectura. Diseño ergonómico. Nunca se calienta', brand:'Amazon', approved: 'true', photo_url:'http://cdn3.pcadvisor.co.uk/cmsdata/reviews/3405763/Kindle_5_2012_store.jpg', "category_ids" => [tablets_category._id, pcs_portatiles_category._id])
sony_ereader_product = Product.new(name: 'Sony E-reader 6 Prs-t2hbc', description: 'Libre de publicidad. Librería de descargas pública. Excelente para viajes. Maravillate leyendo.', brand:'Sony', approved: 'true', photo_url:'http://www.bestbuybusiness.com/bbfb/en/US/htdocs/productMgr/datasheet/Reader_WiFi_Black_front.JPG', "category_ids" => [tablets_category._id, pcs_portatiles_category._id])
kindle_fire_product = Product.new(name: 'Kindle Fire Hd 16gb', description: 'Tablet 7 Pulgadas Pantalla Color HD Antirreflex Multitouch de mayor resolución. 16Gb de almacenamiento. Sonido Dolby Estereo. WiFi doble antena. Procesador QUAD Core 2,2Ghz. Webcam. USB. HDMI 2GB RAM', brand:'Amazon', approved: 'true', photo_url:'http://mla-s2-p.mlstatic.com/amazon-kindle-fire-hd-16gb-ebook-tablet-7-pulg-caja-cerrada-4504-MLA3687218049_012013-O.jpg', "category_ids" => [tablets_category._id, pcs_portatiles_category._id])
notebook_samsung_product = Product.new(name: 'Notebook Samsung Serie 3 B960', description: 'Pantalla 15.6" anti-reflejo. Superficie antimarcas. Calidad que dura. Battery-life plus: tecnología anti-envejecimiento de la batería. 4GB de RAM. 500GB de disco. Lectora de DVD.', brand:'Samsung', approved: 'true', photo_url:'http://ftcenlinea.com/promote/image/cache/data/Productos/Computadoras%20Portatiles/Notebook%20SamsungNP300E4C-A02MX-600x600.jpg', "category_ids" => [pcs_portatiles_category._id, pcs_portatiles_category._id])
notebok_exo_product = Product.new(name: 'Notebook Exo Nice C1443h', description: 'Industria nacional. Procesador i3 2.1ghz. 4gb de RAM. 500gb de disco duro.', brand:'Exo', approved: 'true', photo_url:'http://mla-s2-p.mlstatic.com/notebook-exo-nice-14-c143h-dual-core-win8-4gb-320gb-hdmi-3220-MLA4832255422_082013-O.jpg', "category_ids" => [pcs_portatiles_category._id, pcs_portatiles_category._id])
all_in_one_bgh_product = Product.new(name: 'All In One Bgh Aio 515', description: 'Procesador Intel Celeron. Pantalla 18.5". 2gb de RAM. 5 puertos USB', brand:'BGH', approved: 'true', photo_url:'http://www.rodo.com.ar/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/b/g/bgh_one_515.png', "category_ids" => [pcs_portatiles_category._id, pcs_portatiles_category._id])
pc_clon_product = Product.new(name: 'Pc Escritorio Gamer', description: 'MOTHER A55M-P35. CPU AMD A4 5300 3.4. GHZ 1MB CACHE. RADEON GRAPHICS MEMORIA KINGSTON 4GBX2 HX 1600MHZ TOTAL 8GB. UNIDAD OPTICA DVD-RW LG 24X. DISCO RIGIDO WESTER DIGITAL 1TB 7200RPM SATA3 64MB. PLACA DE VIDEO XFX GT630 2GB DDR3. GABINETE OVER CASE OEM SIN CAJA.', brand:'Clon', approved: 'true', photo_url:'http://mla-s1-p.mlstatic.com/pc-escritorio-gamer-nueva-en-caja-se-retira-por-burzaco-4551-MLA3765411669_022013-F.jpg', "category_ids" => [pcs_portatiles_category._id, pcs_portatiles_category._id])
windows_product = Product.new(name: 'Windows 8 en español', description: 'Licencia original. Versión de 32 o 64 bits. Requisitos mínimos: procesador 1ghz, 1gb RAM, 16gb de espacio libre, tarjeta gráfica con DirectX 9.', brand:'Microsoft', approved: 'true', photo_url:'http://www.antivirussupport.com/Images/819d90a07bf27cb6c850cd18342e54e2.jpg', "category_ids" => [software_category._id, pcs_portatiles_category._id])
adobe_product = Product.new(name: 'Adobe CS6 Master Collection', description: 'Funciona en Windows o en Mac. Contiene: Photoshop CS6, Illustrator CS6, InDesign CS6, Acrobat X Pro, Flash Professional CS6, Dreamweaver CS6, Fireworks CS6, Bridge CS6 y más!', brand:'Adobe', approved: 'true', photo_url:'http://mla-s1-p.mlstatic.com/adobe-cs6-master-collection-windows-mac-osx-full-espanol-563-MLA4690886991_072013-F.jpg', "category_ids" => [software_category._id, pcs_portatiles_category._id])
office2013_product = Product.new(name: 'Microsoft Office 2013', description: 'Su office para el hogar y los deberes escolares. Simplifique su manera de compartir. Convierta sus ideas en bellos documentos', brand:'Microsoft', approved: 'true', photo_url:'http://i.ebayimg.com/00/s/NTAwWDM1NA==/z/M5UAAOxyA4ZRJbIp/$(KGrHqZ,!iwFDyvmQfSTBRJbIpMsVw~~60_35.JPG?set_id=8800005007', "category_ids" => [software_category._id, pcs_portatiles_category._id])
jaulon_pajaro_loro_product = Product.new(name: 'Jaulón Pájaro Loro', description: 'Jaula con ruedas, 55x55x1.25. Espectacular', brand:'Aerojaula', approved: 'true', photo_url:'http://mla-s2-p.mlstatic.com/jaulon-pajaro-loro-con-ruedas-55x55x125alto-espectacular-4094-MLA119564909_8410-O.jpg', "category_ids" => [mascotas_category._id, aves_category._id])
manta_caballo_product = Product.new(name: 'Manta ecológica para caballos', description: 'Manta ecológica de yute y friselina, apta para presentación y entrada a cancha', brand:'Baticola', approved: 'true', photo_url:'http://mla-s1-p.mlstatic.com/manta-ecologica-para-caballos-apta-para-cancha-5510-MLA4451880998_062013-F.jpg', "category_ids" => mascotas_category._id)
comedero_dispenser_gatos_product = Product.new(name: 'Comedero y dispenser para gatos', description: 'El snack box activity es un ingenioso juguete, que entretiene y alimenta a la vez dado que funciona como un juego de ingenio y despensador de alimento al mismo tiempo ', brand:'Cankun', approved: 'true', photo_url:'http://mla-s1-p.mlstatic.com/comedero-dispenser-comida-para-gatos-jugar-comer-ideal-3892-MLA4868787612_082013-O.jpg', "category_ids" => [mascotas_category._id, gatos_category._id])
funda_asiento_product = Product.new(name: 'Funda para auto', description: 'Funda para auto para todo animal', brand:'Fundas Nico', approved: 'true', photo_url:'http://mla-s1-p.mlstatic.com/funda-asiento-auto-mascota-perro-regalo-dia-de-la-madre-mira-6208-MLA59146323_2190-O.jpg', "category_ids" => mascotas_category._id)
buzos_perro_product = Product.new(name: 'Buzos para perros', description: 'Buzos adidog para perros, muy abrigaditos y súper cancheros', brand:'Adidog', approved: 'true', photo_url:'http://mla-s2-p.mlstatic.com/unicos-buzos-adidog--4889-MLA3907315774_032013-O.jpg', "category_ids" => [mascotas_category._id, perros_category._id])
bataraz_pajaro_product = Product.new(name: 'Pollitos Bataraz', description: 'Sin sexar', brand:'Granaja la Zaphira', approved: 'true', photo_url:'http://mla-s1-p.mlstatic.com/pollitos-bataraz-sin-sexar-plymouth-rock-barrado-7505-MLA5226944931_102013-F.jpg', "category_ids" => [aves_category._id, mascotas_category._id])
pollitos_pajaro_product = Product.new(name: 'Pollitos Bebé', description: 'Varios colores, sin sexar', brand:'Cruza de campo', approved: 'true', photo_url:'http://mla-s1-p.mlstatic.com/pollitos-bebe-cruza-de-campo-7865-MLA5280161746_102013-O.jpg', "category_ids" => [aves_category._id, mascotas_category._id])
urraca_pajaro_product = Product.new(name: 'Urraca', description: 'Ave de misiones, traida de Brasil', brand:'', approved: 'true', photo_url:'http://mla-s2-p.mlstatic.com/urraca-ave-de-misiones-traida-de-brasil-8067-MLA5322714605_112013-F.jpg', "category_ids" => [aves_category._id, mascotas_category._id])
conejos1_product = Product.new(name: 'Conejos Enanos', description: 'Viene con Jaulita + alimento + certificado de naciemitno + guía de cuidados', brand:'', approved: 'true', photo_url:'http://mla-s2-p.mlstatic.com/conejos-enanos-orejas-caidas-holland-lop-o-dutch-jaula-4293-MLA3494327941_122012-F.jpg', "category_ids" => [conejos_category._id, mascotas_category._id])
conejos2_product = Product.new(name: 'Conejos Holland Lop', description: 'Conejitos Holland Lop, enanos de orejas caidas + Jaula', brand:'', approved: 'true', photo_url:'http://mla-s2-p.mlstatic.com/conejitos-holland-lop-enanos-de-orejas-caidas-jaula-4020-MLA116985644_6181-F.jpg', "category_ids" => [conejos_category._id, mascotas_category._id])
conejos3_product = Product.new(name: 'Conejos Super enanos', description: 'Super enanos raza Dutch', brand:'', approved: 'true', photo_url:'http://mla-s2-p.mlstatic.com/conejos-super-enanos-raza-dutch-6174-MLA4619063804_072013-O.jpg', "category_ids" => [conejos_category._id, mascotas_category._id])
gato1_product = Product.new(name: 'Gato persa', description: 'Gato persa Himalayo macho nacido el 12/09/13.', brand:'', approved: 'true', photo_url:'http://mla-s2-p.mlstatic.com/hermosos-gatitos-persas-himalayos-2-machitos-divinos-7807-MLA5289847859_102013-F.jpg', "category_ids" => [gatos_category._id, mascotas_category._id])
gato2_product = Product.new(name: 'Siames puro', description: 'Siames puro, sano, desaparacitado', brand:'Criadero Siames Tradic', approved: 'true', photo_url:'http://img1.mlstatic.com/siameses-puros-sanitos-desparacitados-criadero-siames-tradic_MLA-O-135070220_4546.jpg', "category_ids" => [gatos_category._id, mascotas_category._id])
gato3_product = Product.new(name: 'Servicio de reproductor Gato Persa Red', description: 'Servicio de reproductor gato persa red, con todas su vacunas al día, análisis VIF y VILEF negativo', brand:'Garfield', approved: 'true', photo_url:'http://mla-s1-p.mlstatic.com/servicio-de-reproductor-gato-persa-red-2191-MLA4781160199_082013-F.jpg', "category_ids" => [gatos_category._id, mascotas_category._id])
pez1_product = Product.new(name: 'Carpas Koi', description: 'Importadas de singapur, 18cm', brand:'', approved: 'true', photo_url:'http://mla-s2-p.mlstatic.com/carpas-koi-importadas-de-singapur-18-cm-3249-MLA4832991062_082013-O.jpg', "category_ids" => [peces_category._id, mascotas_category._id])
pez2_product = Product.new(name: 'Peces tropicales', description: '16 peces tropicales: 3 Platis, 3 neones negros, 4 Levistes, 4 cebras, 2 espadas.', brand:'', approved: 'true', photo_url:'http://mla-s2-p.mlstatic.com/combo-16-peces-tropicales-planta-4097-MLA101408163_8985-O.jpg', "category_ids" => [peces_category._id, mascotas_category._id])
pez3_product = Product.new(name: 'Peces agua fría', description: '10 peces de agua fría: 2 telecópicos negros, 2 carasius naranjas, 2 carasius cálicos, 2 cometas naranja intenso y 2 otocinclus', brand:'Aquariumba', approved: 'true', photo_url:'http://mla-s2-p.mlstatic.com/combo-peces-agua-fria-10-peces-4026-MLA117009755_8142-O.jpg', "category_ids" => [peces_category._id, mascotas_category._id])
perro1_product = Product.new(name: 'Caniche toy', description: 'Caniches Toy de raza, se entregan a partir de los 45 días. Todos los colores', brand:'', approved: 'true', photo_url:'http://bimg2.mlstatic.com/cachorros-caniches-toy-miralos-todos-los-colores_MLA-F-3238288810_102012.jpg', "category_ids" => [perros_category._id, mascotas_category._id])
perro2_product = Product.new(name: 'Bichon Frise', description: 'Inscripto en la FCA', brand:'Criadero pequeña Utopía', approved: 'true', photo_url:'http://mla-s1-p.mlstatic.com/bichon-frise-los-mas-bonitos-con-pedigri-de-fca-4887-MLA3901339972_022013-F.jpg', "category_ids" => [perros_category._id, mascotas_category._id])
perro3_product = Product.new(name: 'Perro Salchica', description: 'Perros salchicha mini puros. 1 macho negro fuego, 2 machos arlequines. Desparacitados', brand:'', approved: 'true', photo_url:'http://mla-s2-p.mlstatic.com/salchica-mini-puros-6812-MLA5114282032_092013-F.jpg', "category_ids" => [perros_category._id, mascotas_category._id])
perro4_product = Product.new(name: 'Perro Boxer', description: 'Puros, buen linaje, buen porte, cariñosos.', brand:'', approved: 'true', photo_url:'http://mla-s1-p.mlstatic.com/boxer-el-mejor-cachorro-para-los-chicos-6967-MLA5127556083_092013-F.jpg', "category_ids" => [perros_category._id, mascotas_category._id])
roedor1_product = Product.new(name: 'Cobayo', description: 'Cobayos Americanos y abisinios.', brand:'Rodentia', approved: 'true', photo_url:'http://mla-s1-p.mlstatic.com/cobayos-americanos-y-abisinios-bebes-unicos-miralos-6282-MLA99775450_4481-O.jpg', "category_ids" => [roedores_category._id, mascotas_category._id])
roedor2_product = Product.new(name: 'Hamster', description: 'Hamster enano ruso, hamstera, rueda, tapa-reja.', brand:'Rodentia', approved: 'true', photo_url:'http://mla-s2-p.mlstatic.com/tene-ya-tu-hamster-enano-ruso-hamstera-rueda-tapa-reja-4022-MLA117224481_6316-O.jpg', "category_ids" => [roedores_category._id, mascotas_category._id])
roedor3_product = Product.new(name: 'Chinchilla', description: 'Certificado sanitario, sanas, limpias. De todas las edades y los colores.', brand:'ChinchiPets', approved: 'true', photo_url:'http://mla-s2-p.mlstatic.com/chinchillas-las-mas-lindas-y-dociles-pets-4148-MLA2533102225_032012-O.jpg', "category_ids" => [roedores_category._id, mascotas_category._id])
audio_antiguo_1_product = Product.new(name: 'Discos de Pasta', description: 'Discos de pasta 78rpm No vinilo. Lote para colección', brand:'RCA Victor', approved: 'true', photo_url:'http://mla-s1-p.mlstatic.com/discos-pasta-78-rpm-no-vinilo-lote-154-MLA4664121901_072013-F.jpg', "category_ids" => [audio_antiguo_category._id, antiguedades_category._id])
audio_antiguo_2_product = Product.new(name: 'Tocadisco', description: 'Funcionan las distintas velocidad, volumen y tono', brand:'Winco', approved: 'true', photo_url:'http://mla-s1-p.mlstatic.com/tocadisco-winco-funciona-7976-MLA5297560768_102013-F.jpg', "category_ids" => [audio_antiguo_category._id, antiguedades_category._id])
audio_antiguo_3_product = Product.new(name: 'Radio RCA', description: 'Radio RCA Victor Década del 40. Carcasa baquelita.', brand:'RCA Victor', approved: 'true', photo_url:'http://mla-s1-p.mlstatic.com/radio-rca-victor-decada-del-40-de-carcasa-de-baquelita-6435-MLA5068473027_092013-F.jpg', "category_ids" => [audio_antiguo_category._id, antiguedades_category._id])
cristaleria_antigua_1_product = Product.new(name: 'Copas antiguas', description: 'Juego de 11 copas verdes para vino blanco. Medianas. Altura: 13cm', brand:'', approved: 'true', photo_url:'http://mla-s1-p.mlstatic.com/copas-antiguas-talladas-verdes-vino-blanco-preciosas-5109-MLA4227251113_042013-F.jpg', "category_ids" => [cristaleria_antigua_category._id, antiguedades_category._id])
cristaleria_antigua_2_product = Product.new(name: 'Conjunto de botellas', description: 'Conjunto de botellas antiguas de diferentes colores', brand:'', approved: 'true', photo_url:'http://mla-s2-p.mlstatic.com/conjunto-de-botellas-antiguas-de-diferentes-colores-4380-MLA3612042486_012013-F.jpg', "category_ids" => [cristaleria_antigua_category._id, antiguedades_category._id])
cristaleria_antigua_3_product = Product.new(name: 'Licorera/Whiskera', description: 'Licorera de cristal tallado con virola plateada. Medidas: 34x10x10cm', brand:'', approved: 'true', photo_url:'http://mla-s2-p.mlstatic.com/licorera-whiskera-7255-MLA5186402109_102013-F.jpg', "category_ids" => [cristaleria_antigua_category._id, antiguedades_category._id])
camaras_antiguas_1_product = Product.new(name: 'Cámara de fotos antiguas', description: 'Cámara de fotos antigua marca Kodak. Impecable, muy vieja.', brand:'Kodak', approved: 'true', photo_url:'http://mla-s1-p.mlstatic.com/kodak-camara-de-fotos-antigua-inpecable-muy-vieja-7953-MLA5303820722_102013-O.jpg', "category_ids" => [camaras_antiguas_category._id, antiguedades_category._id])
camaras_antiguas_2_product = Product.new(name: 'Camara filmadora antigua', description: 'Cámara filmadora de 16mm Revere 16. Año 1947', brand:'El arcon', approved: 'true', photo_url:'http://mla-s2-p.mlstatic.com/el-arcon-antigua-camara-filmadora-de16-mm-revere-16-de-1947-4035-MLA127759844_3291-F.jpg', "category_ids" => [camaras_antiguas_category._id, antiguedades_category._id])
camaras_antiguas_3_product = Product.new(name: 'Proyecto super 8', description: 'Proyector súper 8 Canon Ps-1000 sonoro. Graba sonido. Incluye accesorios y micrófono original y protectores.', brand:'Canon', approved: 'true', photo_url:'http://mla-s1-p.mlstatic.com/proyector-super-8-canon-ps-1000-sonoro-1613-MLA4764372490_082013-O.jpg', "category_ids" => [camaras_antiguas_category._id, antiguedades_category._id])
iluminacion_antigua_1_product = Product.new(name: 'Araña antigua', description: 'Elegante araña de cristal. Partes de metal en dorado o plata', brand:'E-Luminarte', approved: 'true', photo_url:'http://mla-s1-p.mlstatic.com/e-luminarte-unicas-aranas-lamparas-cristal-caireles-al-costo-4066-MLA105678728_9736-O.jpg', "category_ids" => [iluminacion_antigua_category._id, antiguedades_category._id])
iluminacion_antigua_2_product = Product.new(name: 'Lámpara de mesa antigua', description: 'Lámpara de mesa especial Luis XV. Incluye espejo haciendo juego', brand:'', approved: 'true', photo_url:'http://mla-s1-p.mlstatic.com/hermosa-lampara-de-mesa-especial-luis-xv-mas-oferta--6456-MLA5063526574_092013-F.jpg', "category_ids" => [iluminacion_antigua_category._id, antiguedades_category._id])
iluminacion_antigua_3_product = Product.new(name: 'Menorá de bronce', description: 'Candelabro menorá de 7 veles hecho en bronce. 21cm de alto', brand:'Fundación Tzedaka', approved: 'true', photo_url:'http://mla-s2-p.mlstatic.com/menora-de-7-velas-hecho-en-bronce-fundacion-tzedaka-7968-MLA5301182948_102013-F.jpg', "category_ids" => [iluminacion_antigua_category._id, antiguedades_category._id])
juguetes_antiguos_1_product = Product.new(name: 'Muñeca antigua', description: 'Muñeca negra de pasta de época (1940), argentinas y alemanas. 32cm de alto.', brand:'', approved: 'true', photo_url:'http://mla-s2-p.mlstatic.com/munecas-negras-de-pasta-antigua-hermosas-2254-MLA4788459592_082013-F.jpg', "category_ids" => [juguetes_antiguos_category._id, antiguedades_category._id])
juguetes_antiguos_2_product = Product.new(name: 'Tractor antiguo', description: 'Tractor de juguete con pala Duravit. De colección, 60 años de antiguedad en muy buen estado de conservación', brand:'Duravit', approved: 'true', photo_url:'http://mla-s1-p.mlstatic.com/tractor-duravit-de-coleccion-7938-MLA5295488484_102013-F.jpg', "category_ids" => [juguetes_antiguos_category._id, antiguedades_category._id])
juguetes_antiguos_3_product = Product.new(name: 'Triciclo antiguo restaurado', description: 'Triciclo restaurado, pintura a fuego color pastel original. Rayos y masas zincadas, arcos restaurados realizamos a mano. Manubrio, palancas, asiento, tornillos y cromados', brand:'', approved: 'true', photo_url:'http://mla-s1-p.mlstatic.com/triciclo-restaurado-a-nuevo-con-todo-original-6533-MLA5082289249_092013-F.jpg', "category_ids" => [juguetes_antiguos_category._id, antiguedades_category._id])
muebles_antiguos_1_product = Product.new(name: 'Biblioteca antigua', description: 'Biblioteca antigua con tallas hechas a mano. Firme estructura sin marcas. Cajón con cerradura y llave. Medidas: 2,05x1.12,0.42m', brand:'', approved: 'true', photo_url:'http://mla-s1-p.mlstatic.com/importante-biblioteca-antigua-con-bellisimas-tallas-7868-MLA5290255522_102013-F.jpg', "category_ids" => [muebles_antiguos_category._id, antiguedades_category._id])
muebles_antiguos_2_product = Product.new(name: 'Sillones antiguos', description: 'Sillones estilo inglés. Estructura firme en perfecto estado. Tapizado original. Medidas 100x75x55cm. Hecho por ebanista', brand:'Reina Ana', approved: 'true', photo_url:'http://mla-s2-p.mlstatic.com/antiguos-sillones-maple-reina-ana-caoba-1950-ebanista-7503-MLA5239551167_102013-F.jpg', "category_ids" => [muebles_antiguos_category._id, antiguedades_category._id])
muebles_antiguos_3_product = Product.new(name: 'Cristalero antiguo', description: 'Cristalero de roble de 1.7x1.10x.035m. dos estantes en vidrio. Hecho en roble', brand:'', approved: 'true', photo_url:'http://mla-s2-p.mlstatic.com/cristalero-antiguo-en-roble-5522-MLA4513950038_062013-F.jpg', "category_ids" => [muebles_antiguos_category._id, antiguedades_category._id])
maquinas_de_escribir_antiguas_1_product = Product.new(name: 'Máquina de escribir antigua Underwood', description: 'Máquina de escribir en excelente estado. Solo tiene la barra espaciadora partida. Tiene tinta.', brand:'Underwood', approved: 'true', photo_url:'http://mla-s2-p.mlstatic.com/maquina-de-escribir-antigua-underwood-excelente-4531-MLA4917155221_082013-O.jpg', "category_ids" => [maquinas_de_escribir_antiguas_category._id, antiguedades_category._id])
maquinas_de_escribir_antiguas_2_product = Product.new(name: 'Máquina de escribir antigua Remington', description: 'Máquina de escribir portatil Remington 380. Impecable', brand:'Remington', approved: 'true', photo_url:'http://mla-s2-p.mlstatic.com/maquina-de-escribir-portatil-remington-380-poco-uso-6049-MLA5023177366_092013-F.jpg', "category_ids" => [maquinas_de_escribir_antiguas_category._id, antiguedades_category._id])
maquinas_de_escribir_antiguas_3_product = Product.new(name: 'Máquina de escribir antigua Olivetti', description: 'Modelo Lettera 35, muy poco uso. Incluye la funda original', brand:'Olivetti', approved: 'true', photo_url:'http://mla-s2-p.mlstatic.com/maquina-de-escribir-olivetti-7903-MLA5302507394_102013-F.jpg', "category_ids" => [maquinas_de_escribir_antiguas_category._id, antiguedades_category._id])
juegos_de_mesa_1_product = Product.new(name: 'Minuto para ganar', description: 'Juego oficial del programa de TV de Marley.', brand:'Zetateam', approved: 'true', photo_url:'http://mla-s2-p.mlstatic.com/minuto-para-ganar-juego-programa-tv-marley-telefe-zetateam-374-MLA4682124589_072013-O.jpg', "category_ids" => juegos_de_mesa_category._id)
juegos_de_mesa_2_product = Product.new(name: 'TEG', description: 'TEG 1. Juego clásico de estrategia, lógica, diplomacia, inteligencia y azar', brand:'YETEM', approved: 'true', photo_url:'http://mla-s2-p.mlstatic.com/teg-clasico-clasico-juego-de-estrategia-zetateam-4180-MLA2887080785_072012-O.jpg', "category_ids" => juegos_de_mesa_category._id)
juegos_de_mesa_3_product = Product.new(name: 'Settlers of Catan', description: 'Juego Colonos de Catán en español. Juego de estrategia, negociación y azar.', brand:'Klaus Teuber', approved: 'true', photo_url:'http://mla-s1-p.mlstatic.com/colonos-de-catan-settlers-of-catan-juego-de-mesa-espanol-4592-MLA4915851875_082013-O.jpg', "category_ids" => juegos_de_mesa_category._id)
arte_artesanias_1_product = Product.new(name: 'Atril', description: 'Atril metal 7 bastidos para óleos, acrílicos, pinchles y paleta', brand:'Naries', approved: 'true', photo_url:'http://mla-s2-p.mlstatic.com/kit-atril-metal-7-bastidor-oleos-acrilicos-pincles-paleta-574-MLA4689523651_072013-F.jpg', "category_ids" => arte_artesanias_category._id)
arte_artesanias_2_product = Product.new(name: 'Pintura acrilica', description: 'Pintura acrílica AD 6 unidades x 50ML color tradicional y/o metálicos', brand:'AD', approved: 'true', photo_url:'http://mla-s2-p.mlstatic.com/pintura-acrilica-ad-6un-x-50ml-color-tradicional-o-metalicos-6257-MLA60439404_5807-O.jpg', "category_ids" => arte_artesanias_category._id)
arte_artesanias_3_product = Product.new(name: 'Souvenir árbol de la vida', description: 'Elegante souvenir para toda ocasión. CASERO en 11, 15 y 18cm', brand:'', approved: 'true', photo_url:'http://mla-s1-p.mlstatic.com/arbol-de-la-vida-souveniers-para-todo-eventocaseros-5162-MLA4227048512_042013-F.jpg', "category_ids" => arte_artesanias_category._id)
arte_artesanias_4_product = Product.new(name: 'Fondos de marcos', description: '2000 fondos para marcos. Imágenes, efectos y fuentes. Material imprimible', brand:'Viccap Kits', approved: 'true', photo_url:'http://mla-s2-p.mlstatic.com/2000-fondos-marcos-imagenes-efectos-fuentes-imprimibles-415-MLA4685647081_072013-O.jpg', "category_ids" => arte_artesanias_category._id)
geforce_product = Product.new(name: 'Video Geforce Gt 610', description: 'Todo PC merece unos gráficos dedicados. Da vida a tus fotos y vídeos con una tarjeta gráfica NVIDIA® GeForce® GT 610. Pásate a los gráficos dedicados NVIDIA para disfrutar de una experiencia más rica y fluida con tus aplicaciones preferidas en todo momento', brand:'nVidia', approved: 'true', photo_url:'http://www.amaze-tech.com/ProductImages/Geforce_GT610-01.JPG', "category_ids" => [hardware_category._id, pcs_portatiles_category._id])
thermaltake_product = Product.new(name: 'Gabinete Thermaltake V3 Black Edition', description: 'Incluye 3 fancoolers y luces azules. Negro por fuera.', brand:'Thermaltake', approved: 'true', photo_url:'http://bimg2.mlstatic.com/gabinete-thermaltake-v3-black-edition-gamer-mejor-precio_MLA-F-3012039095_082012.jpg', "category_ids" => [hardware_category._id, pcs_portatiles_category._id])
ssd_product = Product.new(name: 'Disco SSD Samsung 120gb', description: 'Los más rápidos del mercado y con 120gb de memoria para que entren todas tus películas y series', brand:'Samsung', approved: 'true', photo_url:'http://images.bit-tech.net/content_images/2011/09/samsung-ssd-830-256gb-review/samsung830-6b.jpg', "category_ids" => [hardware_category._id, pcs_portatiles_category._id])
grab_bluray_product = Product.new(name: 'Grabadora Blu Ray Lite On', description: 'Grabadora interna de blurays. Disfrute de la máxima versatilidad en casa junto con el bluray, dvd y grabación de CD.', brand:'Lite-on', approved: 'true', photo_url:'http://www.storagereview.com/images/Lite-On%20IHBS112.jpg', "category_ids" => [hardware_category._id, pcs_portatiles_category._id])
flipper_product = Product.new(name: 'Flipper Blackout', description: 'SET DE PLASTICOS COMPLETOS Y EN BUEN ESTADO. SET DE CALCOS NUEVOS. EL FLIPPER FUE DESARMADO Y RESTAURADO EN SU TOTALIDAD', brand:'Blackout', approved: 'true', photo_url:'http://mla-s2-p.mlstatic.com/flipper-blackout-7082-MLA5153140072_102013-F.jpg', "category_ids" => [consolas_videojuegos_retro_category._id, consolas_category._id])
daytona_product = Product.new(name: 'Cartel Daytona', description: 'CARTEL DAYTONA USA 2 POWER EDITION ORIGINAL', brand:'Daytona', approved: 'true', photo_url:'http://bimg1.mlstatic.com/cartel-daytona-usa-2-power-edition-original_MLA-F-3242387166_102012.jpg', "category_ids" => [consolas_videojuegos_retro_category._id, consolas_category._id])
n3ds_product = Product.new(name: 'Nintendo 3Ds Xl', description: 'Consola portátil con 4gb de almacenamiento. Colores: Gris/Azul/Rojo. Incluye un juego a elección', brand:'Nintendo', approved: 'true', photo_url:'http://img.vidaextra.com/2012/11/Nintendo3DSXL1.jpg', "category_ids" => [consolas_category._id, consolas_category._id])
ps3_product = Product.new(name: 'Playstations 3 Slim 160gb', description: 'Consola en caja cerrada con un juego a elección. Incluye un joystick inalámbrico y transformador.', brand:'Sony', approved: 'true', photo_url:'http://www.tpcdb.com/images/products/1000/1125.jpg', "category_ids" => [consolas_category._id, consolas_category._id])
psvita_product = Product.new(name: 'Playstation Vita', description: 'Consola portátil con dos juegos de regalo. Incluye cable USB, cargador 220v, 1 manual de usuario y 6 play cards para realidad aumentada', brand:'Sony', approved: 'true', photo_url:'http://mla-s1-p.mlstatic.com/ps-vita-con-wi-fi-nuevas-en-caja-cerrada-touch-hd-regalo-4181-MLA2809068704_062012-F.jpg', "category_ids" => [consolas_category._id, consolas_category._id])
wii_product = Product.new(name: 'Consola Nintendo Wii', description: 'Incluye Wii Fit para hacer ejercicio jugando y 2 controles. Viene con un juego de deportes de Nintendo', brand:'Nintendo', approved: 'true', photo_url:'http://mla-s2-p.mlstatic.com/consola-wii-nintendo-wii-fit-controles-6926-MLA5135936400_102013-O.jpg', "category_ids" => [consolas_category._id, consolas_category._id])
xbox_product = Product.new(name: 'Xbox 360 Slim 4gb', description: 'Consola Xbox 360 con 4gb de almacenamiento interno. 1 joystick original inalámbrico. 1 cable RCA. 1 fuente de alimentación 220v.', brand:'Microsoft', approved: 'true', photo_url:'http://mla-s2-p.mlstatic.com/xbox-360-250gb-2-controles-2-juegos-auricular-2949-MLA4821307470_082013-F.jpg', "category_ids" => [consolas_category._id, consolas_category._id])
materiales_para_tatuajes_1_product = Product.new(name: 'Tintas', description: 'Tintas para tatuar, pigmentos para tatuajes', brand:'Solid Ink', approved: 'true', photo_url:'http://bimg1.mlstatic.com/tintas-para-tatuar-solid-ink-usa-pigmentos-tattoo-tatuajes_MLA-F-3007488454_082012.jpg', "category_ids" => materiales_para_tatuajes_category._id)
materiales_para_tatuajes_2_product = Product.new(name: 'Equipo de tatuaje', description: 'Equipo para empezar a tatuar. Kit completo.', brand:'Family Ink', approved: 'true', photo_url:'http://mla-s1-p.mlstatic.com/equipo-pempezar-a-tatuar-tattoo-kit-maquina-tenemos-otros-4067-MLA114717379_129-F.jpg', "category_ids" => materiales_para_tatuajes_category._id)
materiales_para_tatuajes_3_product = Product.new(name: 'Maquina para tatuar', description: 'Maquina profesional híbrida de alta gama para tatuaje', brand:'Solid Ink', approved: 'true', photo_url:'http://mla-s2-p.mlstatic.com/maquina-para-tatuar-profesional-hibrida-tattoo-tatuaje-5132-MLA4218450726_042013-O.jpg', "category_ids" => materiales_para_tatuajes_category._id)
souvenirs_1_product = Product.new(name: 'Souvenir anotador', description: '32 anotadores personalizados de 10,6x7,5cm. Varios modelos', brand:'Lorenzo', approved: 'true', photo_url:'http://mla-s2-p.mlstatic.com/32-souvenirs-anotador-libreta-personalizada-elegi-tu-diseno-5084-MLA4059394512_032013-F.jpg', "category_ids" => souvenirs_category._id)
souvenirs_2_product = Product.new(name: 'Souvenir peluche', description: '20 souvenirs realizados en tela + caja decorada', brand:'Ma Cristina', approved: 'true', photo_url:'http://mla-s1-p.mlstatic.com/souvenirs-nacimientos-bautismos-1er-anito-baby-shower-4061-MLA118325120_4687-O.jpg', "category_ids" => souvenirs_category._id)
souvenirs_3_product = Product.new(name: 'Souvenir taza', description: 'Tazas con cuchara para todos los eventos.', brand:'', approved: 'true', photo_url:'http://mla-s1-p.mlstatic.com/souvenirstazasmatesbautismocumple-infantil15casamiento-4130-MLA143613456_4189-F.jpg', "category_ids" => souvenirs_category._id)
joystick_ps3_product = Product.new(name: 'Joystick Playstation 3', description: '1 Joystick original de Playstation 3 (PS3)', brand:'Sony', approved: 'true', photo_url:'http://img1.mlstatic.com/sony-dualshock-3-joystick-ps3-original-en-blister-sellado_MLA-O-3157517244_092012.jpg', "category_ids" => [joysticks_category._id, consolas_category._id])
joystick_wii_product = Product.new(name: 'Joystick Control Wii', description: 'Joystick para Nintendo Wii con Motion Plus ya incorporado', brand:'Nintendo', approved: 'true', photo_url:'http://mla-s1-p.mlstatic.com/joystick-control-wii-remote-motion-plus-inside-nintendo-caja-5015-MLA4111449273_042013-F.jpg', "category_ids" => [joysticks_category._id, consolas_category._id])
joystick_xbox_product = Product.new(name: 'Joystick Xbox 360', description: 'Joystick inalámbrico original para Xbox 360. ', brand:'Microsoft', approved: 'true', photo_url:'http://mla-s2-p.mlstatic.com/joystick-inalambrico-microsoft-xbox-360-wireless-windows-4852-MLA3897219121_022013-F.jpg', "category_ids" => [joysticks_category._id, consolas_category._id])
articulos_embarazadas_1_product = Product.new(name: 'Bebes Neocuore', description: 'Baby doopler para escuchar los sonidos del feto en la panza', brand:'Neocuore', approved: 'true', photo_url:'http://bimg1.mlstatic.com/bebes-neocuore-baby-doopler-escucha-fetal-angel-sounds_MLA-F-3118570597_092012.jpg', "category_ids" => [articulos_embarazadas_category._id, bebes_category._id])
articulos_embarazadas_2_product = Product.new(name: 'Almohadon Wawita', description: 'Almohandón para amamantar chico. Original 100%', brand:'Titanes y princesas', approved: 'true', photo_url:'http://mla-s2-p.mlstatic.com/almohadon-wawita-para-amamantar-chico-original-100-5260-MLA4291332453_052013-O.jpg', "category_ids" => [articulos_embarazadas_category._id, bebes_category._id])
articulos_embarazadas_3_product = Product.new(name: 'Ama-manta', description: 'Novedosos accesorio para amamantar', brand:'Amores de mamá', approved: 'true', photo_url:'http://mla-s2-p.mlstatic.com/ama-manta-un-novedoso-accesorio-para-amamantar-6280-MLA98613359_4521-O.jpg', "category_ids" => [articulos_embarazadas_category._id, bebes_category._id])
juguetes_bebes_1_product = Product.new(name: 'Gimansio para bebés', description: 'Gimnasio para bebé rainforest deluxe con música y luces', brand:'Fisher Price', approved: 'true', photo_url:'http://mla-s2-p.mlstatic.com/gimnasio-para-bebe-fisher-price-rainforest-deluxe-musica-luz-4869-MLA3916825554_032013-O.jpg', "category_ids" => [juguetes_bebes_category._id, bebes_category._id])
juguetes_bebes_2_product = Product.new(name: 'Mesa didáctica para bebés', description: 'Mesa didáctiva para bebés con música, luces y sonidos para estimulara los niños.', brand:'Infantops', approved: 'true', photo_url:'http://mla-s1-p.mlstatic.com/mesa-didactica-musicalluzsonidoestimula-a-tus-ninosnueva-7154-MLA5164850020_102013-O.jpg', "category_ids" => [juguetes_bebes_category._id, bebes_category._id])
juguetes_bebes_3_product = Product.new(name: 'Arco Musical para bebés', description: 'Arco musical móvil de juguete para bebes. Acoplable a cunas', brand:'R&R Babies', approved: 'true', photo_url:'http://mla-s1-p.mlstatic.com/arco-musical-movil-de-juguete-para-bebes-para-cuna-4718-MLA4929951026_082013-O.jpg', "category_ids" => [juguetes_bebes_category._id, bebes_category._id])
seguridad_bebes_1_product = Product.new(name: 'Piso de goma eva', description: 'Piso de goma exa encastrable de 36 piezas con letras y números. Ideas para proteger a tu bebé mientras juega', brand:'Full Deportes', approved: 'true', photo_url:'http://img2.mlstatic.com/pisos-goma-eva-encatrable-x-36-piezas-letras-y-numeros-dvd_MLA-O-3058173864_082012.jpg', "category_ids" => [seguridad_bebes_category._id, bebes_category._id])
seguridad_bebes_2_product = Product.new(name: 'Baby video call', description: 'Video baby call con cámara y LCD de 2.4Ghz wireless', brand:'Tecnología para niños', approved: 'true', photo_url:'http://img1.mlstatic.com/video-baby-call-camara-y-lcd-24-wireless-24ghz-nino-bebe_MLA-O-3216836178_102012.jpg', "category_ids" => [seguridad_bebes_category._id, bebes_category._id])
seguridad_bebes_3_product = Product.new(name: 'Puertas para bebes', description: 'Puertitas de protección de seguridad para bebés. Sirve para puertas y escaleras', brand:'Cuidacaídas', approved: 'true', photo_url:'http://mla-s1-p.mlstatic.com/puertitas-proteccion-seguridad-bebes-ninos-puertas-escaleras-5392-MLA4365027152_052013-F.jpg', "category_ids" => [seguridad_bebes_category._id, bebes_category._id])
videojuego1_product = Product.new(name: 'Pes 2013 Pro Evolution Soccer Nintendo Wii', description: 'Pro Evolution Soccer 2013 para Nintendo Wii', brand:'Konami', approved: 'true', photo_url:'http://mla-s1-p.mlstatic.com/pes-2013-pro-evolution-soccer-nintendo-wii-original-garantia-7134-MLA5171529120_102013-F.jpg', "category_ids" => [videojuegos_category._id, consolas_category._id])
videojuego2_product = Product.new(name: 'GTA 5 para Playstation 3 (PS3)', description: 'Grand Theft Auto 5 para Playstation 3 (PS3). Recién llegados, 2013.', brand:'Rockstar', approved: 'true', photo_url:'http://mla-s2-p.mlstatic.com/gta-5-grand-theft-auto-5-gta-v-playstation-3-ps3-stock-ya-6358-MLA5047806674_092013-F.jpg', "category_ids" => [videojuegos_category._id, consolas_category._id])
videojuego3_product = Product.new(name: 'God Of War Saga Collection para Playstation 3 (PS3)', description: 'Incluye God of War I, God of War II, God of War III, God Of War: Chains of Olympus y God Of War: Ghost of Sparta (con contenido extra)', brand:'Santa Monica', approved: 'true', photo_url:'http://mla-s2-p.mlstatic.com/god-of-war-saga-collection-ps3-nuevo-y-sellado-4870-MLA3903926775_022013-F.jpg', "category_ids" => [videojuegos_category._id, consolas_category._id])
videojuego4_product = Product.new(name: 'Mario Party 9 para Nintendo Wii', description: 'Nuevo Mario Party 9 para Nintendo Wii en caja cerrada', brand:'Nintendo', approved: 'true', photo_url:'http://mla-s1-p.mlstatic.com/mario-party-9-para-nintendo-wii-2876-MLA4816716399_082013-F.jpg', "category_ids" => [videojuegos_category._id, consolas_category._id])
videojuego5_product = Product.new(name: 'Far Cry 3 para Xbox 360', description: 'Far Cry 3 para Xbox 360, clasificado dentro de los mejores juegos del 2013. En caja cerrada', brand:'Ubisoft', approved: 'true', photo_url:'http://mla-s1-p.mlstatic.com/far-cry-3-ps3-y-xbox-360-de-los-mejores-juegos-del-ano-5052-MLA4155431417_042013-O.jpg', "category_ids" => [videojuegos_category._id, consolas_category._id])
videojuego6_product = Product.new(name: 'The Sims 3 para PC', description: 'Juego de los Sims 3 para PC original', brand:'EA Games', approved: 'true', photo_url:'http://img1.mlstatic.com/los-sims-3-pc-juego-pc-sim-3-original-the-sims-3-simulador_MLA-O-54100654_3920.jpg', "category_ids" => [videojuegos_category._id, consolas_category._id])
bodega1_product = Product.new(name: 'Biblioteca Componible Bodega', description: 'Biblioteca Componible Bodega Con Porta Copas Reproex R-15113', brand:'Home Project', approved: 'true', photo_url:'http://mla-s1-p.mlstatic.com/biblioteca-componible-bodega-con-porta-copas-reproex-r-15113-4427-MLA3641312906_012013-F.jpg', "category_ids" => [bodegas_category._id, bebidas_alcoholicas_category._id])
bodega2_product = Product.new(name: 'Bodega Mini Para Pared', description: 'Bodega Mini Para Pared para 6 botellas', brand:'The Wine Comany', approved: 'true', photo_url:'http://mla-s1-p.mlstatic.com/bodega-mini-para-pared-de-4-o-6-botellas-varios-colores-4051-MLA4892626390_082013-F.jpg', "category_ids" => [bodegas_category._id, bebidas_alcoholicas_category._id])
bodega3_product = Product.new(name: 'Bodega Y Biblioteca Reproex 15113', description: 'Bodega Y Biblioteca Reproex 15113 100% Melamina Importada', brand:'The Wine Comany', approved: 'true', photo_url:'http://mla-s2-p.mlstatic.com/bodega-y-biblioteca-reproex-15113-100-melamina-importada-6300-MLA96911441_1067-O.jpg', "category_ids" => [bodegas_category._id, bebidas_alcoholicas_category._id])
camaras_accesorios_1_product = Product.new(name: 'Cámara polaroid', description: 'aárma polaroid Land 1000 y 600 instantánea + Kit + Film 2013', brand:'Polaroid', approved: 'true', photo_url:'http://mla-s2-p.mlstatic.com/camara-poalroid-land-1000-y-600-instantanea-kit-film-2013-3248-MLA4831902280_082013-F.jpg', "category_ids" => camaras_accesorios_category._id)
camaras_accesorios_2_product = Product.new(name: 'Cámara analógica', description: 'Cámara Lomo Styles - 2, 3 y 4 lentes.', brand:'Lomo', approved: 'true', photo_url:'http://mla-s1-p.mlstatic.com/camaras-lomo-styles-2-3-y-4-lentes-precio-unico--3319-MLA4841617954_082013-O.jpg', "category_ids" => camaras_accesorios_category._id)
camaras_accesorios_3_product = Product.new(name: 'Cámara digital', description: 'Cámara digital Nikon l310 14MP 21xVideo HD-HDMI + memoria de 8GB + Bolso', brand:'Nikon', approved: 'true', photo_url:'http://mla-s1-p.mlstatic.com/camara-digital-nikon-l310-14mp-21x-video-hd-hdmi-8gbbolso-4854-MLA3926163089_032013-F.jpg', "category_ids" => camaras_accesorios_category._id)
accesorios_camaras_1_product = Product.new(name: 'Flash para cámara', description: 'Flash Yongnuo YN-560II Para Nikon y Canon. Guía 58', brand:'Tongnuo', approved: 'true', photo_url:'http://mla-s2-p.mlstatic.com/flash-yongnuo-yn-560ii-p-nikon-canon-guia-58-envio-gratis-4178-MLA2772632237_062012-O.jpg', "category_ids" => [accesorios_camaras_category._id, camaras_accesorios_category._id])
accesorios_camaras_2_product = Product.new(name: 'Trípode para cámaras', description: 'Trípode 1-75m para cámara o filmadora de aluminio negro y universal', brand:'Exotec', approved: 'true', photo_url:'http://bimg1.mlstatic.com/tripode-175m-p-camara-o-filmadora-aluminio-negro-universal_MLA-F-129853760_5246.jpg', "category_ids" => [accesorios_camaras_category._id, camaras_accesorios_category._id])
accesorios_camaras_3_product = Product.new(name: 'Mochila para cámaras', description: 'Mochila lowepro flipside 400AW para réflex, Canon, Nikon y Sony', brand:'Lowepro', approved: 'true', photo_url:'http://img2.mlstatic.com/mochila-lowepro-flipside-400aw-preflex-canon-nikon-sony_MLA-O-133593101_9209.jpg', "category_ids" => [accesorios_camaras_category._id, camaras_accesorios_category._id])
laboratorios_1_product = Product.new(name: 'Papél fotográfico', description: 'Papel fotográfico autoadhesivo Matte 100grs', brand:'Kennen', approved: 'true', photo_url:'http://bimg2.mlstatic.com/papel-fotografico-autoadhesivo-matte-100grs-kennen_MLA-F-3025555597_082012.jpg', "category_ids" => [laboratorios_category._id, camaras_accesorios_category._id])
laboratorios_2_product = Product.new(name: 'Timer Digital', description: 'Timer digital para ampliadoras fotográficas con conteo regresivo. Pantalla digital. Fácil manejo', brand:'AmpliTimer', approved: 'true', photo_url:'http://mla-s2-p.mlstatic.com/timer-digital-ampliadoras-fotograficas-conteo-regresivo-6385-MLA5057363815_092013-F.jpg', "category_ids" => [laboratorios_category._id, camaras_accesorios_category._id])
laboratorios_3_product = Product.new(name: 'Kiosko digital', description: 'Kiosko digital de fotografía', brand:'Mitsubishi', approved: 'true', photo_url:'http://mla-s1-p.mlstatic.com/kiosco-digital-fotografico-mitsubishi-7613-MLA5250294381_102013-O.jpg', "category_ids" => [laboratorios_category._id, camaras_accesorios_category._id])
alcohol1_product = Product.new(name: 'Souvenirs Botellitas De Fernets Personalizadas', description: 'Souvenirs Botellitas De Fernets Personalizadas x 10 unidades', brand:'Licores Sensaciones', approved: 'true', photo_url:'http://mla-s1-p.mlstatic.com/souvenirs-botellitas-de-fernets-personalizadas-x-10-unidades-4708-MLA3818908777_022013-F.jpg', "category_ids" => bebidas_alcoholicas_category._id)
alcohol2_product = Product.new(name: 'Latas Coleccionables Fernet Branca', description: 'Latas Coleccionables Fernet Branca modelos 2013 por unidad', brand:'Licores Sensaciones', approved: 'true', photo_url:'http://img1.mlstatic.com/s_MLA_v_C_f_5255098967_102013.jpg', "category_ids" => bebidas_alcoholicas_category._id)
alcohol3_product = Product.new(name: 'Cartel Cerveza Quilmes', description: 'Cartel Cerveza Quilmes con botella giratoria', brand:'Quilmes', approved: 'true', photo_url:'http://mla-s1-p.mlstatic.com/cartel-cerveza-quilmesbotella-giratoria-5476-MLA4451884366_062013-F.jpg', "category_ids" => bebidas_alcoholicas_category._id)
alcohol4_product = Product.new(name: 'Chopera De Cerveza Tirada', description: 'Chopera De Cerveza Tirada Barrilito P/2 Botellas-clasica', brand:'Licores Sensaciones', approved: 'true', photo_url:'http://mla-s2-p.mlstatic.com/chopera-de-cerveza-tirada-barrilito-p2-botellas-clasica-6215-MLA97079969_4255-O.jpg', "category_ids" => bebidas_alcoholicas_category._id)
alcohol5_product = Product.new(name: 'Cerveza Quilmes Botellas Edicion Limitada', description: 'Cerveza Quilmes Botellas Edicion Limitada', brand:'Quilmes', approved: 'true', photo_url:'http://mla-s1-p.mlstatic.com/cerveza-quilmes-botellas-edicion-limitada-6527-MLA5079723704_092013-F.jpg', "category_ids" => bebidas_alcoholicas_category._id)
alcohol6_product = Product.new(name: 'Antigua Botella De Cerveza Quilmes Cristal', description: 'Antigua Botella De Cerveza Quilmes Cristal', brand:'Quilmes', approved: 'true', photo_url:'http://mla-s1-p.mlstatic.com/antigua-botella-de-cerveza-quilmes-cristal-5528-MLA4482050022_062013-F.jpg', "category_ids" => bebidas_alcoholicas_category._id)
alcohol7_product = Product.new(name: 'Cava Vinos Heladera Conservadora', description: 'Cava Vinos Heladera Conservadora 8 Botellas Coolbrand Jc 23a', brand:'Coolbrand', approved: 'true', photo_url:'http://mla-s2-p.mlstatic.com/cava-vinos-heladera-conservadora-8-botellas-coolbrand-jc-23a-4030-MLA123030248_1003-O.jpg', "category_ids" => bebidas_alcoholicas_category._id)
cigarros1_product = Product.new(name: 'Cigarros Italianos Toscanellos', description: 'Cigarros Italianos Toscanellos Caja X 5 Cafe Y Vainilla', brand:'Toscano', approved: 'true', photo_url:'http://mla-s1-p.mlstatic.com/cigarros-italianos-toscanellos-caja-x-5-cafe-y-vainilla-7219-MLA5189868934_102013-O.jpg', "category_ids" => [cigarros_pipas_category._id, bebidas_alcoholicas_category._id])
cigarros2_product = Product.new(name: 'Pipa Ropp Boquilla Acrilico', description: 'Pipa Ropp Boquilla Acrilico únicos en Buenos Aires', brand:'Ropp', approved: 'true', photo_url:'http://img2.mlstatic.com/pipa-ropp-boquilla-acrilico-unicas-en-buenos-aires-microcent_MLA-O-3272108427_102012.jpg', "category_ids" => [cigarros_pipas_category._id, bebidas_alcoholicas_category._id])
cigarros3_product = Product.new(name: 'Antigua Pipa Curva Bristol', description: 'Antigua Pipa Curva Bristol Sport Texturada Virola Punzonada', brand:'Bristol', approved: 'true', photo_url:'http://mla-s1-p.mlstatic.com/antigua-pipa-curva-bristol-sport-texturada-virola-punzonada-7821-MLA5286586132_102013-F.jpg', "category_ids" => [cigarros_pipas_category._id, bebidas_alcoholicas_category._id])
cigarros4_product = Product.new(name: 'Lote De Cajas De Cigarrillos Coleccion', description: 'Gran lote de 56 cajas box de cigarrillos de 10 y de 20', brand:'Varias', approved: 'true', photo_url:'http://mla-s1-p.mlstatic.com/lote-de-cajas-de-cigarrillos-coleccion-camel-marlborolucky-7936-MLA5297197968_102013-F.jpg', "category_ids" => [cigarros_pipas_category._id, bebidas_alcoholicas_category._id])
cigarros5_product = Product.new(name: 'Colección Marlboro Puzzle', description: 'Colección Marlboro Puzzle', brand:'Marlboro', approved: 'true', photo_url:'http://mla-s2-p.mlstatic.com/coleccion-marlboro-puzzle-5663-MLA4984854685_092013-F.jpg', "category_ids" => [cigarros_pipas_category._id, bebidas_alcoholicas_category._id])
auris_product = Product.new(name: 'Auricular Philips Shl3000', description: 'Auricular Philips Shl3000 Plegable Tipo Dj En Varios Colores', brand:'Philips', approved: 'true', photo_url:'http://mla-s2-p.mlstatic.com/auricular-philips-shl3000-plegable-tipo-dj-en-varios-colores-3266-MLA4832010937_082013-O.jpg', "category_ids" => [accesorios_audio_category._id, equipos_audio_category._id])
auris2_product = Product.new(name: 'Auriculares Sony Mdr Zx-300', description: 'Auriculares Sony Mdr Zx-300 Super potenciados', brand:'Sony', approved: 'true', photo_url:'http://mla-s2-p.mlstatic.com/auriculares-sony-mdr-zx-300-super-potenciados-microcentro-5132-MLA4222201428_042013-F.jpg', "category_ids" => [accesorios_audio_category._id, equipos_audio_category._id])
auris3_product = Product.new(name: 'Auriculares Sony Mdr Zx100', description: 'Auriculares Sony Mdr Zx100. Mejor distorsión y rango dinámico', brand:'Sony', approved: 'true', photo_url:'http://mla-s2-p.mlstatic.com/auriculares-sony-mdr-zx100-fashion-mejor-precio-microcentro-7965-MLA5308617554_102013-O.jpg', "category_ids" => [accesorios_audio_category._id, equipos_audio_category._id])
auris4_product = Product.new(name: 'Auriculares Apple Earpods', description: 'Auriculares Apple Earpods con control remoto, se ajustan perfectamente al oído', brand:'Apple', approved: 'true', photo_url:'http://mla-s1-p.mlstatic.com/auriculares-apple-earpods-ccontrol-garantia-microcentro--5139-MLA4234186056_042013-O.jpg', "category_ids" => [accesorios_audio_category._id, equipos_audio_category._id])
mic_product = Product.new(name: 'Micrófono Retro Para Pc', description: 'Micrófono para PC con estética retro. Se conecta a la máquina por medio de una ficha de 3,5 mm. No requiere ningún driver o software especial. Es ideal para Skype', brand:'Bebop', approved: 'true', photo_url:'http://img1.mlstatic.com/microfono-retro-para-pc-bebop-regalos-regalos-originales_MLA-O-3329539764_102012.jpg', "category_ids" => [accesorios_audio_category._id, equipos_audio_category._id])
minicomponente_product = Product.new(name: 'Minicomponente Philips Fwm6500', description: 'Equipo De Audio Minicomponente Philips Fwm6500 Usb Mp3 910w', brand:'Philips', approved: 'true', photo_url:'http://www.grupomarquez.com.ar/image/cache/data/productos-octubre/Minicomponente-Philips-FWM-6500-500x500.jpg', "category_ids" => equipos_audio_category._id)
minicomponente2_product = Product.new(name: 'Minicomponente Noblex Mnx 190', description: 'Minicomponente Noblex Mnx 190 Usb, Mp3 Aux', brand:'Noblex', approved: 'true', photo_url:'http://mla-s2-p.mlstatic.com/minicomponente-noblex-mnx-190-usb-mp3-aux-7245-MLA5189446532_102013-F.jpg', "category_ids" => equipos_audio_category._id)
parlantes_product = Product.new(name: 'Home Theater Noganet', description: 'Parlantes Noganet Home Theater 5.1 H5176u Necxus', brand:'Noganet', approved: 'true', photo_url:'http://bimg1.mlstatic.com/parlantes-noganet-home-theater-51-h5176u-necxus_MLA-F-3011820367_082012.jpg', "category_ids" => equipos_audio_category._id)
parlantes2_product = Product.new(name: 'Parlantes Genius Sw-5.1 1010', description: 'Parlantes Genius Sw-5.1 1010 Home Theater 18wats Con Control Remoto', brand:'Genius', approved: 'true', photo_url:'http://mla-s2-p.mlstatic.com/parlantes-genius-sw-51-1010-home-theater-18wats-con-remoto-5181-MLA4181027545_042013-F.jpg', "category_ids" => equipos_audio_category._id)
parlantes3_product = Product.new(name: 'Parlantes 5.1 Edifier R451', description: 'Parlantes 5.1 Edifier R451', brand:'Edifier', approved: 'true', photo_url:'http://mla-s1-p.mlstatic.com/parlantes-51-edifier-r451-usados-6910-MLA5127184604_092013-O.jpg', "category_ids" => equipos_audio_category._id)
rep_dvd_product = Product.new(name: 'Reproductor Dvd Philips Dvp3800x/77', description: 'Reproductor Dvd Philips Dvp3800x/77 Divx Avi Mp3 1 Año Gtia', brand:'Philips', approved: 'true', photo_url:'http://mla-s1-p.mlstatic.com/reproductor-dvd-philips-dvp3800x77-divx-avi-mp3-1-ano-gtia-5166-MLA4262908304_052013-O.jpg', "category_ids" => [equipos_video_category._id, televisores_category._id])
rep_bluray_product = Product.new(name: 'Reproductor Blu-ray Samsung E5300', description: 'Reproductor Blu-ray Samsung E5300 Usb Hdmi Lan Player Dvd Cd', brand:'Samsung', approved: 'true', photo_url:'http://mla-s2-p.mlstatic.com/reproductor-blu-ray-samsung-e5300-usb-hdmi-lan-player-dvd-cd-5366-MLA4370614866_052013-O.jpg', "category_ids" => [equipos_video_category._id, televisores_category._id])
anteojos_3d_product = Product.new(name: 'Lentes Anteojos 3d Sony', description: 'Lentes Anteojos 3d Sony Tdg-br250b 100% Original', brand:'Sony', approved: 'true', photo_url:'http://mla-s2-p.mlstatic.com/lentes-anteojos-3d-sony-tdg-br250b-100-original-554-MLA4698689386_072013-O.jpg', "category_ids" => [accesorios_video_category._id, televisores_category._id])
anteojos_3d_genericos_product = Product.new(name: 'Lentes 3d Gafas 3d Anteojos Genéricos', description: 'Lentes 3d Gafas 3d Anteojos Genéricos Azul Rojo', brand:'Genérico', approved: 'true', photo_url:'http://mla-s2-p.mlstatic.com/lentes-3d-gafas-3d-anteojos-3d-recien-llegados-de-usa-6207-MLA86485359_3246-O.jpg', "category_ids" => [accesorios_video_category._id, televisores_category._id])
tv32_product = Product.new(name: 'Tv Led 32 Hd Philips 32pfl3008g', description: 'Tv Led 32 Hd Philips 32pfl3008g Hdmi Usb Sinto Dig Integrado', brand:'Philips', approved: 'true', photo_url:'http://mla-s1-p.mlstatic.com/tv-led-32-hd-philips-32pfl3008g-hdmi-usb-sinto-dig-integrado-7296-MLA5177971218_102013-F.jpg', "category_ids" => televisores_category._id)
smart32_product = Product.new(name: 'Tv Led 32 Samsung D4000', description: 'Tv Led 32 Samsung D4000 Smart Tv Full Hd Usb Hdmi Wi Bluetooth', brand:'Samsung', approved: 'true', photo_url:'http://bimg2.mlstatic.com/tv-led-32-samsung-d4000-samrt-tv-full-hd-usb-hdmi-wi-bluetoo_MLA-F-133023363_9288.jpg', "category_ids" => televisores_category._id)
tv22_product = Product.new(name: 'Tv Lcd LG 22 Combo Monitor + Sintonizadora ', description: 'Tv Lcd 22 Combo Monitor + Sintonizadora 1080p Garantía 3 Años', brand:'LG', approved: 'true', photo_url:'http://mla-s1-p.mlstatic.com/tv-lcd-22-combo-monitor-sintonizadora-1080p-garantia-3-ano-4054-MLA126435644_3941-O.jpg', "category_ids" => televisores_category._id)
soportetv32_product = Product.new(name: 'Soporte Lcd Iofi 32 Movil', description: 'Soporte Lcd Iofi 32 Movil. Calidad Superior Primera Marca', brand:'Iofi', approved: 'true', photo_url:'http://mla-s2-p.mlstatic.com/soporte-lcd-iofi-32-movil-calidad-superior-primera-marca-4081-MLA103603528_9482-O.jpg', "category_ids" => televisores_category._id)
soportetv40_product = Product.new(name: 'Soporte Lcd Iofi 40 42 46 52', description: 'Soporte Lcd Iofi -doble Brazo Articulado Movil 40 42 46 52', brand:'Iofi', approved: 'true', photo_url:'http://mla-s1-p.mlstatic.com/soporte-lcd-iofi-doble-brazo-articulado-movil-40-42-46-52-6253-MLA98603365_7068-O.jpg', "category_ids" => televisores_category._id)
gps_product = Product.new(name: 'Gps G4000 Garmin', description: 'Gps G4000 Garmin Xt Lcd 4.3 Mapas De Argentina Cargados Gtia', brand:'Garmin', approved: 'true', photo_url:'http://bimg1.mlstatic.com/gps-g4000-garmin-xt-lcd-43-mapas-de-argentina-cargados-gtia_MLA-F-3406338886_112012.jpg', "category_ids" => gps_category._id)
gps2_product = Product.new(name: 'Gps 7 Pulgadas Garmin Xt ', description: 'Gps 7 Pulgadas Garmin Xt Tv Digital Bluetooth + 2gb Office', brand:'Garmin', approved: 'true', photo_url:'http://mla-s2-p.mlstatic.com/gps-7-pulgadas-garmin-xt-tv-digital-bluetooth-2gb-office-4026-MLA120961928_6622-F.jpg', "category_ids" => gps_category._id)
gps3_product = Product.new(name: 'Gps IMODO Igo9', description: 'Gps IMODO Igo9 Lcd 4.3 con mapas Garmin ', brand:'IMODO', approved: 'true', photo_url:'http://www.e-intershopping.com/tienda/4040-3860-large/gps-i-modo-g4000-caja-auriculares-cables-cargador.jpg', "category_ids" => gps_category._id)
soportegps_product = Product.new(name: 'Combo Soporte + Cargador GPS', description: 'Combo Soporte Completo + Cargador Auto 12v Garmin Nuvi 200', brand:'Garmin', approved: 'true', photo_url:'http://mla-s1-p.mlstatic.com/combo-soporte-completo-cargador-auto-12v-garmin-nuvi-200-4105-MLA145677725_5839-O.jpg', "category_ids" => gps_category._id)
soportegps2_product = Product.new(name: 'Soporte Genérico Auto para GPS o Celular', description: 'Soporte Universal Auto Celular Gps Pda Mp4 Iphone Blackberry', brand:'Genérico', approved: 'true', photo_url:'http://bimg2.mlstatic.com/soporte-universal-auto-celular-gps-pda-mp4-iphone-blackberry_MLA-F-3441803489_112012.jpg', "category_ids" => gps_category._id)
soportegps3_product = Product.new(name: 'Soporte Gps Garmin Nuvi', description: 'Soporte Gps Garmin Nuvi Para Moto Bicicleta', brand:'Genérico', approved: 'true', photo_url:'http://mla-s2-p.mlstatic.com/soporte-gps-garmin-nuvi-para-moto-bicicleta-200-205w-255-265-6073-MLA4560627903_062013-O.jpg', "category_ids" => gps_category._id)
entradas_eventos_1_product = Product.new(name: 'Sander Van Doorn', description: 'Sander Van Doorn es un DJ y productor musical holandés de música trance y house', brand:'Ticketet', approved: 'true', photo_url:'http://static.ticketek.com.ar/show/images/SANDERMP13_show_img_show__3f1.jpg', "category_ids" => [entradas_eventos_category._id, musica_electronica_category._id, musica_category._id])
entradas_eventos_2_product = Product.new(name: 'Les Luthiers', description: 'Presentando Chist! Con lo mejor de sus espectáculos -Mastropiero que Nunca-, -Bromato de Armonio- o -Muchas Gracias de Nada-, entre otros, ¡Chist! es uno de los más brillantes shows de la historia de Les Luthiers', brand:'Ticketet', approved: 'true', photo_url:'data:image/jpeg;base64,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', "category_ids" => [entradas_eventos_category._id, musica_category._id])
entradas_eventos_3_product = Product.new(name: 'Partido de tenis', description: 'Venus Williams vs. Serena Williams en el court central del Buenos Aires Lawn Tennis Club', brand:'Ticketet', approved: 'true', photo_url:'http://static4.ticketek.com.ar/newsite/sites/default/files/styles/artist/public/williams_s_1029.jpg', "category_ids" =>  [entradas_eventos_category._id, indumentaria_tenis_hombre_category._id, indumentaria_tenis_mujer_category._id])
entradas_eventos_4_product = Product.new(name: 'HOCKEY WORLD LEAGUE 2013', description: ' Del sábado 30 de Noviembre al domingo 8 de Diciembre en el Estadio Natación y Gimnasia.', brand:'Ticketet', approved: 'true', photo_url:'http://static.ticketek.com.ar/show/images/WLEAGUE13_show_img_show_.jpg', "category_ids" => [entradas_eventos_category._id, indumentaria_hockey_hombre_category._id, indumentaria_hockey_mujer_category._id])
metronomo_product = Product.new(name: 'Metronomo Cherub Wsm001', description: 'Metronomo Cherub Wsm001 Digital Con Audifono', brand:'Genérico', approved: 'true', photo_url:'http://img2.mlstatic.com/metronomo-cherub-wsm001-digital-con-audifono-envios-garantia_MLA-O-118824065_5006.jpg', "category_ids" => [accesorios_musica_category._id, instrumentos_musicales_category._id])
afinador_product = Product.new(name: 'Afinador cromático', description: 'Afinador digital con metrónomo incluido y generador de tonos', brand:'Musedo', approved: 'true', photo_url:'http://mla-s2-p.mlstatic.com/afinador-cromatico-metronomo-generador-de-tonos-cclip-4432-MLA3625727268_012013-O.jpg', "category_ids" => [accesorios_musica_category._id, instrumentos_musicales_category._id])
metronomo2_product = Product.new(name: 'Metronomo Joyo Jm66w', description: 'Metronomo Joyo Jm66w Mecanico Simil Madera', brand:'Joyo', approved: 'true', photo_url:'http://mla-s2-p.mlstatic.com/metronomo-joyo-jm66w-mecanico-simil-madera-en-palermo-4189-MLA2828892248_062012-O.jpg', "category_ids" => [accesorios_musica_category._id, instrumentos_musicales_category._id])
criolla_product = Product.new(name: 'Guitarra Clasica Criolla', description: 'Guitarra Clasica Criolla Estudio C/ Funda Y Dvd', brand:'Famusic', approved: 'true', photo_url:'http://mla-s1-p.mlstatic.com/ff-guitarra-clasica-criolla-estudio-c-funda-y-dvd-envios-4078-MLA141230203_6323-O.jpg', "category_ids" => [guitarras_category._id, instrumentos_musicales_category._id])
acustica_product = Product.new(name: 'Guitarra Acústica', description: 'Guitarra Electro Criolla Acustica Amplif Cable Pua Fender', brand:'Famusic', approved: 'true', photo_url:'http://bimg1.mlstatic.com/guitarra-electro-criolla-acustica-amplif-cable-pua-fender-_MLA-F-3368270286_112012.jpg', "category_ids" => [guitarras_category._id, instrumentos_musicales_category._id])
electrica_product = Product.new(name: 'Guitarra Electrica Epiphone', description: 'Guitarra Electrica Epiphone By Gibson Les Paul Lp-100', brand:'Famusic', approved: 'true', photo_url:'http://www.dv247.es/assets/products/37110_l.jpg', "category_ids" => [guitarras_category._id, instrumentos_musicales_category._id])
ampli_product = Product.new(name: 'Amplificador Guitarra Electrica Crimson G10', description: 'Amplificador Guitarra Electrica Crimson G10 Crn 10 Watts', brand:'Crimson', approved: 'true', photo_url:'http://mla-s2-p.mlstatic.com/amplificador-guitarra-electrica-crimson-g10-crn-10-watts-4079-MLA129384652_3531-O.jpg', "category_ids" => [guitarras_category._id, instrumentos_musicales_category._id])
banqueta_product = Product.new(name: 'Banqueta Para Piano', description: 'Banqueta para piano de altura regulable', brand:'Rpb', approved: 'true', photo_url:'http://mla-s1-p.mlstatic.com/banqueta-para-piano-regulable-rpb-4481-MLA3659746797_012013-F.jpg', "category_ids" => [pianos_category._id, instrumentos_musicales_category._id])
pianoflexible_product = Product.new(name: 'Teclado Piano Flexible Enrollable', description: 'Teclado Piano Flexible Enrollable Plegable Portatil 49teclas', brand:'Genérico', approved: 'true', photo_url:'http://mla-s1-p.mlstatic.com/teclado-piano-flexible-enrollable-plegable-portatil-49teclas-3172-MLA4830863978_082013-F.jpg', "category_ids" => [pianos_category._id, instrumentos_musicales_category._id])
pianoprincipiantes_product = Product.new(name: 'Casio Sa46 Teclado Para Niños Principiantes', description: 'Casio Sa46 Teclado Para Niños Principiantes', brand:'Casio', approved: 'true', photo_url:'http://mla-s2-p.mlstatic.com/casio-sa46-teclado-para-ninos-principiantes-6166-MLA4601300918_072013-F.jpg', "category_ids" => [pianos_category._id, instrumentos_musicales_category._id])
piano5octavas_product = Product.new(name: 'Teclado Casio Lk125', description: 'Casio Lk125 Teclado Portatil De 5 Octavas Teclas Luminosas', brand:'Casio', approved: 'true', photo_url:'http://mla-s1-p.mlstatic.com/casio-lk125-teclado-portatil-de-5-octavas-teclas-luminosas-4050-MLA118391612_3867-O.jpg', "category_ids" => [pianos_category._id, instrumentos_musicales_category._id])
platillos_product = Product.new(name: 'Platillo Set P/ Bateria Zildjian Planet Z4', description: 'Platillo Set P/ Bateria Zildjian Planet Z4 Hi Hat Crash Ride', brand:'Zildjian', approved: 'true', photo_url:'http://img2.mlstatic.com/platillo-set-p-bateria-zildjian-planet-z4-hi-hat-crash-ride_MLA-O-93484544_6166.jpg', "category_ids" => [baterias_category._id, instrumentos_musicales_category._id])
bateria_product = Product.new(name: 'Bateria Completa Orion', description: 'Bateria Completa Orion Drums 5 Cuerpos Platos Palillos', brand:'Orion', approved: 'true', photo_url:'http://img2.mlstatic.com/bateria-completa-orion-drums-5-cuerpos-platos-palillos-gtia_MLA-O-90445354_3032.jpg', "category_ids" => [baterias_category._id, instrumentos_musicales_category._id])
bateria_ninos_product = Product.new(name: 'Bateria P/ Niños Power M ', description: 'Bateria P/ Niños Power M 5 Cuerpos C/ Fierros Y Platillos', brand:'Famusic', approved: 'true', photo_url:'http://mla-s1-p.mlstatic.com/bateria-p-ninos-power-m-5-cuerpos-c-fierros-y-platillos-4013-MLA117074917_9841-O.jpg', "category_ids" => [baterias_category._id, instrumentos_musicales_category._id])
bateria_electronica_product = Product.new(name: 'Bateria Electronica Profesional', description: 'Bateria Electronica Profesional 7 Pads Usb 2pedales', brand:'GnMusic', approved: 'true', photo_url:'http://mla-s1-p.mlstatic.com/bateria-electronica-profesional-7-pads-usb-2pedales-garantia-5080-MLA4158706463_042013-F.jpg', "category_ids" => [baterias_category._id, instrumentos_musicales_category._id])
muneco_bebe_product = Product.new(name: 'Muñeco de bebé muy real', description: 'Bebotes Reales Marca Casita De Muñecas', brand:'Casita de Muñecas', approved: 'true', photo_url:'http://mla-s2-p.mlstatic.com/bebotes-reales-marca-casita-de-munecas-al-mejor-precio-4705-MLA4930019767_082013-O.jpg', "category_ids" => [juguetes_mujer_category._id, juguetes_category._id])
casa_barbie_product = Product.new(name: 'Casita Muñecas Barbie', description: 'Casita Muñecas Barbie Pintada Y Decorada Con Muebles', brand:'Casita de Muñecas', approved: 'true', photo_url:'http://mla-s1-p.mlstatic.com/casita-munecas-barbie-pintada-y-decorada-con-muebles-4195-MLA2884003544_072012-F.jpg', "category_ids" => [juguetes_mujer_category._id, juguetes_category._id])
cochecito_munecas_product = Product.new(name: 'Cochecito De Muñecas', description: 'Cochecito De Muñecas Travel System Kiddy Jogguer O 4 Ruedas', brand:'Kiddy', approved: 'true', photo_url:'http://mla-s2-p.mlstatic.com/cochecito-de-munecas-travel-system-kiddy-jogguer-o-4-ruedas-5332-MLA4314744258_052013-O.jpg', "category_ids" => [juguetes_mujer_category._id, juguetes_category._id])
perrito_barbie_product = Product.new(name: 'Perrito Barbie', description: 'Perrito Caniche Interactivo Barbie Sequin. Incluye cepillo, labial, anteojos, 2 pilas AA. Recomendado para +3 años', brand:'Mattel', approved: 'true', photo_url:'http://www.jugueteriatomy.com/image/cache/data/Productos/3001802%20CANICHE%20SEQUIN%20BARBIE-500x500.jpg', "category_ids" => [juguetes_mujer_category._id, juguetes_category._id])
barbie_sirena_product = Product.new(name: 'Barbie Sirena', description: 'Barbie Sirena Color Magic Original', brand:'Mattel', approved: 'true', photo_url:'http://mla-s1-p.mlstatic.com/barbie-sirena-color-magic-original-mattel-3935-MLA4884880229_082013-O.jpg', "category_ids" => [juguetes_mujer_category._id, juguetes_category._id])
barbie_fiat_product = Product.new(name: 'Barbie Fiat 500', description: 'Barbie + Fiat 500. Un coche de Barbie igual al modelo real', brand:'Mattel', approved: 'true', photo_url:'http://img1.mlstatic.com/barbie-fiat-500-munecacocheoriginal-mattel_MLA-O-3450836205_112012.jpg', "category_ids" => [juguetes_mujer_category._id, juguetes_category._id])
piccolo_product = Product.new(name: 'Muñeco de Dragon Ball', description: 'Dragon Ball Z Piccolo La Batalla De Los Dioses', brand:'BCN Toys', approved: 'true', photo_url:'http://mla-s1-p.mlstatic.com/dragon-ball-z-piccoro-la-batalla-de-los-dioses-5883-MLA5006423260_092013-F.jpg', "category_ids" => [juguetes_hombre_category._id, juguetes_category._id])
actionman_product = Product.new(name: 'Muñeco de Action Man Piloto', description: 'Action Man Piloto De Carreras', brand:'Hasbro', approved: 'true', photo_url:'http://mla-s2-p.mlstatic.com/action-man-piloto-de-carreras-ano-2003-6286-MLA98414305_7588-O.jpg', "category_ids" => [juguetes_hombre_category._id, juguetes_category._id])
spiderman_mask_product = Product.new(name: 'Mascara Del Hombre Araña', description: 'Mascara Del Hombre Araña Original Hasbro', brand:'Hasbro', approved: 'true', photo_url:'http://mla-s2-p.mlstatic.com/mascara-del-hombre-arana-original-hasbro-5353-MLA4342393614_052013-F.jpg', "category_ids" => [juguetes_hombre_category._id, juguetes_category._id])
patineta_product = Product.new(name: 'Patineta - Skate', description: 'Patineta Skate De 4 Ruedas De Hombre Araña Cars Ben 10 Hot Wheels. Ideal para chicos. Estampado de cada personaje', brand:'Hasbro', approved: 'true', photo_url:'http://i367.photobucket.com/albums/oo114/oatyr/08-%2009-2011/2012-07-13299.jpg', "category_ids" => [juguetes_hombre_category._id, juguetes_category._id])
helicoptero_product = Product.new(name: 'Helicóptero Action Man', description: 'Action Man Set Helicoptero Nuevo En Blister', brand:'Hasbro', approved: 'true', photo_url:'http://mla-s2-p.mlstatic.com/action-man-set-helicoptero-nuevo-en-blister-hasbro-4792-MLA3884787955_022013-F.jpg', "category_ids" => [juguetes_hombre_category._id, juguetes_category._id])
autito_product = Product.new(name: 'Hot Wheels Lamborghini', description: 'Hot Wheels 2010 Lamborghini Gallardo Lp 560-4 All Stars 121', brand:'Hot Wheels', approved: 'true', photo_url:'http://mla-s2-p.mlstatic.com/hot-wheels-2010-lamborghini-gallardo-lp-560-4-all-stars-121-5513-MLA4969807882_092013-F.jpg', "category_ids" => [juguetes_hombre_category._id, juguetes_category._id])
autito2_product = Product.new(name: 'Hot Wheels Auto Volver Al Futuro De Lorean', description: 'Hot Wheels Auto Volver Al Futuro De Lorean Juguete Original', brand:'Hot Wheels', approved: 'true', photo_url:'http://mla-s1-p.mlstatic.com/hot-wheels-auto-volver-al-futuro-de-lorean-juguete-original-4459-MLA3663358460_012013-F.jpg', "category_ids" => [juguetes_hombre_category._id, juguetes_category._id])
peliculas_series_1_product = Product.new(name: 'Iron Man 3', description: 'Iron Man 3 Blu Ray + DVD', brand:'3D Mania', approved: 'true', photo_url:'http://mla-s1-p.mlstatic.com/iron-man-3-3-d-blu-ray-dvd-somos-3-d-mania-2407-MLA4793987865_082013-O.jpg', "category_ids" => peliculas_series_category._id)
peliculas_series_2_product = Product.new(name: 'Harry Potter Collection', description: 'Harry Potter Collection 12 Discos', brand:'', approved: 'true', photo_url:'http://mla-s2-p.mlstatic.com/harry-potter-collection-1-512-discos-edicion-limitada-4113-MLA2560727766_042012-F.jpg', "category_ids" => peliculas_series_category._id)
peliculas_series_3_product = Product.new(name: 'Trilogía Matrix', description: 'Trilogía Matrix Blu Ray', brand:'', approved: 'true', photo_url:'http://mla-s1-p.mlstatic.com/trilogia-completa-matrix-blu-ray-sellada-y-region-free-7034-MLA5151401807_102013-O.jpg', "category_ids" => peliculas_series_category._id)
peliculas_series_4_product = Product.new(name: 'Game Of Thrones', description: 'Game Of Thrones Temporada 1 Completa Blu Ray', brand:'HBO', approved: 'true', photo_url:'http://mla-s1-p.mlstatic.com/game-of-thrones-temporada-1-completa-blu-ray-no-permut-6919-MLA5135176469_102013-F.jpg', "category_ids" => peliculas_series_category._id)
peliculas_series_5_product = Product.new(name: 'Friends', description: 'Friends Serie Completa Original', brand:'WB', approved: 'true', photo_url:'http://mla-s2-p.mlstatic.com/friends-la-serie-completa-original-pal-import-39-dvd-4012-MLA4889399034_082013-F.jpg', "category_ids" => peliculas_series_category._id)
musica_alternativa_1_product = Product.new(name: 'Artic Monkeys', description: 'Artic Monkeys Whatever People Say I Am, Thats What Im Not', brand:'Domino Records', approved: 'true', photo_url:'http://mla-s1-p.mlstatic.com/arctic-monkeys-whatever-people-say-i-am-thatsvinilo-nuevo-4406-MLA4910606298_082013-O.jpg', "category_ids" => [musica_alternativa_category._id, musica_category._id])
musica_alternativa_2_product = Product.new(name: 'Bauhaus', description: 'Bauhaus In The Flat Field - 2CD', brand:'Omnibus Edition', approved: 'true', photo_url:'http://mla-s2-p.mlstatic.com/bauhaus-in-the-flat-field-boxset-2-cd-nuevo-cerrado-5562-MLA4970374612_092013-O.jpg', "category_ids" => [musica_alternativa_category._id, musica_category._id])
musica_alternativa_3_product = Product.new(name: 'David Bowie', description: 'David Bowie - Zeit! 77-79 Trilogía Berlín + vivo 5CD', brand:'Brian Eno', approved: 'true', photo_url:'http://mla-s1-p.mlstatic.com/david-bowie-zeit-77-79-trilogia-berlin-eno-vivo-5cd-5447-MLA4406651008_052013-O.jpg', "category_ids" => [musica_alternativa_category._id, musica_category._id])
musica_clasica_1_product = Product.new(name: 'Beethoven', description: 'Las 9 Sinfonias De Beethoven - 8 Discos De Vinilo Colección', brand:'Deutsche Grammophen', approved: 'true', photo_url:'http://mla-s2-p.mlstatic.com/las-9-sinfonias-de-beethoven-8-discos-de-vinilo-coleccion-5020-MLA4063420414_032013-F.jpg', "category_ids" => [musica_clasica_category._id, musica_category._id])
musica_clasica_2_product = Product.new(name: 'Mozart: The Complete Piano Concertos', description: 'Mozart: The Complete Piano Concertos - D Barenboim. 10 Cds', brand:'Warner Classics', approved: 'true', photo_url:'http://mla-s1-p.mlstatic.com/mozart-the-complete-piano-concertos-d-barenboim-10-cds-5609-MLA4980348112_092013-F.jpg', "category_ids" => [musica_clasica_category._id, musica_category._id])
musica_bandas_sonoras_1_product = Product.new(name: 'Violetta - Cantar Es Lo Que Soy', description: 'Violetta - Cantar Es Lo Que Soy (CD + DVD)', brand:'Disney', approved: 'true', photo_url:'http://mla-s1-p.mlstatic.com/violetta-cantar-es-lo-que-soy-cddvd-4266-MLA3472494801_112012-O.jpg', "category_ids" => [musica_bandas_sonoras_category._id, musica_category._id])
musica_bandas_sonoras_2_product = Product.new(name: 'Star Wars: El Imperio Contraataca', description: 'Star Wars: El Imerio Contraataca - Importada - 2 Vinilos', brand:'John Williams', approved: 'true', photo_url:'http://mla-s2-p.mlstatic.com/star-wars-el-imperio-contraataca-importada-2-vinilos-4555-MLA4917546371_082013-F.jpg', "category_ids" => [musica_bandas_sonoras_category._id, musica_category._id])
musica_blues_jazz_1_product = Product.new(name: 'Miles Davis Y Kind Of Blue La Creacion De Una Obra Maestra', description: 'Miles Davis Y Kind Of Blue La Creacion De Una Obra Maestra', brand:'Ashley Kahn', approved: 'true', photo_url:'http://mla-s2-p.mlstatic.com/miles-davis-y-kind-of-blue-la-creacion-de-una-obra-maestra-5430-MLA4398563362_052013-O.jpg', "category_ids" => [musica_blues_jazz_category._id, musica_category._id])
musica_blues_jazz_2_product = Product.new(name: 'Miles Davis Bitches Brew', description: 'Miles Davis Bitches Brew Legacy Edition (2 Cd + Dvd)', brand:'Teo Macero', approved: 'true', photo_url:'http://mla-s1-p.mlstatic.com/miles-davis-bitches-brew-legacy-edition-2-cd-dvd-oferta-6641-MLA5095332912_092013-O.jpg', "category_ids" => [musica_blues_jazz_category._id, musica_category._id])
musica_blues_jazz_3_product = Product.new(name: 'Scott Walker - The Collection 1967-1970', description: 'Scott Walker - The Collection 1967-1970 - 5 CDs', brand:'', approved: 'true', photo_url:'http://mla-s2-p.mlstatic.com/scott-walker-the-collection-1967-1970-5-cds-5564-MLA4485873856_062013-O.jpg', "category_ids" => [musica_blues_jazz_category._id, musica_category._id])
musica_cumbia_cuarteto_1_product = Product.new(name: 'Grupo Sombras - Dulce Amor', description: 'Grupo Sombras - Dulce Amor - CD Bajado De Vinilo, Excelente Sonido', brand:'Magenta', approved: 'true', photo_url:'http://mla-s1-p.mlstatic.com/grupo-sombras-dulce-amor-para-coleccionistas--4149-MLA141975893_9186-F.jpg', "category_ids" => [musica_cumbia_cuarteto_category._id, musica_category._id])
musica_cumbia_cuarteto_2_product = Product.new(name: 'Los Wawanco Varios Lps', description: 'Los Wawanco Varios Lps', brand:'Odeon Pops', approved: 'true', photo_url:'http://mla-s1-p.mlstatic.com/los-wawanco-varios-lps-5480-MLA4409032188_052013-F.jpg', "category_ids" => [musica_cumbia_cuarteto_category._id, musica_category._id])
musica_cumbia_cuarteto_3_product = Product.new(name: 'Rodrigo ', description: 'Rodrigo DVD En Vivo + CD - Show A2000', brand:'Magenta', approved: 'true', photo_url:'http://mla-s2-p.mlstatic.com/rodrigo-dvd-en-vivo-cd-todo-original-7136-MLA5162687111_102013-F.jpg', "category_ids" => [musica_cumbia_cuarteto_category._id, musica_category._id])
musica_cumbia_cuarteto_4_product = Product.new(name: 'Riki Maravilla Y Las Primas (Invencibles) 1989', description: 'Riki Maravilla Y Las Primas ( Invencibles) 1989 - Cd Bajado De Vinilo - Exelente Sonido', brand:'CBS', approved: 'true', photo_url:'http://mla-s1-p.mlstatic.com/riki-maravilla-y-las-primas-invencibles-1989-4160-MLA2625467298_042012-F.jpg', "category_ids" => [musica_cumbia_cuarteto_category._id, musica_category._id])
musica_dance_1_product = Product.new(name: 'Madonna - American Pie', description: 'Madonna - American Pie Remixes Vinilo Europeo', brand:'', approved: 'true', photo_url:'http://mla-s1-p.mlstatic.com/madonna-american-pie-remixes-vinilo-europeo-nuevo-537-MLA4691505988_072013-F.jpg', "category_ids" => [musica_dance_category._id, musica_category._id])
musica_dance_2_product = Product.new(name: 'The Smiths Sheila Take A Bow', description: 'The Smiths Sheila Take A Bow Maxi 7 Pulgadas', brand:'', approved: 'true', photo_url:'http://mla-s1-p.mlstatic.com/the-smiths-sheila-take-a-bow-maxi-7-pulgadas-2531-MLA4804188160_082013-O.jpg', "category_ids" => [musica_dance_category._id, musica_category._id])
musica_dance_3_product = Product.new(name: 'Depeche Mode', description: 'Depeche Mode 4 Vinilos Combo', brand:'', approved: 'true', photo_url:'http://mla-s2-p.mlstatic.com/depeche-mode-4-vinilos-combo-6603-MLA5088596296_092013-O.jpg', "category_ids" => [musica_dance_category._id, musica_category._id])
musica_electronica_1_product = Product.new(name: 'Kenix & Bobby Youngblood', description: 'Kenix & Bobby Youngblood Theres Never Been West End Maxi 12', brand:'West End Records', approved: 'true', photo_url:'http://mla-s1-p.mlstatic.com/kenix-bobby-youngblood-theres-never-been-west-end-maxi-12-7397-MLA5207984234_102013-F.jpg', "category_ids" => [musica_electronica_category._id, musica_category._id])
musica_electronica_2_product = Product.new(name: 'Disco Funk Soul Boogie Silvia Striplin Give Me Your Love', description: 'Disco Funk Soul Boogie Silvia Striplin Give Me Your Love - Producido Por Roy Ayers Prensado Inglés 1980', brand:'Champagne Records', approved: 'true', photo_url:'http://mla-s1-p.mlstatic.com/disco-funk-soul-boogie-silvia-striplin-give-me-maxi-12-7503-MLA5236283815_102013-F.jpg', "category_ids" => [musica_electronica_category._id, musica_category._id])
musica_electronica_3_product = Product.new(name: 'Donna Summer Bad Girls (1979)', description: 'Donna Summer Bad Girls CD Original', brand:'Poly Gram Records', approved: 'true', photo_url:'http://mla-s1-p.mlstatic.com/donna-summer-bad-girls-1979-cd-original-imp-nuevo-sellado-4775-MLA4930897925_082013-F.jpg', "category_ids" => [musica_electronica_category._id, musica_category._id])
musica_folklore_1_product = Product.new(name: 'Abel Pintos - Abel', description: 'Abel Pintos - Abel', brand:'The Music Store Compact Disc & DVD', approved: 'true', photo_url:'http://mla-s2-p.mlstatic.com/abel-pintos-abel-cd-nuevo-cerrado-7697-MLA5259805989_102013-O.jpg', "category_ids" => [musica_folklore_category._id, musica_category._id])
musica_folklore_2_product = Product.new(name: 'Chaqueño Palavecino De Pura Cepa', description: 'Chaqueño Palavecino De Pura Cepa', brand:'The Music Store Compact Disc & DVD', approved: 'true', photo_url:'http://mla-s1-p.mlstatic.com/chaqueno-palavecino-de-pura-cepa-cd-nuevo-cerrado-5833-MLA5003030565_092013-O.jpg', "category_ids" => [musica_folklore_category._id, musica_category._id])
musica_funk_1_product = Product.new(name: 'Jamiroquai - Live At Montreux 2003', description: 'Jamiroquai - Live At Montreux 2003', brand:'DVD Video', approved: 'true', photo_url:'http://mla-s2-p.mlstatic.com/jamiroquai-live-at-montreux-2003-dvd-original-7189-MLA5162438340_102013-F.jpg', "category_ids" => [musica_funk_category._id, musica_category._id])
musica_funk_2_product = Product.new(name: 'Gloria Gaynor I Wish You Love', description: 'Gloria Gaynor I Wish You Love - Edicion Especial 2 Cds Originales', brand:'Logic Records', approved: 'true', photo_url:'http://mla-s2-p.mlstatic.com/gloria-gaynor-i-wish-you-love-edicion-especial-2-cds-orig-7127-MLA5160951645_102013-F.jpg', "category_ids" => [musica_funk_category._id, musica_category._id])
musica_heavy_metal_1_product = Product.new(name: 'Pink Floyd Discovery', description: 'Pink Floyd Discovery Box Set 16 Cd + Libro', brand:'', approved: 'true', photo_url:'http://mla-s1-p.mlstatic.com/pink-floyd-discovery-box-set-16-cd-libro-cerrado-ultimo-6013-MLA4528795793_062013-O.jpg', "category_ids" => [musica_heavy_metal_category._id, musica_category._id])
musica_heavy_metal_2_product = Product.new(name: 'Anthrax: Aftershock - The Island Years 1985-1990', description: 'Anthrax: Aftershock - The Island Years 1985-1990 (4CDs)', brand:'Universal', approved: 'true', photo_url:'http://mla-s1-p.mlstatic.com/anthrax-aftershock-the-island-years-4-cd-7706-MLA5271791275_102013-F.jpg', "category_ids" => [musica_heavy_metal_category._id, musica_category._id])
musica_hip_hop_1_product = Product.new(name: 'Eminem All Access Europe', description: 'Eminem All Access Europe DVD', brand:'DVD Video', approved: 'true', photo_url:'http://img2.mlstatic.com/eminem-all-access-europe-dvd_MLA-O-91948213_4214.jpg', "category_ids" => [musica_hip_hop_category._id, musica_category._id])
musica_hip_hop_2_product = Product.new(name: 'Eminem - The Marshall Mathers Lp', description: 'Eminem - The Marshall Mathers Lp (2000)', brand:'Universal', approved: 'true', photo_url:'http://mla-s1-p.mlstatic.com/eminem-the-marshall-mathers-lp-5458-MLA4421019329_062013-F.jpg', "category_ids" => [musica_hip_hop_category._id, musica_category._id])
musica_infantil_1_product = Product.new(name: 'Cd Original Violetta Hoy Somos Mas', description: 'Cd Original Violetta Hoy Somos Mas', brand:'Disney', approved: 'true', photo_url:'http://mla-s2-p.mlstatic.com/cd-original-violetta-hoy-somos-mas-nuevo-a-solo-6490-6153-MLA4597863769_072013-O.jpg', "category_ids" => [musica_infantil_category._id, musica_category._id])
musica_infantil_2_product = Product.new(name: 'Panam - Laura Franco - Panam Y Circo', description: 'Panam - Laura Franco - Panam Y Circo - CD + DVD', brand:'El Trece', approved: 'true', photo_url:'http://img1.mlstatic.com/panam-laura-franco-panam-y-circo-cddvd_MLA-O-137540121_3783.jpg', "category_ids" => [musica_infantil_category._id, musica_category._id])
musica_instrumental_1_product = Product.new(name: 'Soul Meditation Songs', description: 'Soul Meditation Songs Vol. 1 - TAKESHI SAKATAGI & AKIRA YAKAMOSU', brand:'', approved: 'true', photo_url:'http://mla-s2-p.mlstatic.com/soul-meditation-songs-cd-nuevo-5126-MLA4213903763_042013-O.jpg', "category_ids" => [musica_instrumental_category._id, musica_category._id])
musica_instrumental_2_product = Product.new(name: 'Kenny G - Greatest Hits', description: 'Kenny G - Greatest Hits (2 Cd, Nuevo, Digipack)', brand:'', approved: 'true', photo_url:'http://mla-s1-p.mlstatic.com/kenny-g-greatest-hits-2-cd-nuevo-digipack-4792-MLA3877032841_022013-O.jpg', "category_ids" => [musica_instrumental_category._id, musica_category._id])
musica_karaoke_1_product = Product.new(name: 'Karaoke Para Dvd / Pc - Cumbia Elemental', description: 'Karaoke Para Dvd - Pc - Cumbia Elemental (84 Canciones)', brand:'Canto Manía Argentina', approved: 'true', photo_url:'http://mla-s1-p.mlstatic.com/karaoke-para-dvd-pc-cumbia-elemental-84-canciones-60-6004-MLA4570041110_062013-O.jpg', "category_ids" => [musica_karaoke_category._id, musica_category._id])
musica_karaoke_2_product = Product.new(name: 'Karaoke Para Dvd / Pc', description: 'Karaoke Para Dvd - Pc (10 Volúmenes - 120 Canciones)', brand:'Canto Manía Argentina', approved: 'true', photo_url:'http://mla-s1-p.mlstatic.com/karaoke-para-dvd-pc-10-volumenes-120-canciones-99-4194-MLA2616188022_042012-O.jpg', "category_ids" => [musica_karaoke_category._id, musica_category._id])
musica_pop_1_product = Product.new(name: 'Lady Gaga - Applause', description: 'Lady Gaga - Applause - Alemania (2 Track)', brand:'Streamline Records', approved: 'true', photo_url:'http://mla-s2-p.mlstatic.com/lady-gaga-applause-alemania-2-track-7601-MLA5258441071_102013-F.jpg', "category_ids" => [musica_pop_category._id, musica_category._id])
musica_pop_2_product = Product.new(name: 'Alanis Morissette - Live At Montreux 2012', description: 'Alanis Morissette - Live At Montreux 2012 DVD', brand:'Eagie Vision', approved: 'true', photo_url:'http://mla-s1-p.mlstatic.com/alanis-morissette-live-at-montreux-dvd-nuevo-importado-5141-MLA4259042283_052013-F.jpg', "category_ids" => [musica_pop_category._id, musica_category._id])
musica_pop_3_product = Product.new(name: 'Michael Jackson The Ultimate Collection', description: 'Michael Jackson The Ultimate Collection - 4 CDs + 1 DVD Boxset', brand:'Epic Records', approved: 'true', photo_url:'http://mla-s2-p.mlstatic.com/michael-jackson-ultimate-collection-4cd1dvd-boxset-6941-MLA5135563243_102013-O.jpg', "category_ids" => [musica_pop_category._id, musica_category._id])
musica_pop_4_product = Product.new(name: 'Sting Live In Berlin', description: 'Sting Live In Berlin CD + DVD', brand:'Steven Mercurio', approved: 'true', photo_url:'http://mla-s2-p.mlstatic.com/sting-live-in-berlin-cd-dvd-6114-MLA4593392857_072013-O.jpg', "category_ids" => [musica_pop_category._id, musica_category._id])
musica_ska_1_product = Product.new(name: 'The Clash-London Calling', description: 'The Clash-London Calling Vinilo Doble Nuevo Sellado Usa', brand:'Epic Records', approved: 'true', photo_url:'http://mla-s1-p.mlstatic.com/the-clash-london-calling-vinilo-doble-nuevo-sellado-usa-4383-MLA3518474955_122012-F.jpg', "category_ids" => [musica_ska_category._id, musica_category._id])
musica_ska_2_product = Product.new(name: 'Jauria Cd Libre O Muerto', description: 'Jauria Cd Libre O Muerto Holograma Limitado Ex Attaque 77', brand:'', approved: 'true', photo_url:'http://mla-s1-p.mlstatic.com/jauria-cd-libre-o-muerto-holograma-limitado-ex-attaque-77-3763-MLA4863342468_082013-O.jpg', "category_ids" => [musica_ska_category._id, musica_category._id])
musica_ska_3_product = Product.new(name: 'Ramones Rocket To Russia', description: 'Ramones Rocket To Russia Vinilo Nuevo Sellado Usa 180 Gr.', brand:'Safe Records', approved: 'true', photo_url:'http://mla-s2-p.mlstatic.com/ramones-rocket-to-russia-vinilo-nuevo-sellado-usa-180-gr-6176-MLA4636270636_072013-F.jpg', "category_ids" => [musica_ska_category._id, musica_category._id])
musica_reggae_1_product = Product.new(name: 'Bob Marley Songs Of Freedom', description: 'Bob Marley Songs Of Freedom Reggae 4 CD + DVD + Libro', brand:'', approved: 'true', photo_url:'http://mla-s1-p.mlstatic.com/bob-marley-songs-of-freedom-reggae-4-cd-dvd-libro-6883-MLA5122113682_092013-O.jpg', "category_ids" => [musica_reggae_category._id, musica_category._id])
musica_reggae_2_product = Product.new(name: 'Cd Cultura Profetica Audio Luna Park', description: 'Cd Cultura Profetica - 15 Aniversario En El Luna Park Doble Novedad', brand:'Compact Disc', approved: 'true', photo_url:'http://mla-s2-p.mlstatic.com/cd-cultura-profetica-audio-luna-park-doble-novedad-oferta-4903-MLA3952628970_032013-O.jpg', "category_ids" => [musica_reggae_category._id, musica_category._id])
musica_nacional_1_product = Product.new(name: 'Gustavo Cerati 11 Episodios Sinfónicos', description: 'Gustavo Cerati 11 Episodios Sinfónicos - DVD Excelente', brand:'DVD Video', approved: 'true', photo_url:'http://mla-s1-p.mlstatic.com/gustavo-cerati-11-episodios-sinfonicos-dvd-excelente-dvd-4162-MLA2576797482_042012-O.jpg', "category_ids" => [musica_nacional_category._id, musica_category._id])
musica_nacional_2_product = Product.new(name: 'Andrés Calamaro Bohemio', description: 'Andrés Calamaro Bohemio - CD Nuevo', brand:'The Music Store', approved: 'true', photo_url:'http://mla-s1-p.mlstatic.com/andres-calamaro-bohemio-cd-nuevo-6671-MLA5088883154_092013-O.jpg', "category_ids" => [musica_nacional_category._id, musica_category._id])
musica_nacional_3_product = Product.new(name: 'Soda Stereo 2 Dvds Me Verás Volver Gira', description: 'Soda Stereo 2 Dvds Me Verás Volver Gira 2007', brand:'DVD Video', approved: 'true', photo_url:'http://mla-s1-p.mlstatic.com/soda-stereo-2-dvds-me-veras-volver-gira-2007-6209-MLA55821710_7491-O.jpg', "category_ids" => [musica_nacional_category._id, musica_category._id])
musica_nacional_4_product = Product.new(name: 'No Te Va Gustar Público', description: 'No Te Va Gustar Público Cd + Dvd', brand:'The Music Store', approved: 'true', photo_url:'http://mla-s1-p.mlstatic.com/no-te-va-gustar-publico-cd-dvd-nuevo-cerrado-4146-MLA2549632704_032012-O.jpg', "category_ids" => [musica_nacional_category._id, musica_category._id])
musica_internacional_1_product = Product.new(name: 'Green Day - Bullet In A Bible', description: 'Green Day - Bullet In A Bible - Blu Ray Importado', brand:'DVD Video', approved: 'true', photo_url:'http://mla-s2-p.mlstatic.com/green-day-bullet-in-a-bible-blu-ray-importado-5082-MLA4136068337_042013-O.jpg', "category_ids" => [musica_internacional_category._id, musica_category._id])
musica_internacional_2_product = Product.new(name: 'Eric Clapton & Steve Winwood - Live From Madison Square Garden', description: 'Eric Clapton & Steve Winwood - Live From Madison Square Garden - Blu Ray Importado', brand:'Warner Music Argentina', approved: 'true', photo_url:'http://mla-s1-p.mlstatic.com/eric-clapton-steve-winwood-live-from-new-york-5024-MLA4135957222_042013-O.jpg', "category_ids" => [musica_internacional_category._id, musica_category._id])
musica_internacional_3_product = Product.new(name: 'Jack Johnson From Here To Now To You', description: 'Jack Johnson From Here To Now To You', brand:'Brushfire Records y  Universal Republic', approved: 'true', photo_url:'http://mla-s2-p.mlstatic.com/jack-johnson-from-here-to-now-to-you-cd-nuevo-cerrado-6873-MLA5122329298_092013-O.jpg', "category_ids" => [musica_internacional_category._id, musica_category._id])
musica_internacional_4_product = Product.new(name: 'Led Zeppelin - Celebration Day', description: 'Led Zeppelin - Celebration Day - 2 Cds + Blu Ray Importados', brand:'Warner Music Argentina', approved: 'true', photo_url:'http://mla-s1-p.mlstatic.com/led-zeppelin-celebration-day-2-cds-blu-ray-importados-5093-MLA4137749306_042013-F.jpg', "category_ids" => [musica_internacional_category._id, musica_category._id])
musica_tango_1_product = Product.new(name: 'Carlos Gardel Interpreta A Rafael Rossi', description: 'Carlos Gardel Interpreta A Rafael Rossi', brand:'Odeon', approved: 'true', photo_url:'http://mla-s1-p.mlstatic.com/gardel-interpreta-a-rafael-rossi--7329-MLA5200840079_102013-F.jpg', "category_ids" => [musica_tango_category._id, musica_category._id])
musica_tango_2_product = Product.new(name: 'Astor Piazzolla Y Milva - Live At Bouffes Du Nord', description: 'Astor Piazzolla Y Milva - Live At Bouffes Du Nord - CD Japon', brand:'Compact Disc', approved: 'true', photo_url:'http://mla-s2-p.mlstatic.com/astor-piazzolla-y-milva-live-at-bouffes-du-nord-cd-japan-66-MLA4641954398_072013-F.jpg', "category_ids" => [musica_tango_category._id, musica_category._id])
salud_1_product = Product.new(name: 'Revlon Esmaltes', description: 'Revlon Esmaltes Mas De 40 Tonos Para Elegir Perfumeria C/u', brand:'Revlon', approved: 'true', photo_url:'http://mla-s2-p.mlstatic.com/revlon-esmaltes-mas-de-40-tonos-para-elegir-perfumeria-cu-8004-MLA5308669882_102013-O.jpg', "category_ids" => salud_category._id)
salud_2_product = Product.new(name: 'Perfume Polo Blue By Ralph Lauren', description: 'Perfume Polo Blue By Ralph Lauren - 200 ml - Vap. Gigante', brand:'Ralph Lauren', approved: 'true', photo_url:'http://mla-s2-p.mlstatic.com/promo-enricco-perfume-polo-blue-by-ralph-lauren-gigante-5600-MLA4487839307_062013-O.jpg', "category_ids" => salud_category._id)
salud_3_product = Product.new(name: 'Perfumes Graines Halloween Jesus Del Pozo', description: 'Perfumes Graines Halloween Jesus Del Pozo - 100 ml', brand:'J. Del Pozo', approved: 'true', photo_url:'http://mla-s2-p.mlstatic.com/perfumes-graines-halloween-jesus-del-pozo-100-ml-caja-celof-4912-MLA3946556753_032013-O.jpg', "category_ids" => salud_category._id)
salud_4_product = Product.new(name: 'Jabon Liquido Tododia Natura', description: 'Jabon Liquido Tododia Natura 300 ml - Frutos Rojos, Algodon, Jazmin, Mora y Almendras', brand:'Natura', approved: 'true', photo_url:'http://mla-s1-p.mlstatic.com/jabon-liquido-tododia-natura-frutos-rojos-algodon-mora-e-7910-MLA5307822848_102013-O.jpg', "category_ids" => salud_category._id)
salud_5_product = Product.new(name: 'Peeling Mandelico Pieles Jovenes Poros Acne Rosacea Arrugas', description: 'Peeling Mandelico Pieles Jovenes Poros Acne Rosacea Arrugas - 75 ml', brand:'Idraet', approved: 'true', photo_url:'http://mla-s1-p.mlstatic.com/peeling-mandelico-pieles-jovenes-poros-acne-rosacea-arrugas-7426-MLA5217827896_102013-O.jpg', "category_ids" => salud_category._id)
relajacion_1_product = Product.new(name: 'Day Spa Platinum All Inclusive En Little Ranch Hotel Spa', description: 'Day Spa Platinum All Inclusive En Little Ranch Hotel Spa - El Hotel Se Encuentra Ubicado En Del Viso, Sobre Panamericana Ramal Pilar', brand:'Little Ranch Hotel Spa', approved: 'true', photo_url:'http://mla-s1-p.mlstatic.com/day-spa-platinum-all-inclusive-en-little-ranch-hotel-spa-6755-MLA5109228369_092013-O.jpg', "category_ids" => relajacion_category._id)
relajacion_2_product = Product.new(name: 'Camilla Termo Masajeadora Ceragem', description: 'Camilla Termo Masajeadora Ceragem En Villa Urquiza', brand:'Ceragem', approved: 'true', photo_url:'http://mla-s2-p.mlstatic.com/camilla-termo-masajeadora-ceragem-en-villa-urquiza-5752-MLA4996156464_092013-O.jpg', "category_ids" => relajacion_category._id)
relajacion_3_product = Product.new(name: 'Sillon Masajeador 8 Motores Relax Calor Reclinable', description: 'Sillon Masajeador 8 Motores Relax Calor Reclinable', brand:'Insuoffice', approved: 'true', photo_url:'http://mla-s2-p.mlstatic.com/sillon-masajeador-8-motores-relax-calor-reclinable-garantia-4085-MLA128727871_743-O.jpg', "category_ids" => relajacion_category._id)
ropa_mujer_1_product = Product.new(name: 'Zuecos Cuero Gamuzado', description: 'Zuecos Cuero Gamuzado - Talles Del 35 Al 40', brand:'Nina Molina', approved: 'true', photo_url:'http://mla-s1-p.mlstatic.com/zuecos-cuero-gamuzado-regalo-dia-de-la-madre-6735-MLA5107904197_092013-F.jpg', "category_ids" => [ropa_mujer_category._id, ropa_category._id])
ropa_mujer_2_product = Product.new(name: 'Blazer Importado Entallado Interior Forrado', description: 'Blazer Importado Entallado Interior Forrado Talles Xs - L', brand:'Amora', approved: 'true', photo_url:'http://mla-s1-p.mlstatic.com/blazer-importado-entallado-interior-forrado-talles-xs-l-7555-MLA5237322541_102013-O.jpg', "category_ids" => [ropa_mujer_category._id, ropa_category._id])
ropa_mujer_3_product = Product.new(name: 'Camisa Manga Larga Rayada', description: 'Camisa Manga Larga Rayada - Talles S, M y L', brand:'Koxis', approved: 'true', photo_url:'http://mla-s2-p.mlstatic.com/camisa-manga-larga-rayada-koxis-6803-MLA5120355649_092013-F.jpg', "category_ids" => [ropa_mujer_category._id, ropa_category._id])
ropa_hombre_1_product = Product.new(name: 'Camisas Abercrombie Leñadoras ', description: 'Camisas Abercrombie Leñadoras Originales Importadas Jmoulet', brand:'Abercrombie & Fitch', approved: 'true', photo_url:'http://mla-s1-p.mlstatic.com/camisas-abercrombie-lenadoras-originales-importadas-jmoulet-5368-MLA4348894682_052013-O.jpg', "category_ids" => [ropa_hombre_category._id, ropa_category._id])
ropa_hombre_2_product = Product.new(name: 'Montgomery Zara Para Hombre', description: 'Montgomery Zara Para Hombre', brand:'Zara', approved: 'true', photo_url:'http://img2.mlstatic.com/montgomery-zara-para-hombre-excelente-calidad_MLA-O-2947660518_072012.jpg', "category_ids" => [ropa_hombre_category._id, ropa_category._id])
ropa_hombre_3_product = Product.new(name: 'Corbatas Finitas Importadas Especiales Las Grandes Marcas', description: 'Corbatas Finitas Importadas Especiales Las Grandes Marcas', brand:'Las Grandes Marcas', approved: 'true', photo_url:'http://mla-s1-p.mlstatic.com/corbatas-finitas-importadas-especiales-las-grandes-marcas-4208-MLA2890990046_072012-O.jpg', "category_ids" => [ropa_hombre_category._id, ropa_category._id])
libro_novela_1_product = Product.new(name: 'Cincuenta Sombras De Grey - Saga Completa - L. James', description: 'Cincuenta Sombras De Grey - Saga Completa - L. James', brand:'Editorial Grijalbo', approved: 'true', photo_url:'http://mla-s2-p.mlstatic.com/cincuenta-sombras-de-grey-saga-completa-l-james-4967-MLA4940814079_082013-O.jpg', "category_ids" => [libro_novela_category._id, libros_category._id])
libro_novela_2_product = Product.new(name: 'Infierno - Dan Brown', description: 'Infierno - Dan Brown - 2013 - Idioma Castellano', brand:'Editorial Planeta', approved: 'true', photo_url:'http://mla-s2-p.mlstatic.com/inferno-dan-brown-6006-MLA4568817571_062013-F.jpg', "category_ids" => [libro_novela_category._id, libros_category._id])
libro_novela_3_product = Product.new(name: 'Rayuela - Julio Cortázar', description: 'Rayuela - Julio Cortázar', brand:'Editorial Cátedra', approved: 'true', photo_url:'http://mla-s2-p.mlstatic.com/julio-cortazar-rayuela-editorial-catedra-5107-MLA4184440215_042013-O.jpg', "category_ids" => [libro_novela_category._id, libros_category._id])
libro_suspenso_1_product = Product.new(name: 'Camino Sin Retorno - S. Alfredo Gallone', description: 'Camino Sin Retorno - S. Alfredo Gallone', brand:'Lajouane', approved: 'true', photo_url:'http://mla-s2-p.mlstatic.com/libro-camino-sin-retorno-1978-MLA4771898443_082013-F.jpg', "category_ids" => [libro_suspenso_category._id, libros_category._id])
libro_suspenso_2_product = Product.new(name: 'El Psicoanalísta - John Katzenbach', description: 'El Psicoanalísta - John Katzenbach - Novela Policial Thriller', brand:'Negra Zeta', approved: 'true', photo_url:'http://mla-s2-p.mlstatic.com/el-psicoanalista-john-katzenbach-novela-policial-thriller-300-MLA4676013568_072013-O.jpg', "category_ids" => [libro_suspenso_category._id, libros_category._id])
libro_filosofia_1_product = Product.new(name: 'W.K.C. Guthrie Historia De La Filosofía Griega', description: 'W.K.C. Guthrie Historia De La Filosofía Griega - Obra Completa 3 Tomos Edición 2012', brand:'Editorial Gredos', approved: 'true', photo_url:'http://mla-s2-p.mlstatic.com/wkc-guthrie-historia-de-la-filosofia-griega-edit-gredos-5815-MLA5007154459_092013-F.jpg', "category_ids" => [libro_filosofia_category._id, libros_category._id])
libro_filosofia_2_product = Product.new(name: 'Friedrich Nietzsche Ecce Homo', description: 'Friedrich Nietzsche Ecce Homo - Libros La Abadía', brand:'Alianza Editorial', approved: 'true', photo_url:'http://mla-s2-p.mlstatic.com/friedrich-nietzsche-ecce-homo-alianza-editorial-4826-MLA3912859459_032013-O.jpg', "category_ids" => [libro_filosofia_category._id, libros_category._id])
libro_infantiles_1_product = Product.new(name: 'Caídos Del Mapa - Edición Especial - María Inés Falconi', description: 'Caídos Del Mapa - Edición Especial - María Inés Falconi', brand:'Quipu', approved: 'true', photo_url:'http://mla-s1-p.mlstatic.com/caidos-del-mapa-edicion-especial-maria-ines-falconi-6466-MLA5065752802_092013-F.jpg', "category_ids" => [libro_infantiles_category._id, libros_category._id])
libro_infantiles_2_product = Product.new(name: 'Cuentos Infantiles', description: 'Cuentos Infantiles - Con Actividades Para Niños', brand:'Oceano', approved: 'true', photo_url:'http://mla-s2-p.mlstatic.com/hermoso-libro-de-cuentos-infantiles-4377-MLA3512867546_122012-O.jpg', "category_ids" => [libro_infantiles_category._id, libros_category._id])
libro_infantiles_3_product = Product.new(name: 'Libro Para Niños Dora La Exploradora, Colores De Nickelodeon', description: 'Libro Para Niños Dora La Exploradora, Colores De Nickelodeon', brand:'Distal Libros', approved: 'true', photo_url:'http://mla-s1-p.mlstatic.com/libro-para-ninos-dora-la-exploradora-colores-de-nickelodeon-6012-MLA4546260946_062013-O.jpg', "category_ids" => [libro_infantiles_category._id, libros_category._id])
libro_arte_1_product = Product.new(name: 'Coleccion Completa Grandes Pintores Del Siglo XX', description: 'Coleccion Completa Grandes Pintores Del Siglo XX - Son 48 Tomos De 32 Hojas Aprox. 50 Páginas', brand:'Globus', approved: 'true', photo_url:'http://mla-s1-p.mlstatic.com/vendo-coleccion-completa-grandes-pintores-del-siglo-xx-6561-MLA5081815464_092013-F.jpg', "category_ids" => [libro_arte_category._id, libros_category._id])
libro_arte_2_product = Product.new(name: 'Contactos Americanos - David Santoandré', description: 'Contactos Americanos - David Santoandré - Libro De Fotografía', brand:'', approved: 'true', photo_url:'http://mla-s2-p.mlstatic.com/libro-de-fotografia-contactos-americanos--6622-MLA5093250878_092013-F.jpg', "category_ids" => [libro_arte_category._id, libros_category._id])
libro_arte_3_product = Product.new(name: 'Maestros De La Pintura - 19 Tomos', description: 'Maestros De La Pintura - 19 Tomos', brand:'Editorial Planeta', approved: 'true', photo_url:'http://mla-s1-p.mlstatic.com/libreriaweb-maestros-de-la-pintura-19-tomos-4780-MLA3839532069_022013-F.jpg', "category_ids" => [libro_arte_category._id, libros_category._id])
libro_autoayuda_1_product = Product.new(name: 'Un Curso De Milagros. Foundation For Inner Peace', description: 'Un Curso De Milagros. Foundation For Inner Peace - Espacio Temático Especializado', brand:'Libros Catanael', approved: 'true', photo_url:'http://mla-s1-p.mlstatic.com/un-curso-de-milagros-foundation-for-inner-peace-1841-MLA4768865320_082013-O.jpg', "category_ids" => [libro_autoayuda_category._id, libros_category._id])
libro_autoayuda_2_product = Product.new(name: 'Hay Una Cura Para La Diabetes. Gabriel Cousens', description: 'Hay Una Cura Para La Diabetes - Programa De 21 Días Del Tree Of Life', brand:'Editorial Epidauro', approved: 'true', photo_url:'http://mla-s1-p.mlstatic.com/libro-hay-una-cura-para-la-diabetes-gabriel-cousens-4890-MLA3935688425_032013-O.jpg', "category_ids" => [libro_autoayuda_category._id, libros_category._id])
libro_autoayuda_3_product = Product.new(name: 'Nutricion Depurativa. Naturismo. Nestor Palmetti', description: 'Nutricion Depurativa. Naturismo. Nestor Palmetti', brand:'Espacio Depurativo', approved: 'true', photo_url:'http://mla-s1-p.mlstatic.com/nutricion-depurativa-naturismo-nestor-palmetti-1863-MLA4768733256_082013-O.jpg', "category_ids" => [libro_autoayuda_category._id, libros_category._id])
libro_ficcion_1_product = Product.new(name: 'Arrastrado Por El Mar - Nora Roberts', description: 'Arrastrado Por El Mar - Nora Roberts', brand:'Debolsillo', approved: 'true', photo_url:'http://mla-s2-p.mlstatic.com/arrastrado-por-el-mar-nora-roberts-en-papel-6540-MLA5078843227_092013-O.jpg', "category_ids" => [libro_ficcion_category._id, libros_category._id])
libro_ficcion_2_product = Product.new(name: 'Falsas Apariencias - Noelia Amarillo', description: 'Falsas Apariencias - Noelia Amarillo', brand:'Terciopelo Bolsillo', approved: 'true', photo_url:'http://mla-s1-p.mlstatic.com/falsas-apariencias-en-papel-noelia-amarillo-6594-MLA5078878760_092013-F.jpg', "category_ids" => [libro_ficcion_category._id, libros_category._id])
libro_ficcion_3_product = Product.new(name: 'Luna Comanche - Catherine Anderson', description: 'Luna Comanche - Catherine Anderson', brand:'Terciopelo', approved: 'true', photo_url:'http://mla-s1-p.mlstatic.com/luna-comanche-corazon-comanche-en-papel--6524-MLA5078900268_092013-O.jpg', "category_ids" => [libro_ficcion_category._id, libros_category._id])
energizantes_1_product = Product.new(name: 'Red Bull', description: 'Revitalizador de cuerpo y alma', brand:'Red Bull', approved: 'true', photo_url:'http://mla-s1-p.mlstatic.com/red-bull-4123-MLA2771584970_062012-O.jpg', "category_ids" => [energizantes_category._id, bebidas_alcoholicas_category._id])
energizantes_2_product = Product.new(name: 'Speed', description: 'Energizante.', brand:'Speed', approved: 'true', photo_url:'http://mla-s2-p.mlstatic.com/speed-unlimited-250-ml-consultar-por-envio-sin-cargo-7221-MLA5185131678_102013-O.jpg', "category_ids" => [energizantes_category._id, bebidas_alcoholicas_category._id])
portarretratos_albumes_1_product = Product.new(name: 'Portarretrato digital', description: 'Portarretrato digital SPF71E. Diseño simple y con estilo. Memoria interna 120MB. Tamaño de pantalla: 7 - 17cm (wide).', brand:'Samsung', approved: 'true', photo_url:'http://mla-s1-p.mlstatic.com/portraretrato-digital-samsung-spf-71e-nuevos-154-MLA4666798646_072013-O.jpg', "category_ids" => [portarretratos_albumes_category._id, camaras_accesorios_category._id])
portarretratos_albumes_2_product = Product.new(name: 'Portarretrato sin marco', description: 'Portarretrato convencional de vidrio sin marco 20x30cm', brand:'MoonGlass', approved: 'true', photo_url:'http://mla-s1-p.mlstatic.com/portarretrato-de-vidrio-sin-marco-20x30-cm-6290-MLA82011392_9533-O.jpg', "category_ids" => [portarretratos_albumes_category._id, camaras_accesorios_category._id])
portarretratos_albumes_3_product = Product.new(name: 'Álbum de fotos', description: 'Álbum de viaje para 200 fotos 13x18cm (ph57200/m-tr)', brand:'Travel', approved: 'true', photo_url:'http://mla-s1-p.mlstatic.com/album-de-viaje-p200-fotos-13x18-cm-ph57200m-tr-6389-MLA5055448364_092013-F.jpg', "category_ids" => [portarretratos_albumes_category._id, camaras_accesorios_category._id])
videocamaras_1_product = Product.new(name: 'Filmadora Digital Full HD', description: 'Filmadora digital full HD 1080p. Zoom óptico 20x. Lente Schneider. Fotos 5Mpx. Pantalla táctil LCD 2.7 pulgadas. Sensor CMOS. Estabilizados OIS Duo y WiFi.', brand:'Samsung', approved: 'true', photo_url:'http://mla-s1-p.mlstatic.com/filmadora-digital-full-hd-samsung-hmx-q10-zoom-20x-8gb-sd-5447-MLA4387661823_052013-F.jpg', "category_ids" => videocamaras_category._id)
videocamaras_2_product = Product.new(name: 'Filmadora HD Kodak', description: 'Filmadora Hd Kodak Zx5 Resistente Al Agua Full Hd 1080', brand:'Kodak', approved: 'true', photo_url:'http://mla-s2-p.mlstatic.com/filmadora-hd-kodak-zx5-resistente-al-agua-full-hd-1080-5692-MLA4977271239_092013-O.jpg', "category_ids" => videocamaras_category._id)
videocamaras_3_product = Product.new(name: 'Filmadora Panasonic M7', description: 'Cámara filmado M7 con accesorios y manual.', brand:'Panasonic', approved: 'true', photo_url:'http://mla-s2-p.mlstatic.com/camara-filmadora-panasonic-m7-5250-MLA4282853744_052013-F.jpg', "category_ids" => videocamaras_category._id)
celulares_1_product = Product.new(name: 'Galaxy S3 Mini', description: 'Samsung Smartphone S3 Mini con Android 4. LIBERADO', brand:'Samsung', approved: 'true', photo_url:'http://mla-s1-p.mlstatic.com/celular-smartphone-liberado-mini-s3-android-4-dual-sim-wifi-5280-MLA4294996396_052013-F.jpg', "category_ids" => celulares_category._id)
celulares_2_product = Product.new(name: 'Nokia Asha 311', description: 'Nokia Ashaa 311, nuevo, liberado con 2GB de memoria interna. Con garantía y cámara de 3Mp.', brand:'Nokia', approved: 'true', photo_url:'http://mla-s2-p.mlstatic.com/nokia-asha-311-nuevos-libres-2gb-gtia-camara-3mp-5117-MLA4217414210_042013-O.jpg', "category_ids" => celulares_category._id)
celulares_3_product = Product.new(name: 'LG Optimus L5 E620', description: 'LG Optimus L5 E620 con Android 4 nuevo, liberado y con garantía.', brand:'LG', approved: 'true', photo_url:'http://mla-s1-p.mlstatic.com/lg-optimus-l5-e620-android-nuevos-libres-garantia-6398-MLA5058144119_092013-O.jpg', "category_ids" => celulares_category._id)
celulares_4_product = Product.new(name: 'iPhone 5', description: 'iPhone 5 16GB. Pantalla de 4 pulgadas, liberado. Con WiFi. Chip A6 iOS6.', brand:'Apple', approved: 'true', photo_url:'http://mla-s1-p.mlstatic.com/apple-iphone-5-16gb-pantalla-4-wifi-liberado-chip-a6-ios6-5489-MLA4409239472_052013-F.jpg', "category_ids" => celulares_category._id)
accesorios_celulares_1_product = Product.new(name: 'Funda Galaxy S4', description: 'Funda Flip Cover S-View Original para Samsung Galaxy S4 + Film', brand:'Samsung', approved: 'true', photo_url:'http://mla-s2-p.mlstatic.com/funda-flip-cover-s-view-original-samsung-galaxy-s4-film-5524-MLA4459130853_062013-O.jpg', "category_ids" => [accesorios_celulares_category._id, celulares_category._id])
accesorios_celulares_2_product = Product.new(name: 'Memoria Micro SdHc 16GB', description: 'Memoria SdHC 16GB Clase 4 en microcentro. Marca Kingston. Garantía de por vida del fabricante.', brand:'Kingston', approved: 'true', photo_url:'http://mla-s2-p.mlstatic.com/memoria-micro-sd-hc-16gb-clase-4-mejor-precio-microcentro-4116-MLA2653363288_052012-O.jpg', "category_ids" => [accesorios_celulares_category._id, celulares_category._id])
accesorios_celulares_3_product = Product.new(name: 'Cargador portátil USB', description: 'Cargador portátil USB Sony. Sirve para celular, tablet, iPad y MP3. ', brand:'Sony', approved: 'true', photo_url:'http://mla-s2-p.mlstatic.com/cargador-portatil-usb-sony-bateria-pcelulartabletipadmp3-4135-MLA4896419789_082013-O.jpg', "category_ids" => [accesorios_celulares_category._id, celulares_category._id])
indumentaria_futbol_hombre_1_product = Product.new(name: 'Botines Adidas F10 Trx Fg', description: 'Botines Adidas F10 Trx Fg', brand:'Adidas', approved: 'true', photo_url:'http://mla-s2-p.mlstatic.com/botines-adidas-f10-trx-fg-envio-sin-cargo-7976-MLA5303922312_102013-O.jpg', "category_ids" => [indumentaria_futbol_hombre_category._id, ropa_category._id])
indumentaria_futbol_hombre_2_product = Product.new(name: 'Short Futbol Hombre Liso ', description: 'Short Futbol Hombre Liso Ideal Para Equipos', brand:'Mix Sport', approved: 'true', photo_url:'http://mla-s1-p.mlstatic.com/short-futbol-hombre-liso-ideal-para-equipos-packs-camisetas-5543-MLA4452829392_062013-F.jpg', "category_ids" => [indumentaria_futbol_hombre_category._id, ropa_category._id])
indumentaria_futbol_hombre_3_product = Product.new(name: 'Canilleras SNS Fútbol', description: 'Canilleras SNS Fútbol - Reforzadas, Ultralivianas, Talles S, M, L', brand:'SNS', approved: 'true', photo_url:'http://mla-s1-p.mlstatic.com/canilleras-sns-futbol-hockey-rugby-ultralivianas-7626-MLA5253180379_102013-F.jpg', "category_ids" => [indumentaria_futbol_hombre_category._id, ropa_category._id])
indumentaria_futbol_mujer_1_product = Product.new(name: 'Pelota Nº5 Nike Rosa Femenina Original', description: 'Pelota Nº5 Nike Rosa Femenina Original', brand:'Nike', approved: 'true', photo_url:'http://mla-s2-p.mlstatic.com/pelota-n5-nike-rosa-femenina-originalunicas-en-el-sitio--6143-MLA4629493882_072013-O.jpg', "category_ids" => [indumentaria_futbol_mujer_category._id, ropa_category._id])
indumentaria_futbol_mujer_2_product = Product.new(name: 'Nike Livestrong Dash Shorts Mujer - Dri Fit', description: 'Nike Livestrong Dash Shorts Mujer - Dri Fit - Talles S, M, L', brand:'Nike', approved: 'true', photo_url:'http://mla-s2-p.mlstatic.com/nike-livestrong-dash-shorts-mujer-dri-fit-talle-m-5367-MLA4963012522_092013-O.jpg', "category_ids" => [indumentaria_futbol_mujer_category._id, ropa_category._id])
indumentaria_futbol_mujer_3_product = Product.new(name: 'Top De Training Topper Fitness Mujer', description: 'Top De Training Topper Fitness Mujer - Prenda Sin Costuras - 90% Poliamida, 10% Elastano', brand:'Topper', approved: 'true', photo_url:'http://mla-s2-p.mlstatic.com/top-de-training-topper-fitness-mujer-156697-7245-MLA5180194025_102013-F.jpg', "category_ids" => [indumentaria_futbol_mujer_category._id, ropa_category._id])
indumentaria_basquet_hombre_1_product = Product.new(name: 'Camiseta NBA San Antonio', description: 'Camiseta NBA San Antonio', brand:'Adidas', approved: 'true', photo_url:'http://mla-s2-p.mlstatic.com/camiseta-nba-san-antonio-spurs-lakers-ginobili-bryant-y-mas-6129-MLA4591812485_072013-O.jpg', "category_ids" => [indumentaria_basquet_hombre_category._id, ropa_category._id])
indumentaria_basquet_hombre_2_product = Product.new(name: 'Zapatillas Basquet Original - Adizero', description: 'Zapatillas Basquet Original - Adizero - Variedad De Colores', brand:'Adidas', approved: 'true', photo_url:'http://mla-s1-p.mlstatic.com/zapatillas-basquet-original-a-pedido-adidas-adizero-cquick-7070-MLA5145716630_102013-F.jpg', "category_ids" => [indumentaria_basquet_hombre_category._id, ropa_category._id])
indumentaria_basquet_hombre_3_product = Product.new(name: 'Mascara Protectora Orbitas Pomulos Nariz', description: 'Mascara Protectora Orbitas Pomulos Nariz', brand:'Drial', approved: 'true', photo_url:'http://mla-s2-p.mlstatic.com/mascara-protectora-orbitas-pomulos-nariz-deportes-varios-5423-MLA4405041599_052013-O.jpg', "category_ids" => [indumentaria_basquet_hombre_category._id, ropa_category._id])
indumentaria_tenis_hombre_1_product = Product.new(name: 'Shorts Head - 360 ProShop', description: 'Shorts Head - 360 ProShop - Negro, Azul, Blanco', brand:'Head', approved: 'true', photo_url:'http://img2.mlstatic.com/shorts-head-nuevos-negroazulblanco-360proshop_MLA-O-3174368840_092012.jpg', "category_ids" => [indumentaria_tenis_hombre_category._id, ropa_category._id])
indumentaria_tenis_hombre_2_product = Product.new(name: 'Muñequeras Head X 2 Un. 10 Cms - 360 ProShop', description: 'Muñequeras Head X 2 Un. 10 Cms - Varios Colores - 360 ProShop', brand:'Head', approved: 'true', photo_url:'http://mla-s2-p.mlstatic.com/munequeras-head-x-2-un-10-cms-varios-colores360proshop-5573-MLA4476166497_062013-O.jpg', "category_ids" => [indumentaria_tenis_hombre_category._id, ropa_category._id])
indumentaria_tenis_hombre_3_product = Product.new(name: 'Vincha De Tenis Head', description: 'Vincha De Tenis Head - 3 Colores', brand:'Head', approved: 'true', photo_url:'http://mla-s2-p.mlstatic.com/vincha-y-munequera-de-tenis-head-3-colores-super-oferta-6217-MLA99712443_6665-O.jpg', "category_ids" => [indumentaria_tenis_hombre_category._id, ropa_category._id])
indumentaria_tenis_mujer_1_product = Product.new(name: 'Zapatillas Wilson Trance Impact - 360 ProShop', description: 'Zapatillas Wilson Trance Impact - 360 ProShop', brand:'Wilson', approved: 'true', photo_url:'http://mla-s2-p.mlstatic.com/zapatillas-wilson-trance-impact-mujeres-360proshop-4907-MLA3975383779_032013-O.jpg', "category_ids" => [indumentaria_tenis_mujer_category._id, ropa_category._id])
indumentaria_tenis_mujer_2_product = Product.new(name: 'Calza Con Pollera De Tenis Topper Mujer (156484)', description: 'Calza Con Pollera De Tenis Topper Mujer (156484) - Negro, Gris', brand:'Topper', approved: 'true', photo_url:'http://mla-s1-p.mlstatic.com/calza-con-pollera-de-tenis-topper-mujer-156484-7125-MLA5167775944_102013-F.jpg', "category_ids" => [indumentaria_tenis_mujer_category._id, ropa_category._id])
indumentaria_tenis_mujer_3_product = Product.new(name: 'Pollera Con Short, Adidas', description: 'Pollera Con Short, Adidas - Talles S, M, L', brand:'Adidas', approved: 'true', photo_url:'http://mla-s2-p.mlstatic.com/pollera-con-short-adidas-tenisjockey-talle-m-8017-MLA5321477803_112013-F.jpg', "category_ids" => [indumentaria_tenis_mujer_category._id, ropa_category._id])
indumentaria_golf_hombre_1_product = Product.new(name: 'Zapatilla De Golf Adidas Adicross', description: 'Zapatilla De Golf Adidas Adicross - Color Blanco Y Negro - Incluye 2 Cordones', brand:'Adidas', approved: 'true', photo_url:'http://mla-s2-p.mlstatic.com/zapatilla-de-golf-adidas-adicross-envios-a-todo-el-pais-5-MLA4654230918_072013-O.jpg', "category_ids" => [indumentaria_golf_hombre_category._id, ropa_category._id])
indumentaria_golf_hombre_2_product = Product.new(name: 'Kaddygolf - Guante Sintetico Para Golf', description: 'Kaddygolf - Guante Sintetico Para Golf Con Refuerzo De Cabertilla', brand:'Intech', approved: 'true', photo_url:'http://mla-s2-p.mlstatic.com/kaddygolf-guante-sintetico-para-golf-hombre-y-mujer-6132-MLA4605236861_072013-O.jpg', "category_ids" => [indumentaria_golf_hombre_category._id, ropa_category._id])
indumentaria_golf_hombre_3_product = Product.new(name: 'Cinturon De La Linea Golf De Adidas', description: 'Cinturon De La Linea Golf De Adidas - Colores Blanco Y Negro', brand:'Adidas', approved: 'true', photo_url:'http://mla-s1-p.mlstatic.com/exclusivo-cinturon-de-la-linea-golf-de-adidas-importados-5742-MLA4989558817_092013-O.jpg', "category_ids" => [indumentaria_golf_hombre_category._id, ropa_category._id])
indumentaria_golf_mujer_1_product = Product.new(name: 'Kaddygolf Zapatos Puma Tour Saddle', description: 'Kaddygolf Zapatos Puma Tour Saddle - Impermeables - Tapones Intercambiables', brand:'Puma', approved: 'true', photo_url:'http://mla-s2-p.mlstatic.com/kaddygolf-zapatos-puma-tour-saddle-dama--4490-MLA4913469670_082013-O.jpg', "category_ids" => [indumentaria_golf_mujer_category._id, ropa_category._id])
indumentaria_golf_mujer_2_product = Product.new(name: 'Zapatos De Dama Foot Joy Footjoy Lopro', description: 'Zapatos De Dama Foot Joy Footjoy Lopro #97217', brand:'Foot Joy', approved: 'true', photo_url:'http://mla-s1-p.mlstatic.com/zapatos-de-dama-foot-joy-footjoy-lopro-97217-4922-MLA3937393381_032013-F.jpg', "category_ids" => [indumentaria_golf_mujer_category._id, ropa_category._id])
indumentaria_golf_mujer_3_product = Product.new(name: 'Campera Buzo Nike Golf Dri Fit', description: 'Campera Buzo Nike Golf Dri Fit - Frizada En El Interior', brand:'Nike', approved: 'true', photo_url:'http://mla-s1-p.mlstatic.com/campera-buzo-nike-golf-dri-fit-dama-5449-MLA4380152324_052013-O.jpg', "category_ids" => [indumentaria_golf_mujer_category._id, ropa_category._id])
indumentaria_natacion_hombre_1_product = Product.new(name: 'Malla Slip Speedo Natacion New Monogram', description: 'Traje De Baño - Malla Slip Speedo Natacion New Monogram', brand:'Speedo', approved: 'true', photo_url:'http://mla-s2-p.mlstatic.com/traje-de-bano-malla-slip-speedo-natacion-new-monogram-6965-MLA5137435995_102013-O.jpg', "category_ids" => [indumentaria_natacion_hombre_category._id, ropa_category._id])
indumentaria_natacion_hombre_2_product = Product.new(name: 'Short Aquashort Speedo Lane', description: 'Short Aquashort Speedo Lane - Endurance', brand:'Speedo', approved: 'true', photo_url:'http://bimg1.mlstatic.com/short-aquashort-speedo-lane_MLA-F-3172169171_092012.jpg', "category_ids" => [indumentaria_natacion_hombre_category._id, ropa_category._id])
indumentaria_natacion_hombre_3_product = Product.new(name: 'Malla Larga Sharkskin Talle 32 Xl Junior Comp. Natación', description: 'Malla Larga Sharkskin Talle 32 Xl Junior Comp. Natación', brand:'Speedo', approved: 'true', photo_url:'http://mla-s1-p.mlstatic.com/malla-larga-sharkskin-talle-32-xl-junior-comp-natacion-6825-MLA5110837916_092013-O.jpg', "category_ids" => [indumentaria_natacion_hombre_category._id, ropa_category._id])
indumentaria_natacion_mujer_1_product = Product.new(name: 'Malla de natación ', description: 'Malla Natacion De Dama Konna Deportes Acuaticos Pileta Buceo', brand:'Konna', approved: 'true', photo_url:'http://mla-s2-p.mlstatic.com/malla-natacion-de-dama-konna-deportes-acuaticos-pileta-buceo-6205-MLA60464180_5711-O.jpg', "category_ids" => [indumentaria_natacion_mujer_category._id, ropa_category._id])
indumentaria_natacion_mujer_2_product = Product.new(name: 'Malla Para mujer de natación', description: 'Malla P/mujer Natacion Con Piernas Konna Talles:s AL XXL', brand:'Konna', approved: 'true', photo_url:'http://mla-s1-p.mlstatic.com/malla-pmujer-natacion-con-piernas-konna-talless-al-xxl-5347-MLA4318951266_052013-F.jpg', "category_ids" => [indumentaria_natacion_mujer_category._id, ropa_category._id])
indumentaria_natacion_mujer_3_product = Product.new(name: 'Show de mujer para natación', description: 'Short De Mujer Para Natacion Malla De Mujer Natacion - Anticloro', brand:'Swimming-Sym', approved: 'true', photo_url:'http://mla-s2-p.mlstatic.com/short-de-mujer-para-natacion-malla-de-mujer-natacion-7293-MLA5181478808_102013-O.jpg', "category_ids" => [indumentaria_natacion_mujer_category._id, ropa_category._id])
indumentaria_hockey_hombre_product = Product.new(name: 'Casco de Hockey', description: 'Casco Obo Promite Certificado Arquero Hockey Cesped', brand:'OBO', approved: 'true', photo_url:'http://mla-s2-p.mlstatic.com/casco-obo-promite-certificado-arquero-hockey-cesped-4112-MLA2841640848_062012-O.jpg', "category_ids" => [indumentaria_hockey_hombre_category._id, ropa_category._id])
indumentaria_hockey_hombre_product = Product.new(name: 'Fundas para palos de Hockey', description: 'Funda para palo de hockey, lavable y super resistente, con correa graduable, varios colores y motivos para elegir, lisas o estampadas.', brand:'Gellios', approved: 'true', photo_url:'http://mla-s1-p.mlstatic.com/fundas-para-palos-de-hockey-4140-MLA2662679301_052012-O.jpg', "category_ids" => [indumentaria_hockey_hombre_category._id, ropa_category._id])
indumentaria_hockey_hombre_product = Product.new(name: 'Pizarra Magnética para Hockey', description: 'Pizarra Magnética Táctica De Dt C/carpeta - Hockey - Permite escribir con fibra sobre la superficie de la cancha y luego borrar. Ideal para marcar posiciones y jugadas     relacionadas al partido.', brand:'Soldaduras y Aluminio', approved: 'true', photo_url:'http://mla-s1-p.mlstatic.com/pizarra-magnetica-tactica-de-dt-ccarpeta-hockey--4079-MLA114019167_3053-F.jpg', "category_ids" => [indumentaria_hockey_hombre_category._id, ropa_category._id])
indumentaria_hockey_mujer_1_product = Product.new(name: 'Casco de Hockey', description: 'Casco Obo Promite Certificado Arquero Hockey Cesped', brand:'OBO', approved: 'true', photo_url:'http://mla-s2-p.mlstatic.com/casco-obo-promite-certificado-arquero-hockey-cesped-4112-MLA2841640848_062012-O.jpg', "category_ids" => [indumentaria_hockey_mujer_category._id, ropa_category._id])
indumentaria_hockey_mujer_2_product = Product.new(name: 'Fundas para palos de Hockey', description: 'Funda para palo de hockey, lavable y super resistente, con correa graduable, varios colores y motivos para elegir, lisas o estampadas.', brand:'Gellios', approved: 'true', photo_url:'http://mla-s1-p.mlstatic.com/fundas-para-palos-de-hockey-4140-MLA2662679301_052012-O.jpg', "category_ids" => [indumentaria_hockey_mujer_category._id, ropa_category._id])
indumentaria_hockey_mujer_3_product = Product.new(name: 'Pizarra Magnética para Hockey', description: 'Pizarra Magnética Táctica De Dt C/carpeta - Hockey - Permite escribir con fibra sobre la superficie de la cancha y luego borrar. Ideal para marcar posiciones y jugadas     relacionadas al partido.', brand:'Soldaduras y Aluminio', approved: 'true', photo_url:'http://mla-s1-p.mlstatic.com/pizarra-magnetica-tactica-de-dt-ccarpeta-hockey--4079-MLA114019167_3053-F.jpg', "category_ids" => [indumentaria_hockey_mujer_category._id, ropa_category._id])
indumentaria_voley_hombre_1_product = Product.new(name: 'Zapatillas Olympikus Modelo Voley Golden', description: 'Zapatillas Olympikus Modelo Voley Golden Color Blanco - Azul', brand:'Olympikus', approved: 'true', photo_url:'http://mla-s2-p.mlstatic.com/zapatillas-olympikus-modelo-voley-golden-color-blancoazul-4948-MLA4008018197_032013-F.jpg', "category_ids" => [indumentaria_voley_hombre_category._id, ropa_category._id])
indumentaria_voley_hombre_2_product = Product.new(name: 'Rodillera Protectora Drb Profesional Volley', description: 'Rodillera Protectora Drb Profesional Volley - Protecciones', brand:'DBR Dribbling', approved: 'true', photo_url:'http://mla-s1-p.mlstatic.com/rodillera-protectora-drb-profesional-volley-tenis-global-4191-MLA2788789666_062012-O.jpg', "category_ids" => [indumentaria_voley_hombre_category._id, ropa_category._id])
indumentaria_voley_hombre_3_product = Product.new(name: 'Pelota De Voley Nº5 Oficial Drial Beach Volley Sintetica', description: 'Pelota De Voley Nº5 Oficial Drial Beach Volley Sintetica', brand:'Drial', approved: 'true', photo_url:'http://mla-s2-p.mlstatic.com/pelota-de-voley-n5-oficial-drial-beach-volley-sintetica-7203-MLA5184327232_102013-O.jpg', "category_ids" => [indumentaria_voley_hombre_category._id, ropa_category._id])
indumentaria_voley_mujer_product = Product.new(name: 'Calzas para Voley', description: 'Calzas De Mujer Asics Duotech Voley / Handball /aerobics', brand:'Asics', approved: 'true', photo_url:'http://mla-s1-p.mlstatic.com/calzas-de-mujer-asics-duotech-voley-handball-aerobics-3903-MLA4886720001_082013-F.jpg', "category_ids" => [indumentaria_voley_mujer_category._id, ropa_category._id])
indumentaria_voley_mujer_product = Product.new(name: 'Camiseta de Voley', description: 'Camisetas De Voley, Hockey Y Handball Femenino Personalizada', brand:'Kic Out', approved: 'true', photo_url:'http://mla-s1-p.mlstatic.com/camisetas-de-voley-hockey-y-handball-femenino-personalizada-5533-MLA4467702579_062013-F.jpg', "category_ids" => [indumentaria_voley_mujer_category._id, ropa_category._id])
indumentaria_voley_mujer_product = Product.new(name: 'Camiseta Cozy de Voley', description: 'Camisetas De Dama Cozy Sport Futbol-voley-hockey-running', brand:'Cozy Sport', approved: 'true', photo_url:'http://mla-s2-p.mlstatic.com/camisetas-de-dama-cozy-sport-futbol-voley-hockey-running-6123-MLA4611000414_072013-F.jpg', "category_ids" => [indumentaria_voley_mujer_category._id, ropa_category._id])

puts "done."

print "Saving products..."

sensor_estacionamiento_product.save
apoyabrazo_product.save
kit_emergencia_auto_product.save
llantas_product.save
enganche_trailer_product.save
espiral_amortiguador_product.save
cierre_centralizado_product.save
kit_amortiguadores_product.save
bateria_auto_product.save
cubiertas_bridgestone_product.save
alarma_moto_product.save
funda_moto_product.save
intercomunicador_moto_product.save
amplificador_moto_product.save
arrancador_motos_product.save
botas_moto_product.save
casco_moto_product.save
campera_moto_product.save
conjunto_moto_product.save
equipo_lluvia_moto_product.save
stereo_autos_product.save
subwoofer_auto_product.save
dvd_auto_product.save
volante1_auto_product.save
volante2_auto_product.save
volante3_auto_product.save
polarizado1_autos_product.save
polarizado2_autos_product.save
telefono_inalambrico_product.save
telefono_product.save
telefono2_product.save
telefono_labios_product.save
telefono_zapato_product.save
telefono_kitty_product.save
galaxy_tab_product.save
galaxy_tab10_product.save
ipad_mini_16_product.save
kindle_product.save
sony_ereader_product.save
kindle_fire_product.save
notebook_samsung_product.save
notebok_exo_product.save
all_in_one_bgh_product.save
pc_clon_product.save
windows_product.save
adobe_product.save
office2013_product.save
jaulon_pajaro_loro_product.save
manta_caballo_product.save
comedero_dispenser_gatos_product.save
funda_asiento_product.save
buzos_perro_product.save
bataraz_pajaro_product.save
pollitos_pajaro_product.save
urraca_pajaro_product.save
conejos1_product.save
conejos2_product.save
conejos3_product.save
gato1_product.save
gato2_product.save
gato3_product.save
pez1_product.save
pez2_product.save
pez3_product.save
perro1_product.save
perro2_product.save
perro3_product.save
perro4_product.save
roedor1_product.save
roedor2_product.save
roedor3_product.save
audio_antiguo_1_product.save
audio_antiguo_2_product.save
audio_antiguo_3_product.save
cristaleria_antigua_1_product.save
cristaleria_antigua_2_product.save
cristaleria_antigua_3_product.save
camaras_antiguas_1_product.save
camaras_antiguas_2_product.save
camaras_antiguas_3_product.save
iluminacion_antigua_1_product.save
iluminacion_antigua_2_product.save
iluminacion_antigua_3_product.save
juguetes_antiguos_1_product.save
juguetes_antiguos_2_product.save
juguetes_antiguos_3_product.save
muebles_antiguos_1_product.save
muebles_antiguos_2_product.save
muebles_antiguos_3_product.save
maquinas_de_escribir_antiguas_1_product.save
maquinas_de_escribir_antiguas_2_product.save
maquinas_de_escribir_antiguas_3_product.save
juegos_de_mesa_1_product.save
juegos_de_mesa_2_product.save
juegos_de_mesa_3_product.save
arte_artesanias_1_product.save
arte_artesanias_2_product.save
arte_artesanias_3_product.save
arte_artesanias_4_product.save
geforce_product.save
thermaltake_product.save
ssd_product.save
grab_bluray_product.save
flipper_product.save
daytona_product.save
n3ds_product.save
ps3_product.save
psvita_product.save
wii_product.save
xbox_product.save
materiales_para_tatuajes_1_product.save
materiales_para_tatuajes_2_product.save
materiales_para_tatuajes_3_product.save
souvenirs_1_product.save
souvenirs_2_product.save
souvenirs_3_product.save
joystick_ps3_product.save
joystick_wii_product.save
joystick_xbox_product.save
articulos_embarazadas_1_product.save
articulos_embarazadas_2_product.save
articulos_embarazadas_3_product.save
juguetes_bebes_1_product.save
juguetes_bebes_2_product.save
juguetes_bebes_3_product.save
seguridad_bebes_1_product.save
seguridad_bebes_2_product.save
seguridad_bebes_3_product.save
videojuego1_product.save
videojuego2_product.save
videojuego3_product.save
videojuego4_product.save
videojuego5_product.save
videojuego6_product.save
bodega1_product.save
bodega2_product.save
bodega3_product.save
camaras_accesorios_1_product.save
camaras_accesorios_2_product.save
camaras_accesorios_3_product.save
accesorios_camaras_1_product.save
accesorios_camaras_2_product.save
accesorios_camaras_3_product.save
laboratorios_1_product.save
laboratorios_2_product.save
laboratorios_3_product.save
alcohol1_product.save
alcohol2_product.save
alcohol3_product.save
alcohol4_product.save
alcohol5_product.save
alcohol6_product.save
alcohol7_product.save
cigarros1_product.save
cigarros2_product.save
cigarros3_product.save
cigarros4_product.save
cigarros5_product.save
auris_product.save
auris2_product.save
auris3_product.save
auris4_product.save
mic_product.save
minicomponente_product.save
minicomponente2_product.save
parlantes_product.save
parlantes2_product.save
parlantes3_product.save
rep_dvd_product.save
rep_bluray_product.save
anteojos_3d_product.save
anteojos_3d_genericos_product.save
tv32_product.save
smart32_product.save
tv22_product.save
soportetv32_product.save
soportetv40_product.save
gps_product.save
gps2_product.save
gps3_product.save
soportegps_product.save
soportegps2_product.save
soportegps3_product.save
entradas_eventos_1_product.save
entradas_eventos_2_product.save
entradas_eventos_3_product.save
entradas_eventos_4_product.save
metronomo_product.save
afinador_product.save
metronomo2_product.save
criolla_product.save
acustica_product.save
electrica_product.save
ampli_product.save
banqueta_product.save
pianoflexible_product.save
pianoprincipiantes_product.save
piano5octavas_product.save
platillos_product.save
bateria_product.save
bateria_ninos_product.save
bateria_electronica_product.save
muneco_bebe_product.save
casa_barbie_product.save
cochecito_munecas_product.save
perrito_barbie_product.save
barbie_sirena_product.save
barbie_fiat_product.save
piccolo_product.save
actionman_product.save
spiderman_mask_product.save
patineta_product.save
helicoptero_product.save
autito_product.save
autito2_product.save
peliculas_series_1_product.save
peliculas_series_2_product.save
peliculas_series_3_product.save
peliculas_series_4_product.save
peliculas_series_5_product.save
musica_alternativa_1_product.save
musica_alternativa_2_product.save
musica_alternativa_3_product.save
musica_clasica_1_product.save
musica_clasica_2_product.save
musica_bandas_sonoras_1_product.save
musica_bandas_sonoras_2_product.save
musica_blues_jazz_1_product.save
musica_blues_jazz_2_product.save
musica_blues_jazz_3_product.save
musica_cumbia_cuarteto_1_product.save
musica_cumbia_cuarteto_2_product.save
musica_cumbia_cuarteto_3_product.save
musica_cumbia_cuarteto_4_product.save
musica_dance_1_product.save
musica_dance_2_product.save
musica_dance_3_product.save
musica_electronica_1_product.save
musica_electronica_2_product.save
musica_electronica_3_product.save
musica_folklore_1_product.save
musica_folklore_2_product.save
musica_funk_1_product.save
musica_funk_2_product.save
musica_heavy_metal_1_product.save
musica_heavy_metal_2_product.save
musica_hip_hop_1_product.save
musica_hip_hop_2_product.save
musica_infantil_1_product.save
musica_infantil_2_product.save
musica_instrumental_1_product.save
musica_instrumental_2_product.save
musica_karaoke_1_product.save
musica_karaoke_2_product.save
musica_pop_1_product.save
musica_pop_2_product.save
musica_pop_3_product.save
musica_pop_4_product.save
musica_ska_1_product.save
musica_ska_2_product.save
musica_ska_3_product.save
musica_reggae_1_product.save
musica_reggae_2_product.save
musica_nacional_1_product.save
musica_nacional_2_product.save
musica_nacional_3_product.save
musica_nacional_4_product.save
musica_internacional_1_product.save
musica_internacional_2_product.save
musica_internacional_3_product.save
musica_internacional_4_product.save
musica_tango_1_product.save
musica_tango_2_product.save
salud_1_product.save
salud_2_product.save
salud_3_product.save
salud_4_product.save
salud_5_product.save
relajacion_1_product.save
relajacion_2_product.save
relajacion_3_product.save
ropa_mujer_1_product.save
ropa_mujer_2_product.save
ropa_mujer_3_product.save
ropa_hombre_1_product.save
ropa_hombre_2_product.save
ropa_hombre_3_product.save
libro_novela_1_product.save
libro_novela_2_product.save
libro_novela_3_product.save
libro_suspenso_1_product.save
libro_suspenso_2_product.save
libro_filosofia_1_product.save
libro_filosofia_2_product.save
libro_infantiles_1_product.save
libro_infantiles_2_product.save
libro_infantiles_3_product.save
libro_arte_1_product.save
libro_arte_2_product.save
libro_arte_3_product.save
libro_autoayuda_1_product.save
libro_autoayuda_2_product.save
libro_autoayuda_3_product.save
libro_ficcion_1_product.save
libro_ficcion_2_product.save
libro_ficcion_3_product.save
indumentaria_futbol_hombre_1_product.save
indumentaria_futbol_hombre_2_product.save
indumentaria_futbol_hombre_3_product.save
indumentaria_futbol_mujer_1_product.save
indumentaria_futbol_mujer_2_product.save
indumentaria_futbol_mujer_3_product.save
indumentaria_basquet_hombre_1_product.save
indumentaria_basquet_hombre_2_product.save
indumentaria_basquet_hombre_3_product.save
portarretratos_albumes_1_product.save
portarretratos_albumes_2_product.save
portarretratos_albumes_3_product.save
videocamaras_1_product.save
videocamaras_2_product.save
videocamaras_3_product.save
indumentaria_tenis_hombre_1_product.save
indumentaria_tenis_hombre_2_product.save
indumentaria_tenis_hombre_3_product.save
celulares_1_product.save
celulares_2_product.save
celulares_3_product.save
celulares_4_product.save
accesorios_celulares_1_product.save
accesorios_celulares_2_product.save
accesorios_celulares_3_product.save
indumentaria_tenis_mujer_1_product.save
indumentaria_tenis_mujer_2_product.save
indumentaria_tenis_mujer_3_product.save
indumentaria_golf_hombre_1_product.save
indumentaria_golf_hombre_2_product.save
indumentaria_golf_hombre_3_product.save
indumentaria_golf_mujer_1_product.save
indumentaria_golf_mujer_2_product.save
indumentaria_golf_mujer_3_product.save
energizantes_1_product.save
energizantes_2_product.save
indumentaria_natacion_hombre_1_product.save
indumentaria_natacion_hombre_2_product.save
indumentaria_natacion_hombre_3_product.save
indumentaria_natacion_mujer_1_product.save
indumentaria_natacion_mujer_2_product.save
indumentaria_natacion_mujer_3_product.save
indumentaria_hockey_hombre_product.save
indumentaria_hockey_hombre_product.save
indumentaria_hockey_hombre_product.save
indumentaria_hockey_mujer_1_product.save
indumentaria_hockey_mujer_2_product.save
indumentaria_hockey_mujer_3_product.save
indumentaria_voley_hombre_1_product.save
indumentaria_voley_hombre_2_product.save
indumentaria_voley_hombre_3_product.save
indumentaria_voley_mujer_product.save
indumentaria_voley_mujer_product.save
indumentaria_voley_mujer_product.save

puts "done"

#
# Creación de Vendedores (Seller)
#

print "Creating sellers..."

sellers = []

#Seller 0
s = Seller.new(
	banned: false,
	password: password,
	password_confirmation: password_confirmation,
	)
sellers.push(s)

sellers[0].company_name = 'Warnes Car'
sellers[0].web = 'http://www.warnescar.com/'
sellers[0].active = active
sellers[0].email = 'murray@warnescar.com'
sellers[0].location = 'Warnes 420'
sellers[0].phone = '47990236'
sellers[0].save

#Seller 1
s = Seller.new(
	banned: false,
	password: password,
	password_confirmation: password_confirmation,
	)
sellers.push(s)

sellers[1].company_name = 'Argentina GSM'
sellers[1].web = 'http://www.argentinagsm.com/'
sellers[1].location = 'San Martín 948 3 Piso'
sellers[1].phone = '43112933'
sellers[1].email = 'info@argentinagsm.com'
sellers[1].active = active
sellers[1].save

#Seller 2
s = Seller.new(
	banned: false,
	password: password,
	password_confirmation: password_confirmation,
	)
sellers.push(s)

sellers[2].company_name = 'Compumundo'
sellers[2].web = 'http://www.compumundo.com.ar/'
sellers[2].location = 'Av. Rivadavia 5148'
sellers[2].phone = '08104447025'
sellers[2].email = 'caballito@compumundo.com.ar'
sellers[2].active = active
sellers[2].save

#Seller 3
s = Seller.new(
	banned: false,
	password: password,
	password_confirmation: password_confirmation,
	)
sellers.push(s)

sellers[3].company_name = 'San Patricio'
sellers[3].web = 'https://www.facebook.com/vetsanpatricio'
sellers[3].location = 'Av. José María Moreno 822'
sellers[3].phone = '49252333'
sellers[3].email = 'sanpatriciovet@gmail.com'
sellers[3].active = active
sellers[3].save

#Seller 4
s = Seller.new(
	banned: false,
	password: password,
	password_confirmation: password_confirmation,
	)
sellers.push(s)

sellers[4].company_name = 'Diseño y Antiguedades'
sellers[4].web = 'http://www.diseñoyantiguedades.com.ar/'
sellers[4].location = 'Defensa 4255'
sellers[4].phone = '45032553'
sellers[4].email = 'info@diseñoyantiguedades.com.ar'
sellers[4].active = active
sellers[4].save

#Seller 5
s = Seller.new(
	banned: false,
	password: password,
	password_confirmation: password_confirmation,
	)
sellers.push(s)

sellers[5].company_name = 'Casa Zanzi'
sellers[5].web = 'http://www.casazanzi.com.ar/'
sellers[5].location = 'Talcahuano 364'
sellers[5].phone = '52566260'
sellers[5].email = 'contacto@casazanzi.com.ar'
sellers[5].active = active
sellers[5].save

#Seller 6
s = Seller.new(
	banned: false,
	password: password,
	password_confirmation: password_confirmation,
	)
sellers.push(s)

sellers[6].company_name = 'Alimac'
sellers[6].web = 'http://www.alimac.com.ar/'
sellers[6].location = 'Avenida Corrientes 3248'
sellers[6].phone = '08003337529'
sellers[6].email = 'info@alimac.com.ar'
sellers[6].active = active
sellers[6].save

#Seller 7

s = Seller.new(
	banned: false,
	password: password,
	password_confirmation: password_confirmation,
	)
sellers.push(s)

sellers[7].company_name = 'American Tattoo'
sellers[7].web = 'http://www.americantattoo.com/'
sellers[7].location = 'Av. Santa Fe 7670'
sellers[7].phone = '47734509'
sellers[7].email = 'info@americantattoo.com.ar'
sellers[7].active = active
sellers[7].save

#Seller 8

s = Seller.new(
	banned: false,
	password: password,
	password_confirmation: password_confirmation,
	)
sellers.push(s)

sellers[8].company_name = 'L & L'
sellers[8].web = 'http://www.fiestasinolvidables.com/'
sellers[8].location = 'Lavalle 2303'
sellers[8].phone = '48580008'
sellers[8].email = 'llsouvenirs@fiestasinolvidables.com',
sellers[8].active = active
sellers[8].save

#Seller 9
s = Seller.new(
	banned: false,
	password: password,
	password_confirmation: password_confirmation,
	)
sellers.push(s)

sellers[9].company_name = 'VelvetZone'
sellers[9].web = 'https://www.facebook.com/velvetzonearg/'
sellers[9].location = 'Tandil 2795'
sellers[9].phone = '9539999679'
sellers[9].email = 'info@velvetzone.com'
sellers[9].active = active
sellers[9].save

#Seller 10

s = Seller.new(
	banned: false,
	password: password,
	password_confirmation: password_confirmation,
	)
sellers.push(s)

sellers[10].company_name = 'Dorothy Jane'
sellers[10].web = 'http://wwww.dorothyjanebuenosaires.com'
sellers[10].location = 'Showroom en Callao y Córdoba'
sellers[10].phone = '4810586910'
sellers[10].email = 'info@dorothyjanebuenosaires.com'
sellers[10].active = active
sellers[10].save

#Seller 11

s = Seller.new(
	banned: false,
	password: password,
	password_confirmation: password_confirmation,
	)
sellers.push(s)

sellers[11].company_name = 'Winery'
sellers[11].web = 'http://www.winery.com.ar/'
sellers[11].location = 'Av. Belgrano 300'
sellers[11].phone = '433113277'
sellers[11].email = 'santelmo@winery.com'
sellers[11].active = active
sellers[11].save

#Seller 12

s = Seller.new(
	banned: false,
	password: password,
	password_confirmation: password_confirmation,
	)
sellers.push(s)

sellers[12].company_name = 'Mania Electronic'
sellers[12].web = 'http://maniaelectronic.com.ar/'
sellers[12].location = 'Gral Gervasio Artigas 121277'
sellers[12].phone = '3221239412'
sellers[12].email = 'maniaelectronic@hotmail.com'
sellers[12].active = active
sellers[12].save

#Seller 13

s = Seller.new(
	banned: false,
	password: password,
	password_confirmation: password_confirmation,
	)
sellers.push(s)

sellers[13].company_name = 'Buenos Aires Pro Audio'
sellers[13].web = 'http://www.bsasproaudio.com.ar/'
sellers[13].location = ' Av. Gaona 4463'
sellers[13].phone = '46716692'
sellers[13].email = 'contacto@bsasproaudio.com.ar'
sellers[13].active = active
sellers[13].save

#Seller 14

s = Seller.new(
	banned: false,
	password: password,
	password_confirmation: password_confirmation,
	)
sellers.push(s)


sellers[14].company_name = 'Ticketek'
sellers[14].web = 'http://www.ticketek.com.ar/'
sellers[14].location = 'Av Corrientes 3200'
sellers[14].phone = '52377200'
sellers[14].email = 'info@ticketek.com.ar'
sellers[14].active = active
sellers[14].save

#Seller 15

s = Seller.new(
	banned: false,
	password: password,
	password_confirmation: password_confirmation,
	)
sellers.push(s)

sellers[15].company_name = 'Tec Music'
sellers[15].web = 'http://www.tecmusiconline.com.ar/'
sellers[15].location = 'Echeverría 2340'
sellers[15].phone = '478156044'
sellers[15].email = 'tecmusicdigital@hotmail.com'
sellers[15].active = active
sellers[15].save

#Seller 16
s = Seller.new(
	banned: false,
	password: password,
	password_confirmation: password_confirmation,
	)
sellers.push(s)

sellers[16].company_name = 'Jugueterías TOM'
sellers[16].web = 'http://www.jugueteriastom.com/'
sellers[16].location = 'Hidalgo 945'
sellers[16].phone = '458160450'
sellers[16].email = 'info@jugueteriastom.com'
sellers[16].active = active
sellers[16].save

#Seller 17
s = Seller.new(
	banned: false,
	password: password,
	password_confirmation: password_confirmation,
	)
sellers.push(s)

sellers[17].company_name = 'Tematika'
sellers[17].web = 'http://www.tematika.com/'
sellers[17].location = ''
sellers[17].phone = '081703339872'
sellers[17].email = 'librerias@tematika.com '
sellers[17].active = active
sellers[17].save

#Seller 18
s = Seller.new(
	banned: false,
	password: password,
	password_confirmation: password_confirmation,
	)
sellers.push(s)

sellers[18].company_name = 'Musimundo'
sellers[18].web = 'http://www.musimundo.com/'
sellers[18].location = 'Rivadavia 4994'
sellers[18].phone = '49033990'
sellers[18].email = 'contacto@musimundo.com'
sellers[18].active = active
sellers[18].save

#Seller 19

s = Seller.new(
	banned: false,
	password: password,
	password_confirmation: password_confirmation,
	)
sellers.push(s)

sellers[19].company_name = 'Artesanías Bengoechea'
sellers[19].web = 'http://capital-federal.mublet.com/artesanias-bengoechea/6420719'
sellers[19].location = 'Murillo 19227'
sellers[19].phone = '48558706'
sellers[19].email = 'artesaniasbengoechea@hotmail.com.ar'
sellers[19].active = active
sellers[19].save

#Seller 20

s = Seller.new(
	banned: false,
	password: password,
	password_confirmation: password_confirmation,
	)
sellers.push(s)

sellers[20].company_name = 'Pigmento'
sellers[20].web = 'http://www.perfumeriaspigmento.com.ar/'
sellers[20].location = 'Av. Rivadavia 5423'
sellers[20].phone = '49022400'
sellers[20].email = 'contacto@pigmento.com'
sellers[20].active = active
sellers[20].save

#Seller 21

s = Seller.new(
	banned: false,
	password: password,
	password_confirmation: password_confirmation,
	)
sellers.push(s)

sellers[21].company_name = 'Little Ranch Hotel Spa'
sellers[21].web = 'http://www.littleranch.com.ar/'
sellers[21].location = 'Las Caléndulas 2592'
sellers[21].phone = '47870219'
sellers[21].email = 'info@littleranch.com.ar'
sellers[21].active = active
sellers[21].save

#Seller 22

s = Seller.new(
	banned: false,
	password: password,
	password_confirmation: password_confirmation,
	)
sellers.push(s)

sellers[22].company_name = 'Pigmento'
sellers[22].web = 'http://www.perfumeriaspigmento.com.ar/'
sellers[22].location = 'Av. Rivadavia 5423'
sellers[22].phone = '49022400'
sellers[22].email = 'contacto@pigmento.com'
sellers[22].active = active
sellers[22].save

#Seller 23

s = Seller.new(
	banned: false,
	password: password,
	password_confirmation: password_confirmation,
	)
sellers.push(s)

sellers[23].company_name = 'Falabella'
sellers[23].web = 'http://www.falabella.com.ar/'
sellers[23].location = 'Paraná 3745, Martínez'
sellers[23].phone = '08105556684'
sellers[23].email = 'rdebonis@falabella.com.ar'
sellers[23].active = active
sellers[23].save

#Seller 24

s = Seller.new(
	banned: false,
	password: password,
	password_confirmation: password_confirmation,
	)
sellers.push(s)

sellers[24].company_name = 'Equus'
sellers[24].web = 'http://equus.com.ar/'
sellers[24].location = 'Av. Corrientes 925'
sellers[24].phone = '43260884'
sellers[24].email = 'info@equus.com.ar'
sellers[24].active = active
sellers[24].save

#Seller 25

s = Seller.new(
	banned: false,
	password: password,
	password_confirmation: password_confirmation,
	)
sellers.push(s)

sellers[25].company_name = 'Distal Libros'
sellers[25].web = 'http://www.distalnet.com/'
sellers[25].location = 'Florida 249'
sellers[25].phone = '52551578'
sellers[25].email = 'distal249@distalnet.com'
sellers[25].active = active
sellers[25].save

#Seller 26

s = Seller.new(
	banned: false,
	password: password,
	password_confirmation: password_confirmation,
	)
sellers.push(s)

sellers[26].company_name = 'Yenny - El ateneo'
sellers[26].web = 'http://www.yenny-elateneo.com/'
sellers[26].location = 'Av. Acoyte 44'
sellers[26].phone = '49012932'
sellers[26].email = 'info@yenny.com'
sellers[26].active = active
sellers[26].save

#Seller 27

s = Seller.new(
	banned: false,
	password: password,
	password_confirmation: password_confirmation,
	)
sellers.push(s)

sellers[27].company_name = 'Dexter Shop'
sellers[27].web = 'http://www.dextershops.com/'
sellers[27].location = 'Rivadavia 5050'
sellers[27].phone = '49013984'
sellers[27].email = 'info@shop.dextershops.com'
sellers[27].active = active
sellers[27].save

#Seller 28

s = Seller.new(
	banned: false,
	password: password,
	password_confirmation: password_confirmation,
	)
sellers.push(s)

sellers[28].company_name = 'On Celular'
sellers[28].web = 'http://www.oncelular.com.ar/'
sellers[28].location = 'La Rioja 8'
sellers[28].phone = '5277 7710'
sellers[28].email = 'info@oncelular.com.ar'
sellers[28].active = active
sellers[28].save

puts "done."
#
#Creacion de vector SellingProduct para cada vendedor
#

print "Creacion de vector SellingProduct para cada vendedor..."

sellers[0].selling_products = []
sellers[1].selling_products = []
sellers[2].selling_products = []
sellers[3].selling_products = []
sellers[4].selling_products = []
sellers[5].selling_products = []
sellers[6].selling_products = []
sellers[7].selling_products = []
sellers[8].selling_products = []
sellers[9].selling_products = []
sellers[10].selling_products = []
sellers[11].selling_products = []
sellers[12].selling_products = []
sellers[13].selling_products = []
sellers[14].selling_products = []
sellers[15].selling_products = []
sellers[16].selling_products = []
sellers[17].selling_products = []
sellers[18].selling_products = []
sellers[19].selling_products = []
sellers[20].selling_products = []
sellers[21].selling_products = []
sellers[22].selling_products = []
sellers[23].selling_products = []
sellers[24].selling_products = []
sellers[25].selling_products = []
sellers[26].selling_products = []
sellers[27].selling_products = []
sellers[28].selling_products = []

puts "done"

#
# Creación de Productos Vendedor (Selling Product)
#

print "Asociating products with sellers..."

sensor_estacionamiento = SellingProduct.new
sensor_estacionamiento.product = sensor_estacionamiento_product
sellers[0].selling_products << sensor_estacionamiento
sensor_estacionamiento.price = 250
sensor_estacionamiento.save
apoyabrazo = SellingProduct.new
apoyabrazo.product = apoyabrazo_product
sellers[0].selling_products << apoyabrazo
apoyabrazo.price = 215
apoyabrazo.save
kit_emergencia_auto = SellingProduct.new
kit_emergencia_auto.product = kit_emergencia_auto_product
sellers[0].selling_products << kit_emergencia_auto
kit_emergencia_auto.price = 245
kit_emergencia_auto.save
llantas = SellingProduct.new
llantas.product = llantas_product
sellers[0].selling_products << llantas
llantas.price = 739
llantas.save
enganche_trailer = SellingProduct.new
enganche_trailer.product = enganche_trailer_product
sellers[0].selling_products << enganche_trailer
enganche_trailer.price = 450
enganche_trailer.save
espiral_amortiguador = SellingProduct.new
espiral_amortiguador.product = espiral_amortiguador_product
sellers[0].selling_products << espiral_amortiguador
espiral_amortiguador.price = 365
espiral_amortiguador.save
cierre_centralizado = SellingProduct.new
cierre_centralizado.product = cierre_centralizado_product
sellers[0].selling_products << cierre_centralizado
cierre_centralizado.price = 310
cierre_centralizado.save
kit_amortiguadores = SellingProduct.new
kit_amortiguadores.product = kit_amortiguadores_product
sellers[0].selling_products << kit_amortiguadores
kit_amortiguadores.price = 1650
kit_amortiguadores.save
bateria_auto = SellingProduct.new
bateria_auto.product = bateria_auto_product
sellers[0].selling_products << bateria_auto
bateria_auto.price = 429
bateria_auto.save
cubiertas_bridgestone = SellingProduct.new
cubiertas_bridgestone.product = cubiertas_bridgestone_product
sellers[0].selling_products << cubiertas_bridgestone
cubiertas_bridgestone.price = 1047
cubiertas_bridgestone.save
alarma_moto = SellingProduct.new
alarma_moto.product = alarma_moto_product
sellers[0].selling_products << alarma_moto
alarma_moto.price = 399
alarma_moto.save
funda_moto = SellingProduct.new
funda_moto.product = funda_moto_product
sellers[0].selling_products << funda_moto
funda_moto.price = 100
funda_moto.save
intercomunicador_moto = SellingProduct.new
intercomunicador_moto.product = intercomunicador_moto_product
sellers[0].selling_products << intercomunicador_moto
intercomunicador_moto.price = 1699
intercomunicador_moto.save
amplificador_moto = SellingProduct.new
amplificador_moto.product = amplificador_moto_product
sellers[0].selling_products << amplificador_moto
amplificador_moto.price = 179
amplificador_moto.save
arrancador_motos = SellingProduct.new
arrancador_motos.product = arrancador_motos_product
sellers[0].selling_products << arrancador_motos
arrancador_motos.price = 899
arrancador_motos.save
botas_moto = SellingProduct.new
botas_moto.product = botas_moto_product
sellers[0].selling_products << botas_moto
botas_moto.price = 2000
botas_moto.save
casco_moto = SellingProduct.new
casco_moto.product = casco_moto_product
sellers[0].selling_products << casco_moto
casco_moto.price = 1150
casco_moto.save
campera_moto = SellingProduct.new
campera_moto.product = campera_moto_product
sellers[0].selling_products << campera_moto
campera_moto.price = 1899
campera_moto.save
conjunto_moto = SellingProduct.new
conjunto_moto.product = conjunto_moto_product
sellers[0].selling_products << conjunto_moto
conjunto_moto.price = 725
conjunto_moto.save
equipo_lluvia_moto = SellingProduct.new
equipo_lluvia_moto.product = equipo_lluvia_moto_product
sellers[0].selling_products << equipo_lluvia_moto
equipo_lluvia_moto.price = 400
equipo_lluvia_moto.save
stereo_autos = SellingProduct.new
stereo_autos.product = stereo_autos_product
sellers[0].selling_products << stereo_autos
stereo_autos.price = 890
stereo_autos.save
subwoofer_auto = SellingProduct.new
subwoofer_auto.product = subwoofer_auto_product
sellers[0].selling_products << subwoofer_auto
subwoofer_auto.price = 2149
subwoofer_auto.save
dvd_auto = SellingProduct.new
dvd_auto.product = dvd_auto_product
sellers[0].selling_products << dvd_auto
dvd_auto.price = 2390
dvd_auto.save
volante1_auto = SellingProduct.new
volante1_auto.product = volante1_auto_product
sellers[0].selling_products << volante1_auto
volante1_auto.price = 300
volante1_auto.save
volante2_auto = SellingProduct.new
volante2_auto.product = volante2_auto_product
sellers[0].selling_products << volante2_auto
volante2_auto.price = 890
volante2_auto.save
volante3_auto = SellingProduct.new
volante3_auto.product = volante3_auto_product
sellers[0].selling_products << volante3_auto
volante3_auto.price = 170
volante3_auto.save
polarizado1_autos = SellingProduct.new
polarizado1_autos.product = polarizado1_autos_product
sellers[0].selling_products << polarizado1_autos
polarizado1_autos.price = 1399
polarizado1_autos.save
polarizado2_autos = SellingProduct.new
polarizado2_autos.product = polarizado2_autos_product
sellers[0].selling_products << polarizado2_autos
polarizado2_autos.price = 189
polarizado2_autos.save
telefono_inalambrico = SellingProduct.new
telefono_inalambrico.product = telefono_inalambrico_product
sellers[1].selling_products << telefono_inalambrico
telefono_inalambrico.price = 609
telefono_inalambrico.save
telefono = SellingProduct.new
telefono.product = telefono_product
sellers[1].selling_products << telefono
telefono.price = 85
telefono.save
telefono2 = SellingProduct.new
telefono2.product = telefono2_product
sellers[1].selling_products << telefono2
telefono2.price = 285
telefono2.save
telefono_labios = SellingProduct.new
telefono_labios.product = telefono_labios_product
sellers[1].selling_products << telefono_labios
telefono_labios.price = 225
telefono_labios.save
telefono_zapato = SellingProduct.new
telefono_zapato.product = telefono_zapato_product
sellers[1].selling_products << telefono_zapato
telefono_zapato.price = 225
telefono_zapato.save
telefono_kitty = SellingProduct.new
telefono_kitty.product = telefono_kitty_product
sellers[1].selling_products << telefono_kitty
telefono_kitty.price = 225
telefono_kitty.save
galaxy_tab = SellingProduct.new
galaxy_tab.product = galaxy_tab_product
sellers[2].selling_products << galaxy_tab
galaxy_tab.price = 2199
galaxy_tab.save
galaxy_tab10 = SellingProduct.new
galaxy_tab10.product = galaxy_tab10_product
sellers[2].selling_products << galaxy_tab10
galaxy_tab10.price = 4299
galaxy_tab10.save
ipad_mini_16 = SellingProduct.new
ipad_mini_16.product = ipad_mini_16_product
sellers[2].selling_products << ipad_mini_16
ipad_mini_16.price = 4199
ipad_mini_16.save
kindle = SellingProduct.new
kindle.product = kindle_product
sellers[2].selling_products << kindle
kindle.price = 1025
kindle.save
sony_ereader = SellingProduct.new
sony_ereader.product = sony_ereader_product
sellers[2].selling_products << sony_ereader
sony_ereader.price = 1199
sony_ereader.save
kindle_fire = SellingProduct.new
kindle_fire.product = kindle_fire_product
sellers[2].selling_products << kindle_fire
kindle_fire.price = 2499
kindle_fire.save
notebook_samsung = SellingProduct.new
notebook_samsung.product = notebook_samsung_product
sellers[2].selling_products << notebook_samsung
notebook_samsung.price = 4999
notebook_samsung.save
notebok_exo = SellingProduct.new
notebok_exo.product = notebok_exo_product
sellers[2].selling_products << notebok_exo
notebok_exo.price = 4189
notebok_exo.save
all_in_one_bgh = SellingProduct.new
all_in_one_bgh.product = all_in_one_bgh_product
sellers[2].selling_products << all_in_one_bgh
all_in_one_bgh.price = 3999
all_in_one_bgh.save
pc_clon = SellingProduct.new
pc_clon.product = pc_clon_product
sellers[2].selling_products << pc_clon
pc_clon.price = 5100
pc_clon.save
windows = SellingProduct.new
windows.product = windows_product
sellers[2].selling_products << windows
windows.price = 799
windows.save
adobe = SellingProduct.new
adobe.product = adobe_product
sellers[2].selling_products << adobe
adobe.price = 200
adobe.save
office2013 = SellingProduct.new
office2013.product = office2013_product
sellers[2].selling_products << office2013
office2013.price = 499
office2013.save
geforce = SellingProduct.new
geforce.product = geforce_product
sellers[2].selling_products << geforce
geforce.price = 549
geforce.save
thermaltake = SellingProduct.new
thermaltake.product = thermaltake_product
sellers[2].selling_products << thermaltake
thermaltake.price = 499
thermaltake.save
ssd = SellingProduct.new
ssd.product = ssd_product
sellers[2].selling_products << ssd
ssd.price = 1199
ssd.save
grab_bluray = SellingProduct.new
grab_bluray.product = grab_bluray_product
sellers[2].selling_products << grab_bluray
grab_bluray.price = 579
grab_bluray.save
jaulon_pajaro_loro = SellingProduct.new
jaulon_pajaro_loro.product = jaulon_pajaro_loro_product
sellers[3].selling_products << jaulon_pajaro_loro
jaulon_pajaro_loro.price = 1500
jaulon_pajaro_loro.save
manta_caballo = SellingProduct.new
manta_caballo.product = manta_caballo_product
sellers[3].selling_products << manta_caballo
manta_caballo.price = 190
manta_caballo.save
comedero_dispenser_gatos = SellingProduct.new
comedero_dispenser_gatos.product = comedero_dispenser_gatos_product
sellers[3].selling_products << comedero_dispenser_gatos
comedero_dispenser_gatos.price = 95
comedero_dispenser_gatos.save
funda_asiento = SellingProduct.new
funda_asiento.product = funda_asiento_product
sellers[3].selling_products << funda_asiento
funda_asiento.price = 124
funda_asiento.save
buzos_perro = SellingProduct.new
buzos_perro.product = buzos_perro_product
sellers[3].selling_products << buzos_perro
buzos_perro.price = 80
buzos_perro.save
bataraz_pajaro = SellingProduct.new
bataraz_pajaro.product = bataraz_pajaro_product
sellers[3].selling_products << bataraz_pajaro
bataraz_pajaro.price = 30
bataraz_pajaro.save
pollitos_pajaro = SellingProduct.new
pollitos_pajaro.product = pollitos_pajaro_product
sellers[3].selling_products << pollitos_pajaro
pollitos_pajaro.price = 15
pollitos_pajaro.save
urraca_pajaro = SellingProduct.new
urraca_pajaro.product = urraca_pajaro_product
sellers[3].selling_products << urraca_pajaro
urraca_pajaro.price = 200
urraca_pajaro.save
conejos1 = SellingProduct.new
conejos1.product = conejos1_product
sellers[3].selling_products << conejos1
conejos1.price = 350
conejos1.save
conejos2 = SellingProduct.new
conejos2.product = conejos2_product
sellers[3].selling_products << conejos2
conejos2.price = 380
conejos2.save
conejos3 = SellingProduct.new
conejos3.product = conejos3_product
sellers[3].selling_products << conejos3
conejos3.price = 150
conejos3.save
gato1 = SellingProduct.new
gato1.product = gato1_product
sellers[3].selling_products << gato1
gato1.price = 3300
gato1.save
gato2 = SellingProduct.new
gato2.product = gato2_product
sellers[3].selling_products << gato2
gato2.price = 1200
gato2.save
gato3 = SellingProduct.new
gato3.product = gato3_product
sellers[3].selling_products << gato3
gato3.price = 800
gato3.save
pez1 = SellingProduct.new
pez1.product = pez1_product
sellers[3].selling_products << pez1
pez1.price = 250
pez1.save
pez2 = SellingProduct.new
pez2.product = pez2_product
sellers[3].selling_products << pez2
pez2.price = 100
pez2.save
pez3 = SellingProduct.new
pez3.product = pez3_product
sellers[3].selling_products << pez3
pez3.price = 90
pez3.save
perro1 = SellingProduct.new
perro1.product = perro1_product
sellers[3].selling_products << perro1
perro1.price = 1600
perro1.save
perro2 = SellingProduct.new
perro2.product = perro2_product
sellers[3].selling_products << perro2
perro2.price = 2500
perro2.save
perro3 = SellingProduct.new
perro3.product = perro3_product
sellers[3].selling_products << perro3
perro3.price = 1500
perro3.save
perro4 = SellingProduct.new
perro4.product = perro4_product
sellers[3].selling_products << perro4
perro4.price = 1700
perro4.save
roedor1 = SellingProduct.new
roedor1.product = roedor1_product
sellers[3].selling_products << roedor1
roedor1.price = 149
roedor1.save
roedor2 = SellingProduct.new
roedor2.product = roedor2_product
sellers[3].selling_products << roedor2
roedor2.price = 149
roedor2.save
roedor3 = SellingProduct.new
roedor3.product = roedor3_product
sellers[3].selling_products << roedor3
roedor3.price = 190
roedor3.save
audio_antiguo_1 = SellingProduct.new
audio_antiguo_1.product = audio_antiguo_1_product
sellers[4].selling_products << audio_antiguo_1
audio_antiguo_1.price = 350
audio_antiguo_1.save
audio_antiguo_2 = SellingProduct.new
audio_antiguo_2.product = audio_antiguo_2_product
sellers[4].selling_products << audio_antiguo_2
audio_antiguo_2.price = 560
audio_antiguo_2.save
audio_antiguo_3 = SellingProduct.new
audio_antiguo_3.product = audio_antiguo_3_product
sellers[4].selling_products << audio_antiguo_3
audio_antiguo_3.price = 430
audio_antiguo_3.save
cristaleria_antigua_1 = SellingProduct.new
cristaleria_antigua_1.product = cristaleria_antigua_1_product
sellers[4].selling_products << cristaleria_antigua_1
cristaleria_antigua_1.price = 500
cristaleria_antigua_1.save
cristaleria_antigua_2 = SellingProduct.new
cristaleria_antigua_2.product = cristaleria_antigua_2_product
sellers[4].selling_products << cristaleria_antigua_2
cristaleria_antigua_2.price = 850
cristaleria_antigua_2.save
cristaleria_antigua_3 = SellingProduct.new
cristaleria_antigua_3.product = cristaleria_antigua_3_product
sellers[4].selling_products << cristaleria_antigua_3
cristaleria_antigua_3.price = 590
cristaleria_antigua_3.save
camaras_antiguas_1 = SellingProduct.new
camaras_antiguas_1.product = camaras_antiguas_1_product
sellers[4].selling_products << camaras_antiguas_1
camaras_antiguas_1.price = 160
camaras_antiguas_1.save
camaras_antiguas_2 = SellingProduct.new
camaras_antiguas_2.product = camaras_antiguas_2_product
sellers[4].selling_products << camaras_antiguas_2
camaras_antiguas_2.price = 1800
camaras_antiguas_2.save
camaras_antiguas_3 = SellingProduct.new
camaras_antiguas_3.product = camaras_antiguas_3_product
sellers[4].selling_products << camaras_antiguas_3
camaras_antiguas_3.price = 800
camaras_antiguas_3.save
iluminacion_antigua_1 = SellingProduct.new
iluminacion_antigua_1.product = iluminacion_antigua_1_product
sellers[4].selling_products << iluminacion_antigua_1
iluminacion_antigua_1.price = 780
iluminacion_antigua_1.save
iluminacion_antigua_2 = SellingProduct.new
iluminacion_antigua_2.product = iluminacion_antigua_2_product
sellers[4].selling_products << iluminacion_antigua_2
iluminacion_antigua_2.price = 1300
iluminacion_antigua_2.save
iluminacion_antigua_3 = SellingProduct.new
iluminacion_antigua_3.product = iluminacion_antigua_3_product
sellers[4].selling_products << iluminacion_antigua_3
iluminacion_antigua_3.price = 150
iluminacion_antigua_3.save
juguetes_antiguos_1 = SellingProduct.new
juguetes_antiguos_1.product = juguetes_antiguos_1_product
sellers[4].selling_products << juguetes_antiguos_1
juguetes_antiguos_1.price = 450
juguetes_antiguos_1.save
juguetes_antiguos_2 = SellingProduct.new
juguetes_antiguos_2.product = juguetes_antiguos_2_product
sellers[4].selling_products << juguetes_antiguos_2
juguetes_antiguos_2.price = 550
juguetes_antiguos_2.save
juguetes_antiguos_3 = SellingProduct.new
juguetes_antiguos_3.product = juguetes_antiguos_3_product
sellers[4].selling_products << juguetes_antiguos_3
juguetes_antiguos_3.price = 3500
juguetes_antiguos_3.save
muebles_antiguos_1 = SellingProduct.new
muebles_antiguos_1.product = muebles_antiguos_1_product
sellers[4].selling_products << muebles_antiguos_1
muebles_antiguos_1.price = 1825
muebles_antiguos_1.save
muebles_antiguos_2 = SellingProduct.new
muebles_antiguos_2.product = muebles_antiguos_2_product
sellers[4].selling_products << muebles_antiguos_2
muebles_antiguos_2.price = 4300
muebles_antiguos_2.save
muebles_antiguos_3 = SellingProduct.new
muebles_antiguos_3.product = muebles_antiguos_3_product
sellers[4].selling_products << muebles_antiguos_3
muebles_antiguos_3.price = 7000
muebles_antiguos_3.save
maquinas_de_escribir_antiguas_1 = SellingProduct.new
maquinas_de_escribir_antiguas_1.product = maquinas_de_escribir_antiguas_1_product
sellers[4].selling_products << maquinas_de_escribir_antiguas_1
maquinas_de_escribir_antiguas_1.price = 550
maquinas_de_escribir_antiguas_1.save
maquinas_de_escribir_antiguas_2 = SellingProduct.new
maquinas_de_escribir_antiguas_2.product = maquinas_de_escribir_antiguas_2_product
sellers[4].selling_products << maquinas_de_escribir_antiguas_2
maquinas_de_escribir_antiguas_2.price = 500
maquinas_de_escribir_antiguas_2.save
maquinas_de_escribir_antiguas_3 = SellingProduct.new
maquinas_de_escribir_antiguas_3.product = maquinas_de_escribir_antiguas_3_product
sellers[4].selling_products << maquinas_de_escribir_antiguas_3
maquinas_de_escribir_antiguas_3.price = 150
maquinas_de_escribir_antiguas_3.save
juegos_de_mesa_1 = SellingProduct.new
juegos_de_mesa_1.product = juegos_de_mesa_1_product
sellers[5].selling_products << juegos_de_mesa_1
juegos_de_mesa_1.price = 299
juegos_de_mesa_1.save
juegos_de_mesa_2 = SellingProduct.new
juegos_de_mesa_2.product = juegos_de_mesa_2_product
sellers[5].selling_products << juegos_de_mesa_2
juegos_de_mesa_2.price = 279
juegos_de_mesa_2.save
juegos_de_mesa_3 = SellingProduct.new
juegos_de_mesa_3.product = juegos_de_mesa_3_product
sellers[5].selling_products << juegos_de_mesa_3
juegos_de_mesa_3.price = 700
juegos_de_mesa_3.save
flipper = SellingProduct.new
flipper.product = flipper_product
sellers[6].selling_products << flipper
flipper.price = 600
flipper.save
daytona = SellingProduct.new
daytona.product = daytona_product
sellers[6].selling_products << daytona
daytona.price = 180
daytona.save
n3ds = SellingProduct.new
n3ds.product = n3ds_product
sellers[6].selling_products << n3ds
n3ds.price = 2599
n3ds.save
ps3 = SellingProduct.new
ps3.product = ps3_product
sellers[6].selling_products << ps3
ps3.price = 3500
ps3.save
psvita = SellingProduct.new
psvita.product = psvita_product
sellers[6].selling_products << psvita
psvita.price = 2499
psvita.save
wii = SellingProduct.new
wii.product = wii_product
sellers[6].selling_products << wii
wii.price = 2200
wii.save
xbox = SellingProduct.new
xbox.product = xbox_product
sellers[6].selling_products << xbox
xbox.price = 3000
xbox.save
materiales_para_tatuajes_1 = SellingProduct.new
materiales_para_tatuajes_1.product = materiales_para_tatuajes_1_product
sellers[7].selling_products << materiales_para_tatuajes_1
materiales_para_tatuajes_1.price = 140
materiales_para_tatuajes_1.save
materiales_para_tatuajes_2 = SellingProduct.new
materiales_para_tatuajes_2.product = materiales_para_tatuajes_2_product
sellers[7].selling_products << materiales_para_tatuajes_2
materiales_para_tatuajes_2.price = 780
materiales_para_tatuajes_2.save
materiales_para_tatuajes_3 = SellingProduct.new
materiales_para_tatuajes_3.product = materiales_para_tatuajes_3_product
sellers[7].selling_products << materiales_para_tatuajes_3
materiales_para_tatuajes_3.price = 530
materiales_para_tatuajes_3.save
souvenirs_1 = SellingProduct.new
souvenirs_1.product = souvenirs_1_product
sellers[8].selling_products << souvenirs_1
souvenirs_1.price = 115
souvenirs_1.save
souvenirs_2 = SellingProduct.new
souvenirs_2.product = souvenirs_2_product
sellers[8].selling_products << souvenirs_2
souvenirs_2.price = 280
souvenirs_2.save
souvenirs_3 = SellingProduct.new
souvenirs_3.product = souvenirs_3_product
sellers[8].selling_products << souvenirs_3
souvenirs_3.price = 33
souvenirs_3.save
joystick_ps3 = SellingProduct.new
joystick_ps3.product = joystick_ps3_product
sellers[9].selling_products << joystick_ps3
joystick_ps3.price = 260
joystick_ps3.save
joystick_wii = SellingProduct.new
joystick_wii.product = joystick_wii_product
sellers[9].selling_products << joystick_wii
joystick_wii.price = 319
joystick_wii.save
joystick_xbox = SellingProduct.new
joystick_xbox.product = joystick_xbox_product
sellers[9].selling_products << joystick_xbox
joystick_xbox.price = 379
joystick_xbox.save
videojuego1 = SellingProduct.new
videojuego1.product = videojuego1_product
sellers[9].selling_products << videojuego1
videojuego1.price = 379
videojuego1.save
videojuego2 = SellingProduct.new
videojuego2.product = videojuego2_product
sellers[9].selling_products << videojuego2
videojuego2.price = 649
videojuego2.save
videojuego3 = SellingProduct.new
videojuego3.product = videojuego3_product
sellers[9].selling_products << videojuego3
videojuego3.price = 399
videojuego3.save
videojuego4 = SellingProduct.new
videojuego4.product = videojuego4_product
sellers[9].selling_products << videojuego4
videojuego4.price = 640
videojuego4.save
videojuego5 = SellingProduct.new
videojuego5.product = videojuego5_product
sellers[9].selling_products << videojuego5
videojuego5.price = 479
videojuego5.save
videojuego6 = SellingProduct.new
videojuego6.product = videojuego6_product
sellers[9].selling_products << videojuego6
videojuego6.price = 350
videojuego6.save
articulos_embarazadas_1 = SellingProduct.new
articulos_embarazadas_1.product = articulos_embarazadas_1_product
sellers[10].selling_products << articulos_embarazadas_1
articulos_embarazadas_1.price = 559
articulos_embarazadas_1.save
articulos_embarazadas_2 = SellingProduct.new
articulos_embarazadas_2.product = articulos_embarazadas_2_product
sellers[10].selling_products << articulos_embarazadas_2
articulos_embarazadas_2.price = 389
articulos_embarazadas_2.save
articulos_embarazadas_3 = SellingProduct.new
articulos_embarazadas_3.product = articulos_embarazadas_3_product
sellers[10].selling_products << articulos_embarazadas_3
articulos_embarazadas_3.price = 110
articulos_embarazadas_3.save
juguetes_bebes_1 = SellingProduct.new
juguetes_bebes_1.product = juguetes_bebes_1_product
sellers[10].selling_products << juguetes_bebes_1
juguetes_bebes_1.price = 1499
juguetes_bebes_1.save
juguetes_bebes_2 = SellingProduct.new
juguetes_bebes_2.product = juguetes_bebes_2_product
sellers[10].selling_products << juguetes_bebes_2
juguetes_bebes_2.price = 350
juguetes_bebes_2.save
juguetes_bebes_3 = SellingProduct.new
juguetes_bebes_3.product = juguetes_bebes_3_product
sellers[10].selling_products << juguetes_bebes_3
juguetes_bebes_3.price = 320
juguetes_bebes_3.save
seguridad_bebes_1 = SellingProduct.new
seguridad_bebes_1.product = seguridad_bebes_1_product
sellers[10].selling_products << seguridad_bebes_1
seguridad_bebes_1.price = 315
seguridad_bebes_1.save
seguridad_bebes_2 = SellingProduct.new
seguridad_bebes_2.product = seguridad_bebes_2_product
sellers[10].selling_products << seguridad_bebes_2
seguridad_bebes_2.price = 1299
seguridad_bebes_2.save
seguridad_bebes_3 = SellingProduct.new
seguridad_bebes_3.product = seguridad_bebes_3_product
sellers[10].selling_products << seguridad_bebes_3
seguridad_bebes_3.price = 477
seguridad_bebes_3.save
bodega1 = SellingProduct.new
bodega1.product = bodega1_product
sellers[11].selling_products << bodega1
bodega1.price = 1144
bodega1.save
bodega2 = SellingProduct.new
bodega2.product = bodega2_product
sellers[11].selling_products << bodega2
bodega2.price = 130
bodega2.save
bodega3 = SellingProduct.new
bodega3.product = bodega3_product
sellers[11].selling_products << bodega3
bodega3.price = 1015
bodega3.save
alcohol1 = SellingProduct.new
alcohol1.product = alcohol1_product
sellers[11].selling_products << alcohol1
alcohol1.price = 74
alcohol1.save
alcohol2 = SellingProduct.new
alcohol2.product = alcohol2_product
sellers[11].selling_products << alcohol2
alcohol2.price = 78
alcohol2.save
alcohol3 = SellingProduct.new
alcohol3.product = alcohol3_product
sellers[11].selling_products << alcohol3
alcohol3.price = 120
alcohol3.save
alcohol4 = SellingProduct.new
alcohol4.product = alcohol4_product
sellers[11].selling_products << alcohol4
alcohol4.price = 2880
alcohol4.save
alcohol5 = SellingProduct.new
alcohol5.product = alcohol5_product
sellers[11].selling_products << alcohol5
alcohol5.price = 120
alcohol5.save
alcohol6 = SellingProduct.new
alcohol6.product = alcohol6_product
sellers[11].selling_products << alcohol6
alcohol6.price = 250
alcohol6.save
alcohol7 = SellingProduct.new
alcohol7.product = alcohol7_product
sellers[11].selling_products << alcohol7
alcohol7.price = 1259
alcohol7.save
cigarros1 = SellingProduct.new
cigarros1.product = cigarros1_product
sellers[11].selling_products << cigarros1
cigarros1.price = 90
cigarros1.save
cigarros2 = SellingProduct.new
cigarros2.product = cigarros2_product
sellers[11].selling_products << cigarros2
cigarros2.price = 950
cigarros2.save
cigarros3 = SellingProduct.new
cigarros3.product = cigarros3_product
sellers[11].selling_products << cigarros3
cigarros3.price = 72
cigarros3.save
cigarros4 = SellingProduct.new
cigarros4.product = cigarros4_product
sellers[11].selling_products << cigarros4
cigarros4.price = 300
cigarros4.save
cigarros5 = SellingProduct.new
cigarros5.product = cigarros5_product
sellers[11].selling_products << cigarros5
cigarros5.price = 30
cigarros5.save
energizantes_1 = SellingProduct.new
energizantes_1.product = energizantes_1_product
sellers[11].selling_products << energizantes_1
energizantes_1.price = 11
energizantes_1.save
energizantes_2 = SellingProduct.new
energizantes_2.product = energizantes_2_product
sellers[11].selling_products << energizantes_2
energizantes_2.price = 5
energizantes_2.save
camaras_accesorios_1 = SellingProduct.new
camaras_accesorios_1.product = camaras_accesorios_1_product
sellers[12].selling_products << camaras_accesorios_1
camaras_accesorios_1.price = 1550
camaras_accesorios_1.save
camaras_accesorios_2 = SellingProduct.new
camaras_accesorios_2.product = camaras_accesorios_2_product
sellers[12].selling_products << camaras_accesorios_2
camaras_accesorios_2.price = 170
camaras_accesorios_2.save
camaras_accesorios_3 = SellingProduct.new
camaras_accesorios_3.product = camaras_accesorios_3_product
sellers[12].selling_products << camaras_accesorios_3
camaras_accesorios_3.price = 2899
camaras_accesorios_3.save
accesorios_camaras_1 = SellingProduct.new
accesorios_camaras_1.product = accesorios_camaras_1_product
sellers[12].selling_products << accesorios_camaras_1
accesorios_camaras_1.price = 1249
accesorios_camaras_1.save
accesorios_camaras_2 = SellingProduct.new
accesorios_camaras_2.product = accesorios_camaras_2_product
sellers[12].selling_products << accesorios_camaras_2
accesorios_camaras_2.price = 299
accesorios_camaras_2.save
accesorios_camaras_3 = SellingProduct.new
accesorios_camaras_3.product = accesorios_camaras_3_product
sellers[12].selling_products << accesorios_camaras_3
accesorios_camaras_3.price = 1199
accesorios_camaras_3.save
laboratorios_1 = SellingProduct.new
laboratorios_1.product = laboratorios_1_product
sellers[12].selling_products << laboratorios_1
laboratorios_1.price = 26
laboratorios_1.save
laboratorios_2 = SellingProduct.new
laboratorios_2.product = laboratorios_2_product
sellers[12].selling_products << laboratorios_2
laboratorios_2.price = 600
laboratorios_2.save
laboratorios_3 = SellingProduct.new
laboratorios_3.product = laboratorios_3_product
sellers[12].selling_products << laboratorios_3
laboratorios_3.price = 20000
laboratorios_3.save
portarretratos_albumes_1 = SellingProduct.new
portarretratos_albumes_1.product = portarretratos_albumes_1_product
sellers[12].selling_products << portarretratos_albumes_1
portarretratos_albumes_1.price = 699
portarretratos_albumes_1.save
portarretratos_albumes_2 = SellingProduct.new
portarretratos_albumes_2.product = portarretratos_albumes_2_product
sellers[12].selling_products << portarretratos_albumes_2
portarretratos_albumes_2.price = 45
portarretratos_albumes_2.save
portarretratos_albumes_3 = SellingProduct.new
portarretratos_albumes_3.product = portarretratos_albumes_3_product
sellers[12].selling_products << portarretratos_albumes_3
portarretratos_albumes_3.price = 170
portarretratos_albumes_3.save
videocamaras_1 = SellingProduct.new
videocamaras_1.product = videocamaras_1_product
sellers[12].selling_products << videocamaras_1
videocamaras_1.price = 2999
videocamaras_1.save
videocamaras_2 = SellingProduct.new
videocamaras_2.product = videocamaras_2_product
sellers[12].selling_products << videocamaras_2
videocamaras_2.price = 1199
videocamaras_2.save
videocamaras_3 = SellingProduct.new
videocamaras_3.product = videocamaras_3_product
sellers[12].selling_products << videocamaras_3
videocamaras_3.price = 750
videocamaras_3.save
auris = SellingProduct.new
auris.product = auris_product
sellers[13].selling_products << auris
auris.price = 169
auris.save
auris2 = SellingProduct.new
auris2.product = auris2_product
sellers[13].selling_products << auris2
auris2.price = 239
auris2.save
auris3 = SellingProduct.new
auris3.product = auris3_product
sellers[13].selling_products << auris3
auris3.price = 189
auris3.save
auris4 = SellingProduct.new
auris4.product = auris4_product
sellers[13].selling_products << auris4
auris4.price = 349
auris4.save
mic = SellingProduct.new
mic.product = mic_product
sellers[13].selling_products << mic
mic.price = 170
mic.save
minicomponente = SellingProduct.new
minicomponente.product = minicomponente_product
sellers[13].selling_products << minicomponente
minicomponente.price = 1349
minicomponente.save
minicomponente2 = SellingProduct.new
minicomponente2.product = minicomponente2_product
sellers[13].selling_products << minicomponente2
minicomponente2.price = 1189
minicomponente2.save
parlantes = SellingProduct.new
parlantes.product = parlantes_product
sellers[13].selling_products << parlantes
parlantes.price = 699
parlantes.save
parlantes2 = SellingProduct.new
parlantes2.product = parlantes2_product
sellers[13].selling_products << parlantes2
parlantes2.price = 499
parlantes2.save
parlantes3 = SellingProduct.new
parlantes3.product = parlantes3_product
sellers[13].selling_products << parlantes3
parlantes3.price = 850
parlantes3.save
rep_dvd = SellingProduct.new
rep_dvd.product = rep_dvd_product
sellers[13].selling_products << rep_dvd
rep_dvd.price = 499
rep_dvd.save
rep_bluray = SellingProduct.new
rep_bluray.product = rep_bluray_product
sellers[13].selling_products << rep_bluray
rep_bluray.price = 1149
rep_bluray.save
anteojos_3d = SellingProduct.new
anteojos_3d.product = anteojos_3d_product
sellers[13].selling_products << anteojos_3d
anteojos_3d.price = 349
anteojos_3d.save
anteojos_3d_genericos = SellingProduct.new
anteojos_3d_genericos.product = anteojos_3d_genericos_product
sellers[13].selling_products << anteojos_3d_genericos
anteojos_3d_genericos.price = 25
anteojos_3d_genericos.save
tv32 = SellingProduct.new
tv32.product = tv32_product
sellers[13].selling_products << tv32
tv32.price = 2999
tv32.save
smart32 = SellingProduct.new
smart32.product = smart32_product
sellers[13].selling_products << smart32
smart32.price = 3999
smart32.save
tv22 = SellingProduct.new
tv22.product = tv22_product
sellers[13].selling_products << tv22
tv22.price = 1839
tv22.save
soportetv32 = SellingProduct.new
soportetv32.product = soportetv32_product
sellers[13].selling_products << soportetv32
soportetv32.price = 259
soportetv32.save
soportetv40 = SellingProduct.new
soportetv40.product = soportetv40_product
sellers[13].selling_products << soportetv40
soportetv40.price = 639
soportetv40.save
gps = SellingProduct.new
gps.product = gps_product
sellers[13].selling_products << gps
gps.price = 869
gps.save
gps2 = SellingProduct.new
gps2.product = gps2_product
sellers[13].selling_products << gps2
gps2.price = 1499
gps2.save
gps3 = SellingProduct.new
gps3.product = gps3_product
sellers[13].selling_products << gps3
gps3.price = 799
gps3.save
soportegps = SellingProduct.new
soportegps.product = soportegps_product
sellers[13].selling_products << soportegps
soportegps.price = 175
soportegps.save
soportegps2 = SellingProduct.new
soportegps2.product = soportegps2_product
sellers[13].selling_products << soportegps2
soportegps2.price = 89
soportegps2.save
soportegps3 = SellingProduct.new
soportegps3.product = soportegps3_product
sellers[13].selling_products << soportegps3
soportegps3.price = 49
soportegps3.save
entradas_eventos_1 = SellingProduct.new
entradas_eventos_1.product = entradas_eventos_1_product
sellers[14].selling_products << entradas_eventos_1
entradas_eventos_1.price = 220
entradas_eventos_1.save
entradas_eventos_2 = SellingProduct.new
entradas_eventos_2.product = entradas_eventos_2_product
sellers[14].selling_products << entradas_eventos_2
entradas_eventos_2.price = 250
entradas_eventos_2.save
entradas_eventos_3 = SellingProduct.new
entradas_eventos_3.product = entradas_eventos_3_product
sellers[14].selling_products << entradas_eventos_3
entradas_eventos_3.price = 400
entradas_eventos_3.save
entradas_eventos_4 = SellingProduct.new
entradas_eventos_4.product = entradas_eventos_4_product
sellers[14].selling_products << entradas_eventos_4
entradas_eventos_4.price = 150
entradas_eventos_4.save
metronomo = SellingProduct.new
metronomo.product = metronomo_product
sellers[15].selling_products << metronomo
metronomo.price = 99
metronomo.save
afinador = SellingProduct.new
afinador.product = afinador_product
sellers[15].selling_products << afinador
afinador.price = 140
afinador.save
metronomo2 = SellingProduct.new
metronomo2.product = metronomo2_product
sellers[15].selling_products << metronomo2
metronomo2.price = 390
metronomo2.save
criolla = SellingProduct.new
criolla.product = criolla_product
sellers[15].selling_products << criolla
criolla.price = 549
criolla.save
acustica = SellingProduct.new
acustica.product = acustica_product
sellers[15].selling_products << acustica
acustica.price = 1049
acustica.save
electrica = SellingProduct.new
electrica.product = electrica_product
sellers[15].selling_products << electrica
electrica.price = 2999
electrica.save
ampli = SellingProduct.new
ampli.product = ampli_product
sellers[15].selling_products << ampli
ampli.price = 549
ampli.save
banqueta = SellingProduct.new
banqueta.product = banqueta_product
sellers[15].selling_products << banqueta
banqueta.price = 699
banqueta.save
pianoflexible = SellingProduct.new
pianoflexible.product = pianoflexible_product
sellers[15].selling_products << pianoflexible
pianoflexible.price = 799
pianoflexible.save
pianoprincipiantes = SellingProduct.new
pianoprincipiantes.product = pianoprincipiantes_product
sellers[15].selling_products << pianoprincipiantes
pianoprincipiantes.price = 844
pianoprincipiantes.save
piano5octavas = SellingProduct.new
piano5octavas.product = piano5octavas_product
sellers[15].selling_products << piano5octavas
piano5octavas.price = 2775
piano5octavas.save
platillos = SellingProduct.new
platillos.product = platillos_product
sellers[15].selling_products << platillos
platillos.price = 2999
platillos.save
bateria = SellingProduct.new
bateria.product = bateria_product
sellers[15].selling_products << bateria
bateria.price = 3899
bateria.save
bateria_ninos = SellingProduct.new
bateria_ninos.product = bateria_ninos_product
sellers[15].selling_products << bateria_ninos
bateria_ninos.price = 2699
bateria_ninos.save
bateria_electronica = SellingProduct.new
bateria_electronica.product = bateria_electronica_product
sellers[15].selling_products << bateria_electronica
bateria_electronica.price = 1299
bateria_electronica.save
muneco_bebe = SellingProduct.new
muneco_bebe.product = muneco_bebe_product
sellers[16].selling_products << muneco_bebe
muneco_bebe.price = 349
muneco_bebe.save
casa_barbie = SellingProduct.new
casa_barbie.product = casa_barbie_product
sellers[16].selling_products << casa_barbie
casa_barbie.price = 899
casa_barbie.save
cochecito_munecas = SellingProduct.new
cochecito_munecas.product = cochecito_munecas_product
sellers[16].selling_products << cochecito_munecas
cochecito_munecas.price = 709
cochecito_munecas.save
perrito_barbie = SellingProduct.new
perrito_barbie.product = perrito_barbie_product
sellers[16].selling_products << perrito_barbie
perrito_barbie.price = 549
perrito_barbie.save
barbie_sirena = SellingProduct.new
barbie_sirena.product = barbie_sirena_product
sellers[16].selling_products << barbie_sirena
barbie_sirena.price = 599
barbie_sirena.save
barbie_fiat = SellingProduct.new
barbie_fiat.product = barbie_fiat_product
sellers[16].selling_products << barbie_fiat
barbie_fiat.price = 869
barbie_fiat.save
piccolo = SellingProduct.new
piccolo.product = piccolo_product
sellers[16].selling_products << piccolo
piccolo.price = 59
piccolo.save
actionman = SellingProduct.new
actionman.product = actionman_product
sellers[16].selling_products << actionman
actionman.price = 159
actionman.save
spiderman_mask = SellingProduct.new
spiderman_mask.product = spiderman_mask_product
sellers[16].selling_products << spiderman_mask
spiderman_mask.price = 139
spiderman_mask.save
patineta = SellingProduct.new
patineta.product = patineta_product
sellers[16].selling_products << patineta
patineta.price = 165
patineta.save
helicoptero = SellingProduct.new
helicoptero.product = helicoptero_product
sellers[16].selling_products << helicoptero
helicoptero.price = 149
helicoptero.save
autito = SellingProduct.new
autito.product = autito_product
sellers[16].selling_products << autito
autito.price = 39
autito.save
autito2 = SellingProduct.new
autito2.product = autito2_product
sellers[16].selling_products << autito2
autito2.price = 49
autito2.save
peliculas_series_1 = SellingProduct.new
peliculas_series_1.product = peliculas_series_1_product
sellers[17].selling_products << peliculas_series_1
peliculas_series_1.price = 380
peliculas_series_1.save
peliculas_series_2 = SellingProduct.new
peliculas_series_2.product = peliculas_series_2_product
sellers[17].selling_products << peliculas_series_2
peliculas_series_2.price = 1750
peliculas_series_2.save
peliculas_series_3 = SellingProduct.new
peliculas_series_3.product = peliculas_series_3_product
sellers[17].selling_products << peliculas_series_3
peliculas_series_3.price = 225
peliculas_series_3.save
peliculas_series_4 = SellingProduct.new
peliculas_series_4.product = peliculas_series_4_product
sellers[17].selling_products << peliculas_series_4
peliculas_series_4.price = 300
peliculas_series_4.save
peliculas_series_5 = SellingProduct.new
peliculas_series_5.product = peliculas_series_5_product
sellers[17].selling_products << peliculas_series_5
peliculas_series_5.price = 1800
peliculas_series_5.save
musica_alternativa_1 = SellingProduct.new
musica_alternativa_1.product = musica_alternativa_1_product
sellers[18].selling_products << musica_alternativa_1
musica_alternativa_1.price = 329
musica_alternativa_1.save
musica_alternativa_2 = SellingProduct.new
musica_alternativa_2.product = musica_alternativa_2_product
sellers[18].selling_products << musica_alternativa_2
musica_alternativa_2.price = 279
musica_alternativa_2.save
musica_alternativa_3 = SellingProduct.new
musica_alternativa_3.product = musica_alternativa_3_product
sellers[18].selling_products << musica_alternativa_3
musica_alternativa_3.price = 299
musica_alternativa_3.save
musica_clasica_1 = SellingProduct.new
musica_clasica_1.product = musica_clasica_1_product
sellers[18].selling_products << musica_clasica_1
musica_clasica_1.price = 330
musica_clasica_1.save
musica_clasica_2 = SellingProduct.new
musica_clasica_2.product = musica_clasica_2_product
sellers[18].selling_products << musica_clasica_2
musica_clasica_2.price = 499
musica_clasica_2.save
musica_bandas_sonoras_1 = SellingProduct.new
musica_bandas_sonoras_1.product = musica_bandas_sonoras_1_product
sellers[18].selling_products << musica_bandas_sonoras_1
musica_bandas_sonoras_1.price = 109
musica_bandas_sonoras_1.save
musica_bandas_sonoras_2 = SellingProduct.new
musica_bandas_sonoras_2.product = musica_bandas_sonoras_2_product
sellers[18].selling_products << musica_bandas_sonoras_2
musica_bandas_sonoras_2.price = 280
musica_bandas_sonoras_2.save
musica_blues_jazz_1 = SellingProduct.new
musica_blues_jazz_1.product = musica_blues_jazz_1_product
sellers[18].selling_products << musica_blues_jazz_1
musica_blues_jazz_1.price = 269
musica_blues_jazz_1.save
musica_blues_jazz_2 = SellingProduct.new
musica_blues_jazz_2.product = musica_blues_jazz_2_product
sellers[18].selling_products << musica_blues_jazz_2
musica_blues_jazz_2.price = 140
musica_blues_jazz_2.save
musica_blues_jazz_3 = SellingProduct.new
musica_blues_jazz_3.product = musica_blues_jazz_3_product
sellers[18].selling_products << musica_blues_jazz_3
musica_blues_jazz_3.price = 449
musica_blues_jazz_3.save
musica_cumbia_cuarteto_1 = SellingProduct.new
musica_cumbia_cuarteto_1.product = musica_cumbia_cuarteto_1_product
sellers[18].selling_products << musica_cumbia_cuarteto_1
musica_cumbia_cuarteto_1.price = 80
musica_cumbia_cuarteto_1.save
musica_cumbia_cuarteto_2 = SellingProduct.new
musica_cumbia_cuarteto_2.product = musica_cumbia_cuarteto_2_product
sellers[18].selling_products << musica_cumbia_cuarteto_2
musica_cumbia_cuarteto_2.price = 45
musica_cumbia_cuarteto_2.save
musica_cumbia_cuarteto_3 = SellingProduct.new
musica_cumbia_cuarteto_3.product = musica_cumbia_cuarteto_3_product
sellers[18].selling_products << musica_cumbia_cuarteto_3
musica_cumbia_cuarteto_3.price = 55
musica_cumbia_cuarteto_3.save
musica_cumbia_cuarteto_4 = SellingProduct.new
musica_cumbia_cuarteto_4.product = musica_cumbia_cuarteto_4_product
sellers[18].selling_products << musica_cumbia_cuarteto_4
musica_cumbia_cuarteto_4.price = 80
musica_cumbia_cuarteto_4.save
musica_dance_1 = SellingProduct.new
musica_dance_1.product = musica_dance_1_product
sellers[18].selling_products << musica_dance_1
musica_dance_1.price = 180
musica_dance_1.save
musica_dance_2 = SellingProduct.new
musica_dance_2.product = musica_dance_2_product
sellers[18].selling_products << musica_dance_2
musica_dance_2.price = 200
musica_dance_2.save
musica_dance_3 = SellingProduct.new
musica_dance_3.product = musica_dance_3_product
sellers[18].selling_products << musica_dance_3
musica_dance_3.price = 650
musica_dance_3.save
musica_electronica_1 = SellingProduct.new
musica_electronica_1.product = musica_electronica_1_product
sellers[18].selling_products << musica_electronica_1
musica_electronica_1.price = 700
musica_electronica_1.save
musica_electronica_2 = SellingProduct.new
musica_electronica_2.product = musica_electronica_2_product
sellers[18].selling_products << musica_electronica_2
musica_electronica_2.price = 300
musica_electronica_2.save
musica_electronica_3 = SellingProduct.new
musica_electronica_3.product = musica_electronica_3_product
sellers[18].selling_products << musica_electronica_3
musica_electronica_3.price = 160
musica_electronica_3.save
musica_folklore_1 = SellingProduct.new
musica_folklore_1.product = musica_folklore_1_product
sellers[18].selling_products << musica_folklore_1
musica_folklore_1.price = 78
musica_folklore_1.save
musica_folklore_2 = SellingProduct.new
musica_folklore_2.product = musica_folklore_2_product
sellers[18].selling_products << musica_folklore_2
musica_folklore_2.price = 64
musica_folklore_2.save
musica_funk_1 = SellingProduct.new
musica_funk_1.product = musica_funk_1_product
sellers[18].selling_products << musica_funk_1
musica_funk_1.price = 50
musica_funk_1.save
musica_funk_2 = SellingProduct.new
musica_funk_2.product = musica_funk_2_product
sellers[18].selling_products << musica_funk_2
musica_funk_2.price = 140
musica_funk_2.save
musica_heavy_metal_1 = SellingProduct.new
musica_heavy_metal_1.product = musica_heavy_metal_1_product
sellers[18].selling_products << musica_heavy_metal_1
musica_heavy_metal_1.price = 999
musica_heavy_metal_1.save
musica_heavy_metal_2 = SellingProduct.new
musica_heavy_metal_2.product = musica_heavy_metal_2_product
sellers[18].selling_products << musica_heavy_metal_2
musica_heavy_metal_2.price = 290
musica_heavy_metal_2.save
musica_hip_hop_1 = SellingProduct.new
musica_hip_hop_1.product = musica_hip_hop_1_product
sellers[18].selling_products << musica_hip_hop_1
musica_hip_hop_1.price = 30
musica_hip_hop_1.save
musica_hip_hop_2 = SellingProduct.new
musica_hip_hop_2.product = musica_hip_hop_2_product
sellers[18].selling_products << musica_hip_hop_2
musica_hip_hop_2.price = 30
musica_hip_hop_2.save
musica_infantil_1 = SellingProduct.new
musica_infantil_1.product = musica_infantil_1_product
sellers[18].selling_products << musica_infantil_1
musica_infantil_1.price = 65
musica_infantil_1.save
musica_infantil_2 = SellingProduct.new
musica_infantil_2.product = musica_infantil_2_product
sellers[18].selling_products << musica_infantil_2
musica_infantil_2.price = 115
musica_infantil_2.save
musica_instrumental_1 = SellingProduct.new
musica_instrumental_1.product = musica_instrumental_1_product
sellers[18].selling_products << musica_instrumental_1
musica_instrumental_1.price = 36
musica_instrumental_1.save
musica_instrumental_2 = SellingProduct.new
musica_instrumental_2.product = musica_instrumental_2_product
sellers[18].selling_products << musica_instrumental_2
musica_instrumental_2.price = 120
musica_instrumental_2.save
musica_karaoke_1 = SellingProduct.new
musica_karaoke_1.product = musica_karaoke_1_product
sellers[18].selling_products << musica_karaoke_1
musica_karaoke_1.price = 60
musica_karaoke_1.save
musica_karaoke_2 = SellingProduct.new
musica_karaoke_2.product = musica_karaoke_2_product
sellers[18].selling_products << musica_karaoke_2
musica_karaoke_2.price = 99
musica_karaoke_2.save
musica_pop_1 = SellingProduct.new
musica_pop_1.product = musica_pop_1_product
sellers[18].selling_products << musica_pop_1
musica_pop_1.price = 140
musica_pop_1.save
musica_pop_2 = SellingProduct.new
musica_pop_2.product = musica_pop_2_product
sellers[18].selling_products << musica_pop_2
musica_pop_2.price = 80
musica_pop_2.save
musica_pop_3 = SellingProduct.new
musica_pop_3.product = musica_pop_3_product
sellers[18].selling_products << musica_pop_3
musica_pop_3.price = 500
musica_pop_3.save
musica_pop_4 = SellingProduct.new
musica_pop_4.product = musica_pop_4_product
sellers[18].selling_products << musica_pop_4
musica_pop_4.price = 100
musica_pop_4.save
musica_ska_1 = SellingProduct.new
musica_ska_1.product = musica_ska_1_product
sellers[18].selling_products << musica_ska_1
musica_ska_1.price = 300
musica_ska_1.save
musica_ska_2 = SellingProduct.new
musica_ska_2.product = musica_ska_2_product
sellers[18].selling_products << musica_ska_2
musica_ska_2.price = 120
musica_ska_2.save
musica_ska_3 = SellingProduct.new
musica_ska_3.product = musica_ska_3_product
sellers[18].selling_products << musica_ska_3
musica_ska_3.price = 220
musica_ska_3.save
musica_reggae_1 = SellingProduct.new
musica_reggae_1.product = musica_reggae_1_product
sellers[18].selling_products << musica_reggae_1
musica_reggae_1.price = 430
musica_reggae_1.save
musica_reggae_2 = SellingProduct.new
musica_reggae_2.product = musica_reggae_2_product
sellers[18].selling_products << musica_reggae_2
musica_reggae_2.price = 58
musica_reggae_2.save
musica_nacional_1 = SellingProduct.new
musica_nacional_1.product = musica_nacional_1_product
sellers[18].selling_products << musica_nacional_1
musica_nacional_1.price = 101
musica_nacional_1.save
musica_nacional_2 = SellingProduct.new
musica_nacional_2.product = musica_nacional_2_product
sellers[18].selling_products << musica_nacional_2
musica_nacional_2.price = 86
musica_nacional_2.save
musica_nacional_3 = SellingProduct.new
musica_nacional_3.product = musica_nacional_3_product
sellers[18].selling_products << musica_nacional_3
musica_nacional_3.price = 116
musica_nacional_3.save
musica_nacional_4 = SellingProduct.new
musica_nacional_4.product = musica_nacional_4_product
sellers[18].selling_products << musica_nacional_4
musica_nacional_4.price = 133
musica_nacional_4.save
musica_internacional_1 = SellingProduct.new
musica_internacional_1.product = musica_internacional_1_product
sellers[18].selling_products << musica_internacional_1
musica_internacional_1.price = 120
musica_internacional_1.save
musica_internacional_2 = SellingProduct.new
musica_internacional_2.product = musica_internacional_2_product
sellers[18].selling_products << musica_internacional_2
musica_internacional_2.price = 92
musica_internacional_2.save
musica_internacional_3 = SellingProduct.new
musica_internacional_3.product = musica_internacional_3_product
sellers[18].selling_products << musica_internacional_3
musica_internacional_3.price = 68
musica_internacional_3.save
musica_internacional_4 = SellingProduct.new
musica_internacional_4.product = musica_internacional_4_product
sellers[18].selling_products << musica_internacional_4
musica_internacional_4.price = 250
musica_internacional_4.save
musica_tango_1 = SellingProduct.new
musica_tango_1.product = musica_tango_1_product
sellers[18].selling_products << musica_tango_1
musica_tango_1.price = 250
musica_tango_1.save
musica_tango_2 = SellingProduct.new
musica_tango_2.product = musica_tango_2_product
sellers[18].selling_products << musica_tango_2
musica_tango_2.price = 300
musica_tango_2.save
arte_artesanias_1 = SellingProduct.new
arte_artesanias_1.product = arte_artesanias_1_product
sellers[19].selling_products << arte_artesanias_1
arte_artesanias_1.price = 559
arte_artesanias_1.save
arte_artesanias_2 = SellingProduct.new
arte_artesanias_2.product = arte_artesanias_2_product
sellers[19].selling_products << arte_artesanias_2
arte_artesanias_2.price = 53
arte_artesanias_2.save
arte_artesanias_3 = SellingProduct.new
arte_artesanias_3.product = arte_artesanias_3_product
sellers[19].selling_products << arte_artesanias_3
arte_artesanias_3.price = 25
arte_artesanias_3.save
arte_artesanias_4 = SellingProduct.new
arte_artesanias_4.product = arte_artesanias_4_product
sellers[19].selling_products << arte_artesanias_4
arte_artesanias_4.price = 35
arte_artesanias_4.save
salud_1 = SellingProduct.new
salud_1.product = salud_1_product
sellers[20].selling_products << salud_1
salud_1.price = 43
salud_1.save
salud_2 = SellingProduct.new
salud_2.product = salud_2_product
sellers[20].selling_products << salud_2
salud_2.price = 820
salud_2.save
salud_3 = SellingProduct.new
salud_3.product = salud_3_product
sellers[20].selling_products << salud_3
salud_3.price = 460
salud_3.save
salud_4 = SellingProduct.new
salud_4.product = salud_4_product
sellers[20].selling_products << salud_4
salud_4.price = 40
salud_4.save
salud_5 = SellingProduct.new
salud_5.product = salud_5_product
sellers[20].selling_products << salud_5
salud_5.price = 150
salud_5.save
relajacion_1 = SellingProduct.new
relajacion_1.product = relajacion_1_product
sellers[21].selling_products << relajacion_1
relajacion_1.price = 595
relajacion_1.save
relajacion_2 = SellingProduct.new
relajacion_2.product = relajacion_2_product
sellers[21].selling_products << relajacion_2
relajacion_2.price = 50
relajacion_2.save
relajacion_3 = SellingProduct.new
relajacion_3.product = relajacion_3_product
sellers[21].selling_products << relajacion_3
relajacion_3.price = 2099
relajacion_3.save
ropa_mujer_1 = SellingProduct.new
ropa_mujer_1.product = ropa_mujer_1_product
sellers[22].selling_products << ropa_mujer_1
ropa_mujer_1.price = 460
ropa_mujer_1.save
ropa_mujer_2 = SellingProduct.new
ropa_mujer_2.product = ropa_mujer_2_product
sellers[22].selling_products << ropa_mujer_2
ropa_mujer_2.price = 340
ropa_mujer_2.save
ropa_mujer_3 = SellingProduct.new
ropa_mujer_3.product = ropa_mujer_3_product
sellers[22].selling_products << ropa_mujer_3
ropa_mujer_3.price = 395
ropa_mujer_3.save
ropa_hombre_1 = SellingProduct.new
ropa_hombre_1.product = ropa_hombre_1_product
sellers[24].selling_products << ropa_hombre_1
ropa_hombre_1.price = 400
ropa_hombre_1.save
ropa_hombre_2 = SellingProduct.new
ropa_hombre_2.product = ropa_hombre_2_product
sellers[24].selling_products << ropa_hombre_2
ropa_hombre_2.price = 1090
ropa_hombre_2.save
ropa_hombre_3 = SellingProduct.new
ropa_hombre_3.product = ropa_hombre_3_product
sellers[24].selling_products << ropa_hombre_3
ropa_hombre_3.price = 85
ropa_hombre_3.save
libro_novela_1 = SellingProduct.new
libro_novela_1.product = libro_novela_1_product
sellers[25].selling_products << libro_novela_1
libro_novela_1.price = 390
libro_novela_1.save
libro_novela_2 = SellingProduct.new
libro_novela_2.product = libro_novela_2_product
sellers[25].selling_products << libro_novela_2
libro_novela_2.price = 159
libro_novela_2.save
libro_novela_3 = SellingProduct.new
libro_novela_3.product = libro_novela_3_product
sellers[25].selling_products << libro_novela_3
libro_novela_3.price = 250
libro_novela_3.save
libro_suspenso_1 = SellingProduct.new
libro_suspenso_1.product = libro_suspenso_1_product
sellers[25].selling_products << libro_suspenso_1
libro_suspenso_1.price = 75
libro_suspenso_1.save
libro_suspenso_2 = SellingProduct.new
libro_suspenso_2.product = libro_suspenso_2_product
sellers[25].selling_products << libro_suspenso_2
libro_suspenso_2.price = 70
libro_suspenso_2.save
libro_filosofia_1 = SellingProduct.new
libro_filosofia_1.product = libro_filosofia_1_product
sellers[25].selling_products << libro_filosofia_1
libro_filosofia_1.price = 2790
libro_filosofia_1.save
libro_filosofia_2 = SellingProduct.new
libro_filosofia_2.product = libro_filosofia_2_product
sellers[25].selling_products << libro_filosofia_2
libro_filosofia_2.price = 150
libro_filosofia_2.save
libro_infantiles_1 = SellingProduct.new
libro_infantiles_1.product = libro_infantiles_1_product
sellers[26].selling_products << libro_infantiles_1
libro_infantiles_1.price = 80
libro_infantiles_1.save
libro_infantiles_2 = SellingProduct.new
libro_infantiles_2.product = libro_infantiles_2_product
sellers[26].selling_products << libro_infantiles_2
libro_infantiles_2.price = 150
libro_infantiles_2.save
libro_infantiles_3 = SellingProduct.new
libro_infantiles_3.product = libro_infantiles_3_product
sellers[26].selling_products << libro_infantiles_3
libro_infantiles_3.price = 35
libro_infantiles_3.save
libro_arte_1 = SellingProduct.new
libro_arte_1.product = libro_arte_1_product
sellers[26].selling_products << libro_arte_1
libro_arte_1.price = 1200
libro_arte_1.save
libro_arte_2 = SellingProduct.new
libro_arte_2.product = libro_arte_2_product
sellers[26].selling_products << libro_arte_2
libro_arte_2.price = 95
libro_arte_2.save
libro_arte_3 = SellingProduct.new
libro_arte_3.product = libro_arte_3_product
sellers[26].selling_products << libro_arte_3
libro_arte_3.price = 800
libro_arte_3.save
libro_autoayuda_1 = SellingProduct.new
libro_autoayuda_1.product = libro_autoayuda_1_product
sellers[26].selling_products << libro_autoayuda_1
libro_autoayuda_1.price = 220
libro_autoayuda_1.save
libro_autoayuda_2 = SellingProduct.new
libro_autoayuda_2.product = libro_autoayuda_2_product
sellers[26].selling_products << libro_autoayuda_2
libro_autoayuda_2.price = 225
libro_autoayuda_2.save
libro_autoayuda_3 = SellingProduct.new
libro_autoayuda_3.product = libro_autoayuda_3_product
sellers[26].selling_products << libro_autoayuda_3
libro_autoayuda_3.price = 140
libro_autoayuda_3.save
libro_ficcion_1 = SellingProduct.new
libro_ficcion_1.product = libro_ficcion_1_product
sellers[26].selling_products << libro_ficcion_1
libro_ficcion_1.price = 110
libro_ficcion_1.save
libro_ficcion_2 = SellingProduct.new
libro_ficcion_2.product = libro_ficcion_2_product
sellers[26].selling_products << libro_ficcion_2
libro_ficcion_2.price = 120
libro_ficcion_2.save
libro_ficcion_3 = SellingProduct.new
libro_ficcion_3.product = libro_ficcion_3_product
sellers[26].selling_products << libro_ficcion_3
libro_ficcion_3.price = 125
libro_ficcion_3.save
indumentaria_futbol_hombre_1 = SellingProduct.new
indumentaria_futbol_hombre_1.product = indumentaria_futbol_hombre_1_product
sellers[27].selling_products << indumentaria_futbol_hombre_1
indumentaria_futbol_hombre_1.price = 890
indumentaria_futbol_hombre_1.save
indumentaria_futbol_hombre_2 = SellingProduct.new
indumentaria_futbol_hombre_2.product = indumentaria_futbol_hombre_2_product
sellers[27].selling_products << indumentaria_futbol_hombre_2
indumentaria_futbol_hombre_2.price = 46
indumentaria_futbol_hombre_2.save
indumentaria_futbol_hombre_3 = SellingProduct.new
indumentaria_futbol_hombre_3.product = indumentaria_futbol_hombre_3_product
sellers[27].selling_products << indumentaria_futbol_hombre_3
indumentaria_futbol_hombre_3.price = 65
indumentaria_futbol_hombre_3.save
indumentaria_futbol_mujer_1 = SellingProduct.new
indumentaria_futbol_mujer_1.product = indumentaria_futbol_mujer_1_product
sellers[27].selling_products << indumentaria_futbol_mujer_1
indumentaria_futbol_mujer_1.price = 297
indumentaria_futbol_mujer_1.save
indumentaria_futbol_mujer_2 = SellingProduct.new
indumentaria_futbol_mujer_2.product = indumentaria_futbol_mujer_2_product
sellers[27].selling_products << indumentaria_futbol_mujer_2
indumentaria_futbol_mujer_2.price = 290
indumentaria_futbol_mujer_2.save
indumentaria_futbol_mujer_3 = SellingProduct.new
indumentaria_futbol_mujer_3.product = indumentaria_futbol_mujer_3_product
sellers[27].selling_products << indumentaria_futbol_mujer_3
indumentaria_futbol_mujer_3.price = 128
indumentaria_futbol_mujer_3.save
indumentaria_basquet_hombre_1 = SellingProduct.new
indumentaria_basquet_hombre_1.product = indumentaria_basquet_hombre_1_product
sellers[27].selling_products << indumentaria_basquet_hombre_1
indumentaria_basquet_hombre_1.price = 350
indumentaria_basquet_hombre_1.save
indumentaria_basquet_hombre_2 = SellingProduct.new
indumentaria_basquet_hombre_2.product = indumentaria_basquet_hombre_2_product
sellers[27].selling_products << indumentaria_basquet_hombre_2
indumentaria_basquet_hombre_2.price = 1350
indumentaria_basquet_hombre_2.save
indumentaria_basquet_hombre_3 = SellingProduct.new
indumentaria_basquet_hombre_3.product = indumentaria_basquet_hombre_3_product
sellers[27].selling_products << indumentaria_basquet_hombre_3
indumentaria_basquet_hombre_3.price = 89
indumentaria_basquet_hombre_3.save
indumentaria_tenis_hombre_1 = SellingProduct.new
indumentaria_tenis_hombre_1.product = indumentaria_tenis_hombre_1_product
sellers[27].selling_products << indumentaria_tenis_hombre_1
indumentaria_tenis_hombre_1.price = 169
indumentaria_tenis_hombre_1.save
indumentaria_tenis_hombre_2 = SellingProduct.new
indumentaria_tenis_hombre_2.product = indumentaria_tenis_hombre_2_product
sellers[27].selling_products << indumentaria_tenis_hombre_2
indumentaria_tenis_hombre_2.price = 95
indumentaria_tenis_hombre_2.save
indumentaria_tenis_hombre_3 = SellingProduct.new
indumentaria_tenis_hombre_3.product = indumentaria_tenis_hombre_3_product
sellers[27].selling_products << indumentaria_tenis_hombre_3
indumentaria_tenis_hombre_3.price = 50
indumentaria_tenis_hombre_3.save
indumentaria_tenis_mujer_1 = SellingProduct.new
indumentaria_tenis_mujer_1.product = indumentaria_tenis_mujer_1_product
sellers[27].selling_products << indumentaria_tenis_mujer_1
indumentaria_tenis_mujer_1.price = 629
indumentaria_tenis_mujer_1.save
indumentaria_tenis_mujer_2 = SellingProduct.new
indumentaria_tenis_mujer_2.product = indumentaria_tenis_mujer_2_product
sellers[27].selling_products << indumentaria_tenis_mujer_2
indumentaria_tenis_mujer_2.price = 343
indumentaria_tenis_mujer_2.save
indumentaria_tenis_mujer_3 = SellingProduct.new
indumentaria_tenis_mujer_3.product = indumentaria_tenis_mujer_3_product
sellers[27].selling_products << indumentaria_tenis_mujer_3
indumentaria_tenis_mujer_3.price = 299
indumentaria_tenis_mujer_3.save
indumentaria_golf_hombre_1 = SellingProduct.new
indumentaria_golf_hombre_1.product = indumentaria_golf_hombre_1_product
sellers[27].selling_products << indumentaria_golf_hombre_1
indumentaria_golf_hombre_1.price = 680
indumentaria_golf_hombre_1.save
indumentaria_golf_hombre_2 = SellingProduct.new
indumentaria_golf_hombre_2.product = indumentaria_golf_hombre_2_product
sellers[27].selling_products << indumentaria_golf_hombre_2
indumentaria_golf_hombre_2.price = 70
indumentaria_golf_hombre_2.save
indumentaria_golf_hombre_3 = SellingProduct.new
indumentaria_golf_hombre_3.product = indumentaria_golf_hombre_3_product
sellers[27].selling_products << indumentaria_golf_hombre_3
indumentaria_golf_hombre_3.price = 400
indumentaria_golf_hombre_3.save
indumentaria_golf_mujer_1 = SellingProduct.new
indumentaria_golf_mujer_1.product = indumentaria_golf_mujer_1_product
sellers[27].selling_products << indumentaria_golf_mujer_1
indumentaria_golf_mujer_1.price = 440
indumentaria_golf_mujer_1.save
indumentaria_golf_mujer_2 = SellingProduct.new
indumentaria_golf_mujer_2.product = indumentaria_golf_mujer_2_product
sellers[27].selling_products << indumentaria_golf_mujer_2
indumentaria_golf_mujer_2.price = 750
indumentaria_golf_mujer_2.save
indumentaria_golf_mujer_3 = SellingProduct.new
indumentaria_golf_mujer_3.product = indumentaria_golf_mujer_3_product
sellers[27].selling_products << indumentaria_golf_mujer_3
indumentaria_golf_mujer_3.price = 470
indumentaria_golf_mujer_3.save
indumentaria_natacion_hombre_1 = SellingProduct.new
indumentaria_natacion_hombre_1.product = indumentaria_natacion_hombre_1_product
sellers[27].selling_products << indumentaria_natacion_hombre_1
indumentaria_natacion_hombre_1.price = 229
indumentaria_natacion_hombre_1.save
indumentaria_natacion_hombre_2 = SellingProduct.new
indumentaria_natacion_hombre_2.product = indumentaria_natacion_hombre_2_product
sellers[27].selling_products << indumentaria_natacion_hombre_2
indumentaria_natacion_hombre_2.price = 280
indumentaria_natacion_hombre_2.save
indumentaria_natacion_hombre_3 = SellingProduct.new
indumentaria_natacion_hombre_3.product = indumentaria_natacion_hombre_3_product
sellers[27].selling_products << indumentaria_natacion_hombre_3
indumentaria_natacion_hombre_3.price = 550
indumentaria_natacion_hombre_3.save
indumentaria_natacion_mujer_1 = SellingProduct.new
indumentaria_natacion_mujer_1.product = indumentaria_natacion_mujer_1_product
sellers[27].selling_products << indumentaria_natacion_mujer_1
indumentaria_natacion_mujer_1.price = 179
indumentaria_natacion_mujer_1.save
indumentaria_natacion_mujer_2 = SellingProduct.new
indumentaria_natacion_mujer_2.product = indumentaria_natacion_mujer_2_product
sellers[27].selling_products << indumentaria_natacion_mujer_2
indumentaria_natacion_mujer_2.price = 269
indumentaria_natacion_mujer_2.save
indumentaria_natacion_mujer_3 = SellingProduct.new
indumentaria_natacion_mujer_3.product = indumentaria_natacion_mujer_3_product
sellers[27].selling_products << indumentaria_natacion_mujer_3
indumentaria_natacion_mujer_3.price = 85
indumentaria_natacion_mujer_3.save
indumentaria_hockey_hombre = SellingProduct.new
indumentaria_hockey_hombre.product = indumentaria_hockey_hombre_product
sellers[27].selling_products << indumentaria_hockey_hombre
indumentaria_hockey_hombre.price = 599
indumentaria_hockey_hombre.save
indumentaria_hockey_hombre = SellingProduct.new
indumentaria_hockey_hombre.product = indumentaria_hockey_hombre_product
sellers[27].selling_products << indumentaria_hockey_hombre
indumentaria_hockey_hombre.price = 190
indumentaria_hockey_hombre.save
indumentaria_hockey_hombre = SellingProduct.new
indumentaria_hockey_hombre.product = indumentaria_hockey_hombre_product
sellers[27].selling_products << indumentaria_hockey_hombre
indumentaria_hockey_hombre.price = 135
indumentaria_hockey_hombre.save
indumentaria_hockey_mujer_1 = SellingProduct.new
indumentaria_hockey_mujer_1.product = indumentaria_hockey_mujer_1_product
sellers[27].selling_products << indumentaria_hockey_mujer_1
indumentaria_hockey_mujer_1.price = 599
indumentaria_hockey_mujer_1.save
indumentaria_hockey_mujer_2 = SellingProduct.new
indumentaria_hockey_mujer_2.product = indumentaria_hockey_mujer_2_product
sellers[27].selling_products << indumentaria_hockey_mujer_2
indumentaria_hockey_mujer_2.price = 190
indumentaria_hockey_mujer_2.save
indumentaria_hockey_mujer_3 = SellingProduct.new
indumentaria_hockey_mujer_3.product = indumentaria_hockey_mujer_3_product
sellers[27].selling_products << indumentaria_hockey_mujer_3
indumentaria_hockey_mujer_3.price = 135
indumentaria_hockey_mujer_3.save
indumentaria_voley_hombre_1 = SellingProduct.new
indumentaria_voley_hombre_1.product = indumentaria_voley_hombre_1_product
sellers[27].selling_products << indumentaria_voley_hombre_1
indumentaria_voley_hombre_1.price = 589
indumentaria_voley_hombre_1.save
indumentaria_voley_hombre_2 = SellingProduct.new
indumentaria_voley_hombre_2.product = indumentaria_voley_hombre_2_product
sellers[27].selling_products << indumentaria_voley_hombre_2
indumentaria_voley_hombre_2.price = 115
indumentaria_voley_hombre_2.save
indumentaria_voley_hombre_3 = SellingProduct.new
indumentaria_voley_hombre_3.product = indumentaria_voley_hombre_3_product
sellers[27].selling_products << indumentaria_voley_hombre_3
indumentaria_voley_hombre_3.price = 95
indumentaria_voley_hombre_3.save
indumentaria_voley_mujer = SellingProduct.new
indumentaria_voley_mujer.product = indumentaria_voley_mujer_product
sellers[27].selling_products << indumentaria_voley_mujer
indumentaria_voley_mujer.price = 220
indumentaria_voley_mujer.save
indumentaria_voley_mujer = SellingProduct.new
indumentaria_voley_mujer.product = indumentaria_voley_mujer_product
sellers[27].selling_products << indumentaria_voley_mujer
indumentaria_voley_mujer.price = 88
indumentaria_voley_mujer.save
indumentaria_voley_mujer = SellingProduct.new
indumentaria_voley_mujer.product = indumentaria_voley_mujer_product
sellers[27].selling_products << indumentaria_voley_mujer
indumentaria_voley_mujer.price = 119
indumentaria_voley_mujer.save
celulares_1 = SellingProduct.new
celulares_1.product = celulares_1_product
sellers[28].selling_products << celulares_1
celulares_1.price = 1199
celulares_1.save
celulares_2 = SellingProduct.new
celulares_2.product = celulares_2_product
sellers[28].selling_products << celulares_2
celulares_2.price = 1049
celulares_2.save
celulares_3 = SellingProduct.new
celulares_3.product = celulares_3_product
sellers[28].selling_products << celulares_3
celulares_3.price = 1899
celulares_3.save
celulares_4 = SellingProduct.new
celulares_4.product = celulares_4_product
sellers[28].selling_products << celulares_4
celulares_4.price = 8399
celulares_4.save
accesorios_celulares_1 = SellingProduct.new
accesorios_celulares_1.product = accesorios_celulares_1_product
sellers[28].selling_products << accesorios_celulares_1
accesorios_celulares_1.price = 199
accesorios_celulares_1.save
accesorios_celulares_2 = SellingProduct.new
accesorios_celulares_2.product = accesorios_celulares_2_product
sellers[28].selling_products << accesorios_celulares_2
accesorios_celulares_2.price = 129
accesorios_celulares_2.save
accesorios_celulares_3 = SellingProduct.new
accesorios_celulares_3.product = accesorios_celulares_3_product
sellers[28].selling_products << accesorios_celulares_3
accesorios_celulares_3.price = 179
accesorios_celulares_3.save



puts "done."

## Users
rand = Random.new
#print "Creating 100 users..."
#100.times do
#  u = User.new
#  u.first_name = Faker::Name.first_name
#  u.last_name = Faker::Name.last_name
#  u.email = Faker::Internet.email
#  u.password = password
#  u.password_confirmation = password_confirmation
#  u.active = active
#  u.banned = banned
#  u.wishlist = []
#  u.wishlist << Product.all.entries[rand.rand(10)]
#  u.wishlist << Product.all.entries[rand.rand(10)]
#  gift = Gift.new
#  gift.product = Product.all[rand.rand(10)]
#  gift.score = rand.rand(10)
#  u.gifts = [gift]
#  u.save
#end
#puts "done."

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
a.username = 's.lifszyc'
a.password = 'password'
a.password_confirmation = 'password'
a.save

puts "Fer"
a = Admin.new
a.username = 'f.nino'
a.password = 'password'
a.password_confirmation = 'password'
a.save

print "Joaco..."
a = Admin.new
a.username = 'joaquinpb'
a.password = 'password'
a.password_confirmation = 'password'
a.save

puts "done"

#
# Creación de nuestros usuarios
#

puts "Creacion de nuestros usuarios..."

puts "Sacha"
sach = User.new
sach.first_name = 'Sacha'
sach.last_name = 'Lifszyc'
sach.email = 'sacha.lifszyc@gmail.com'
sachhobbies = ['Futbol', 'Basket', 'Música', 'Libros de ciencia ficción', 'Videojuegos', 'Tecnología', 'Entretenimiento']
sachhobbies.each do |h|
	hobbie = Hobby.new(name: h)
	sach.hobbies << hobbie
end
sach.password = '12345678'
sach.password_confirmation = '12345678'
sach.active = active
sach.banned = banned
sach.genre = 'Hombre'
sach.wishlist = []
sach.wishlist << ipad_mini_16_product
sach.wishlist << kindle_product
sach.wishlist << indumentaria_tenis_hombre_3_product
sach.wishlist << indumentaria_basquet_hombre_1_product
sach.gifts = []
gift = Gift.new
gift.product = tv32_product
gift.score = 4
sach.gifts << gift
gift.save
gift = Gift.new
gift.product = ps3_product
gift.score = 4
sach.gifts << gift
gift.save
sach.birthday = Date.new(1990, 8, 12)
sach.save

puts "Fer"
fer = User.new
fer.first_name = 'Fernando'
fer.last_name = 'Niño'
fer.email = 'nino.fernando@gmail.com'
fer.password = 'password'
fer.password_confirmation = 'password'
fer.active = active
fer.banned = banned
fer.genre = 'Hombre'
fer.wishlist = []
fer.wishlist << Product.all.entries[rand.rand(10)]
fer.wishlist << Product.all.entries[rand.rand(10)]
gift = Gift.new
gift.product = Product.all[rand.rand(10)]
gift.score = rand.rand(10)
fer.gifts = [gift]
fer.birthday = rand(20.years).ago
fer.save

puts "Joaco"
joaquincito = User.new
joaquincito.first_name = 'Joaquín'
joaquincito.last_name = 'Perez Bay'
joaquincito.email = 'joaquinperezbay@gmail.com'
joaquincito.password = '12345678'
joaquincito.password_confirmation = '12345678'
joaquincito.active = active
joaquincito.banned = banned
joaquincito.genre = 'Hombre'
joaquincito.hobbies = [Hobby.new(name:'Música electrónica'), Hobby.new(name:'Automovilismo'), Hobby.new(name:'Futbol'), Hobby.new(name:'Juegos de mesa'), Hobby.new(name:'Celulares'), Hobby.new(name:'Perros'), Hobby.new(name:'PC y Portátilas'), Hobby.new(name:'Libros de ciencia ficción'), Hobby.new(name:'Rock internacional'), Hobby.new(name:'Bebidas alcoholicas'), Hobby.new(name:'Películas series')]
joaquincito.wishlist = []
joaquincito.wishlist << apoyabrazo_product
joaquincito.wishlist << pc_clon_product
gift1 = Gift.new
gift1.product = galaxy_tab10_product
gift1.score = 4
gift2 = Gift.new
gift2.product = celulares_1_product
gift2.score = 2
gift3 = Gift.new
gift3.product = peliculas_series_5_product
gift3.score = 5
gift4 = Gift.new
gift4.product = juegos_de_mesa_3_product
gift4.score = 5
joaquincito.gifts = [gift1, gift2, gift3, gift4]
joaquincito.birthday = Date.new(1988, 07, 15)
joaquincito.save

print "Vero..."
vero = User.new
vero.first_name = 'Verónica'
vero.last_name = 'Crespi'
vero.email = 'crespi.veronica@gmail.com'
vero.password = '12345678'
vero.password_confirmation = '12345678'
vero.active = active
vero.banned = banned
vero.genre = 'Mujer'
vero.hobbies = [Hobby.new(name:'Ropa'), Hobby.new(name:'Cuidado personal'), Hobby.new(name:'Piano'), Hobby.new(name:'Peros'), Hobby.new(name:'Fotografía'), Hobby.new(name:'Novelas'), Hobby.new(name:'Suspenso'), Hobby.new(name:'Música clásica'), Hobby.new(name:'Rock internacional'),Hobby.new(name:'Natación')]
vero.wishlist = []
vero.wishlist << kindle_product
vero.wishlist << peliculas_series_3_product
vero.wishlist << auris2_product
gift1 = Gift.new
gift1.product = windows_product
gift1.score = 1
gift2 = Gift.new
gift2.product = notebook_samsung_product
gift2.score = 5
gift3 = Gift.new
gift3.product = juegos_de_mesa_2_product
gift4 = Gift.new
gift4.product = musica_heavy_metal_1_product
gift4.score = 5
gift5 = Gift.new
gift5.product = audio_antiguo_1_product
gift5.score = 5
vero.gifts = [gift1, gift2, gift3, gift4, gift5]
vero.birthday = Date.new(1991, 2,16)
vero.save

puts "Done"
print "Seeds germinado con exito ;)"
