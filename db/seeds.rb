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
accesorios_autos_category = Category.new(name: 'Accesorios para autos', description: 'Accesorios para autos, audio y tuning')
repuestos_autos_category = Category.new(name: 'Repuestos para autos', description: 'Todos los accesorios para tu Automóvil')
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
juegos_de_mesa_category = Category.new(name: 'Juegos', description: 'TEG, Juego de la Vida, Monopoly y otros clásicos')
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
telefonia_category = Category.new(name: 'Telefonía', description: '')
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
salud_category = Category.new(name: 'Salud', description: 'Cuidados del cuerpo, dietas')
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
indumentaria_futbol_hombre_category = Category.new(name: 'Indumentaria de Fútbol (hombres)', description: '')
indumentaria_futbol_mujer_category = Category.new(name: 'Indumentaria de Fútbol (mujeres)', description: '')
indumentaria_basquet_hombre_category = Category.new(name: 'Indumentaria de Básquet (hombres)', description: '')
indumentaria_basquet_mujer_category = Category.new(name: 'Indumentaria de  Básquet (mujeres)', description: '')
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
indumentaria_handball_hombre_category = Category.new(name: 'Indumentaria de Handball (hombres)', description: '')
indumentaria_handball_mujer_category = Category.new(name: 'Indumentaria de Handball (mujeres)', description: '')
indumentaria_gimnasio_hombre_category = Category.new(name: 'Indumentaria de Gimnasio (hombres)', description: '')
indumentaria_gimnasio_mujer_category = Category.new(name: 'Indumentaria de Gimnasio (mujeres)', description: '')
indumentaria_running_hombre_category = Category.new(name: 'Indumentaria de Running (hombres)', description: '')
indumentaria_running_mujer_category = Category.new(name: 'Indumentaria de Running (mujeres)', description: '')

puts "done."

#
# Guardar Categorías
print "Saving categories..."
#

autos_category.save
accesorios_autos_category.save
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
indumentaria_futbol_hombre_category.save
indumentaria_futbol_mujer_category.save
indumentaria_basquet_hombre_category.save
indumentaria_basquet_mujer_category.save
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
indumentaria_handball_hombre_category.save
indumentaria_handball_mujer_category.save
indumentaria_gimnasio_hombre_category.save
indumentaria_gimnasio_mujer_category.save
indumentaria_running_hombre_category.save
indumentaria_running_mujer_category.save

puts "done."

#
# Creación de Productos (Product)
print "Creating products..."
#

sensor_estacionamiento_product = Product.new(name: 'Sensor de estacionamiento', description: 'Conserva La Apariencia Original. No Requiere Agujerear El Paragolpe.', brand:'FAITEC', approved: 'true', photo_url:'http://mla-s2-p.mlstatic.com/sensores-de-estacionamiento-electromagneticos-sin-agujeros-5177-MLA4220819288_042013-O.jpg', "category_ids" => accesorios_autos_category._id)
apoyabrazo_product = Product.new(name: 'Apoyabrazos Universal', description: 'Apoyabrazo universal central, con porta objetos y posa vasos trasero', brand:'NCB', approved: 'true', photo_url:'http://mla-s2-p.mlstatic.com/apoyabrazo-universal-central-100-regulable-muy-practico-5292-MLA4275019753_052013-O.jpg', "category_ids" => accesorios_autos_category._id)
kit_emergencia_auto_product = Product.new(name: 'Kit de emergencia para auto', description: 'Matafuego Balizas Chaleco Botiquín Cuarta Tensores Guantes Y Bolso', brand:'Georgia', approved: 'true', photo_url:'http://img2.mlstatic.com/kit-reglamentario-de-emergencia-para-el-automovil-8-en-1_MLA-O-136769896_4751.jpg', "category_ids" => accesorios_autos_category._id)
llantas_product = Product.new(name: 'Llantas de aleacion deportiva', description: 'Llanta de Aleación inyectada marca Style Line rodado 15x6,5 de ancho', brand:'Il Cavallino', approved: 'true', photo_url:'http://mla-s1-p.mlstatic.com/llantas-de-aleacion-deportiva-style-line-rodado-15-6261-MLA83592718_3758-O.jpg', "category_ids" => accesorios_autos_category._id)
enganche_trailer_product = Product.new(name: 'Enganche trailer para auto', description: 'Estructura caño laminado en caliente con 3,20mm espesor', brand:'Ciclon escapes', approved: 'true', photo_url:'http://img1.mlstatic.com/-enganches-para-trailers-somos-fabricantes-_MLA-O-78216093_922.jpg', "category_ids" => accesorios_autos_category._id)
espiral_amortiguador_product = Product.new(name: 'Espiral progresivo', description: 'Reduce el centro de gravedad, look deportivo, mejora la estabilidad, control y maniobrabilidad.', brand:'Agkit', approved: 'true', photo_url:'http://mla-s2-p.mlstatic.com/espiral-progresivo-ag-kit-todos-los-modelos-4200-MLA2693617431_052012-O.jpg', "category_ids" => repuestos_autos_category._id)
cierre_centralizado_product = Product.new(name: 'Cierre centralizado', description: 'Con control remoto indestructible', brand:'NCB', approved: 'true', photo_url:'http://mla-s2-p.mlstatic.com/cierre-centralizado-con-dos-controles-remoto-indestructibles-4051-MLA111117901_1379-O.jpg', "category_ids" => repuestos_autos_category._id)
kit_amortiguadores_product = Product.new(name: 'Kit amortiguadores regulables', description: 'Amortiguador deportivo de alto redimiento, desarmable con válvula antidescarga.', brand:'JORSA', approved: 'true', photo_url:'http://mla-s1-p.mlstatic.com/kit-de-amortiguadores-regulables-en-altura-4063-MLA128067384_478-O.jpg', "category_ids" => repuestos_autos_category._id)
bateria_auto_product = Product.new(name: 'Bateria de auto 12x75', description: 'Batería de calcio - plata. Libre mantenimiento, apto para vehículos GNC y gasoleros.', brand:'COSMOS', approved: 'true', photo_url:'http://mla-s1-p.mlstatic.com/bateria-autos12x75-diesel-gnc-calcio-plata-cosmos-4004-MLA104753327_1491-O.jpg', "category_ids" => repuestos_autos_category._id)
cubiertas_bridgestone_product = Product.new(name: 'Ruedas Bridgestone', description: '195/55R15 85H Bridgestone Turanza ER30 Original Volkswagen Suran, Fox', brand:'Bridgestone', approved: 'true', photo_url:'https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcSeuV1aZcdtHuev0PAxS7FrBMYTSCDVVuh9knDLFdoJrO98uMPa1g', "category_ids" => repuestos_autos_category._id)
alarma_moto_product = Product.new(name: 'Alarma Positron para moto', description: 'Alarma Pst Positron Mps100 Fx Modelo Fas Motos', brand:'Positron', approved: 'true', photo_url:'http://mla-s1-p.mlstatic.com/oferta-alarma-pst-positron-mps100-fx-nuevo-modelo-fas-motos-4034-MLA120789680_122-O.jpg', "category_ids" => accesorios_motos_category._id)
funda_moto_product = Product.new(name: 'Funda cubre moto', description: 'Funda impermeable reforzada 100% impermeable. No raya la pintura de la moto.', brand:'NET', approved: 'true', photo_url:'http://mla-s2-p.mlstatic.com/funda-cubre-moto-2-medidas-impermeable-facil-colocacoon-5348-MLA4365167047_052013-O.jpg', "category_ids" => accesorios_motos_category._id)
intercomunicador_moto_product = Product.new(name: 'Intercomunicador Bluetooth para casco', description: '500 metros de distancia, 7 horas de conversación, funciona hasta 120km/h, resistente al agua. Batería de litio', brand:'Bidcom', approved: 'true', photo_url:'http://img2.mlstatic.com/intercomunicadores-bluetooth-kit-manos-libres-stereo-casco_MLA-O-3173184869_092012.jpg', "category_ids" => accesorios_motos_category._id)
amplificador_moto_product = Product.new(name: 'Amplificador de Potencia Audio', description: 'Amplificador Hifi 12v 180w estereo para Moto. 2 entradas RCA audio. Original con garantía', brand:'SP-140', approved: 'true', photo_url:'http://mla-s1-p.mlstatic.com/amplificador-potencia-audio-hifi-12v-1-sonido-moto-pc-compu-4173-MLA2752378260_052012-O.jpg', "category_ids" => accesorios_motos_category._id)
arrancador_motos_product = Product.new(name: 'Arrancador Inflador para Motos', description: 'Arrancador, inflador y batería auxiliar para auto y motos.', brand:'Black&Decker', approved: 'true', photo_url:'http://mla-s2-p.mlstatic.com/arrancador-inflador-bateria-aux-auto-moto-4x4-black-decker-5169-MLA41934278_328-O.jpg', "category_ids" => accesorios_motos_category._id)
botas_moto_product = Product.new(name: 'Botas motocross', description: 'Botas motocross higly ATV-Enduro-cross Serie 2012 Fas Motos', brand:'hifly', approved: 'true', photo_url:'http://mla-s1-p.mlstatic.com/botas-motocross-hifly-atv-enduro-cross-serie-2012-fas-motos-4190-MLA2779887024_062012-O.jpg', "category_ids" => indumentaria_motos_category._id)
casco_moto_product = Product.new(name: 'Casco Rebatilbe', description: 'Rebatible con visor interno, sistema de cierre súper rápido y seguro. Ventilación posterior, inferior y superior', brand:'Max', approved: 'true', photo_url:'http://mla-s1-p.mlstatic.com/casco-rebatible-v-can-v-210-doble-visor-2012-en-fas-motos-4140-MLA142656118_642-O.jpg', "category_ids" => indumentaria_motos_category._id)
campera_moto_product = Product.new(name: 'Campera Joe Rocket Atomic 4,0', description: 'Capa exterior de rocktex 100% impermeable, con protectores de hombros y codos, pad de espina extraible. Ventilación vinculado con tunel de enfriamiento. Cintura ajustable', brand:'Yamaha', approved: 'true', photo_url:'http://mla-s2-p.mlstatic.com/campera-joe-rocket-atomic-40-envio-sin-cargo-en-fas-motos-5077-MLA4102247267_042013-F.jpg', "category_ids" => indumentaria_motos_category._id)
conjunto_moto_product = Product.new(name: 'Conjunto Motocross', description: 'Conjunto pantalon y buzo para motocross enduro Atv Fas Motos', brand:'FOX', approved: 'true', photo_url:'http://mla-s1-p.mlstatic.com/conjunto-pantalon-y-buzo-motocross-enduro-atv-fas-motos-4036-MLA118278091_7194-F.jpg', "category_ids" => indumentaria_motos_category._id)
equipo_lluvia_moto_product = Product.new(name: 'Traje/Equipo de lluvia para motos', description: '100% impermeable, pvc revestido con malla de poliester. Los reflectivos alba proveen la mejor visibilidad a distancias para su seguridad.', brand:'Alba', approved: 'true', photo_url:'http://mla-s2-p.mlstatic.com/trajeequipo-de-lluvia-alba-2013-al-mejor-precio-fas-motos-4270-MLA2926638843_072012-F.jpg', "category_ids" => indumentaria_motos_category._id)
stereo_autos_product = Product.new(name: 'Stereo para autos', description: 'Stereo Pionee Deh 155 / 1550 USB New Linea', brand:'Pioneer', approved: 'true', photo_url:'http://img1.mlstatic.com/stereo-pioneer-deh-155-1550-usb-new-linea-gtia-usa-jw_MLA-O-3373433158_112012.jpg', "category_ids" => audio_vehiculos_category._id)
subwoofer_auto_product = Product.new(name: 'Combo Subwoofer + Cajón + Potencia + Kit', description: 'Subwoofer 400 RMS 12 pulgadas + Caja + Potencia Boss + Kit de cables', brand:'Pioneer', approved: 'true', photo_url:'http://mla-s2-p.mlstatic.com/combo-subwoofer-pioneer-310-cajon-potencia-boss-kit-5106-MLA4203313716_042013-F.jpg', "category_ids" => audio_vehiculos_category._id)
dvd_auto_product = Product.new(name: 'DVD Pioneer para auto', description: 'DVD Piooner 735 Av DVD - USB - Linea 2012 RCA', brand:'Pioneer', approved: 'true', photo_url:'http://img2.mlstatic.com/dvd-pioneer-735-av-dvd-usb-linea-2012-rca-capital-federal_MLA-O-143735713_9700.jpg', "category_ids" => audio_vehiculos_category._id)
volante1_auto_product = Product.new(name: 'Volante deportivo para auto', description: 'Viene en varios colores. Hecho de aluminio y caucho antideslizante', brand:'Westunning', approved: 'true', photo_url:'http://mla-s2-p.mlstatic.com/volante-deportivo-32cm-33cm-varios-colores-tunning-5082-MLA4164664554_042013-F.jpg', "category_ids" => volantes_category._id)
volante2_auto_product = Product.new(name: 'Volante Rallye para auto', description: 'Volante Rallye Super Surf Gol Parati Saveiro G1 G2 G3 G4 G5', brand:'Saveiro Surf', approved: 'true', photo_url:'http://mla-s2-p.mlstatic.com/volante-rallye-super-surf-gol-parati-saveiro-g1-g2-g3-g4-g5-6347-MLA5053042121_092013-O.jpg', "category_ids" => volantes_category._id)
volante3_auto_product = Product.new(name: 'Volante deportivo ju lchi para auto', description: 'Volante deportivo Modelo: Bart 34cm de diametro. Volante de 3 rayos, combinado de poliuretano y cuero ecologico.', brand:'Lidecar', approved: 'true', photo_url:'http://mla-s2-p.mlstatic.com/volante-deportivo-ju-ichi-modelo-bart-34cm-diametro-4009-MLA110309907_3598-F.jpg', "category_ids" => volantes_category._id)
polarizado1_autos_product = Product.new(name: 'Polarizado 3M para autos', description: 'Sistema antiasalto. Lamina de seguridad 200 micrones + Polarizado 3M intermedio lamina de alto impacto', brand:'3M', approved: 'true', photo_url:'http://img1.mlstatic.com/polarizado-3m-antivandalico-imperdible_MLA-O-138185923_5806.jpg', "category_ids" => polarizado_category._id)
polarizado2_autos_product = Product.new(name: 'Polarizado de autos', description: 'Film de origen importado con filtro UV. 10 años de garantía. Tonalidades a elección', brand:'Polar Cars', approved: 'true', photo_url:'http://mla-s1-p.mlstatic.com/polarizado-de-autos-desde-17999-garantia-10-anos-5138-MLA4199474468_042013-O.jpg', "category_ids" => polarizado_category._id)
telefono_inalambrico_product = Product.new(name: 'Teléfono Inalambrico Siemens Gigaset A400', description: 'Tecnología ECO DECT 6.0 calidad de voz y reducción de energia. Expandible hasta 4 handies', brand:'Siemens', approved: 'true', photo_url:'http://mla-s2-p.mlstatic.com/inalambrico-siemens-gigaset-a400duo-dect-60mlibres-nuevo-4085-MLA119378983_2558-O.jpg', "category_ids" => telefonia_category._id)
telefono_product = Product.new(name: 'Telefono Fijo Polaroid Ptp-110', description: 'Telefono Fijo Polaroid Ptp-110. Apto para colgar en la pared. Teclado independiente del auricular. Parpadeante de sonado. Función de flash.', brand:'Polaroid', approved: 'true', photo_url:'http://img1.mlstatic.com/telefono-fijo-polaroid-ptp-110-apto-para-colgar-pared-y-mesa_MLA-O-3378629826_112012.jpg', "category_ids" => telefonia_category._id)
telefono2_product = Product.new(name: 'Telefono Inalambrico Panasonic Kx Tc1311', description: 'Mesa o pared. Identificador de llamadas. 6 tonos polifónicos. Agenda de 50 números. Pantalla luminosa. 22 idiomas', brand:'Panasonic', approved: 'true', photo_url:'http://mla-s1-p.mlstatic.com/telefono-inalambrico-panasonic-kx-tc1311-dect-60-cidentif-4036-MLA117474762_5866-O.jpg', "category_ids" => telefonia_category._id)
telefono_labios_product = Product.new(name: 'Telefono Labios - Boca', description: 'Cable de conexión telefónica. Dispone de tecla redial/pausa/tono y pulso. Teclado digital y cable del mismo color que el teléfono.', brand:'Regalo Original', approved: 'true', photo_url:'http://mla-s1-p.mlstatic.com/telefono-labios-boca-mejor-precio-regalo-original-4003-MLA106999224_4963-O.jpg', "category_ids" => telefonia_category._id)
telefono_zapato_product = Product.new(name: 'Telefono Zapato Con Taco', description: 'Cable de conexión telefónica. Dispone de tecla redial/pausa/tono y pulso. Teclado digital y cable del mismo color que el teléfono.', brand:'Regalo Original', approved: 'true', photo_url:'http://mla-s1-p.mlstatic.com/telefono-zapato-con-taco-importado-grande-6-colores-oferta-4112-MLA2798624916_062012-O.jpg', "category_ids" => telefonia_category._id)
telefono_kitty_product = Product.new(name: 'Telefono Hello Kitty', description: 'Cable de conexión telefónica. Dispone de tecla redial/pausa/tono y pulso. Teclado digital y cable del mismo color que el teléfono.', brand:'Regalo Original', approved: 'true', photo_url:'http://mla-s1-p.mlstatic.com/telefono-hello-kitty-exclusivo-oferta-unico-en-mercado-libre-4157-MLA2785414259_062012-F.jpg', "category_ids" => telefonia_category._id)
galaxy_tab_product = Product.new(name: 'Samsung Galaxy Tab 2 P3110', description: 'Pantalla 7". Comunicación fácil y divertida. Android 4.0 Ice Cream Sandwich. Procesador Dual Core. Conectividad Wi-Fi', brand:'Samsung', approved: 'true', photo_url:'http://mla-s1-p.mlstatic.com/nueva-samsung-galaxy-tab-2-p3110-8gb-android-40-wifi-7-led-5188-MLA4215591754_042013-F.jpg', "category_ids" => tablets_category._id)
galaxy_tab10_product = Product.new(name: 'Samsung P5210 Galaxy Tab 3', description: 'Pantalla 10.1". Comunicación fácil y divertida. Android 4.0 Ice Cream Sandwich. Procesador Quad Core. Conectividad Wi-Fi', brand:'Samsung', approved: 'true', photo_url:'http://mla-s1-p.mlstatic.com/samsung-p5210-galaxy-tab-3-de-101-pulgadas-nueva-5529-MLA4973169903_092013-O.jpg', "category_ids" => tablets_category._id)
ipad_mini_16_product = Product.new(name: 'Ipad Mini 16gb ', description: 'La pantalla mide 7.9 pulgadas de diagonal con una resolución de 1024 x 768 píxeles, la misma que el iPad 2. La tecnología de pantalla no es Retina, un aspecto que decepcionará a más de uno. Del otro lado, la pantalla tiene un 35% más área que la de, por ejemplo, el Google Nexus 7. Tras la estela del iPhone 5 Otro de los cambios externos que se veían venir es la incorporación del conector Lightning del iPhone 5 en el iPad Mini. La batería del dispositivo tiene una autonomía nominal de 10 horas. Internamente, el iPad Mini se mueve gracias al procesador Apple A5 de doble núcleo que también vemos en el iPhone 5.', brand:'Apple', approved: 'true', photo_url:'http://i.ebayimg.com/t/Apple-iPad-mini-16GB-Wi-Fi-4G-Cellular-AT-T-7-9in-Black-Slate-Latest-Model/00/$(KGrHqJHJEkFBjRBmT29BQmUdQ1eMg~~_35.JPG', "category_ids" => tablets_category._id)
kindle_product = Product.new(name: 'Amazon Kindle 5ta Generacion', description: 'El mejor dispositivo de lectura del mercado. Piérdete dentro de la lectura. Diseño ergonómico. Nunca se calienta', brand:'Amazon', approved: 'true', photo_url:'http://cdn3.pcadvisor.co.uk/cmsdata/reviews/3405763/Kindle_5_2012_store.jpg', "category_ids" => tablets_category._id)
sony_ereader_product = Product.new(name: 'Sony E-reader 6 Prs-t2hbc', description: 'Libre de publicidad. Librería de descargas pública. Excelente para viajes. Maravillate leyendo.', brand:'Sony', approved: 'true', photo_url:'http://www.bestbuybusiness.com/bbfb/en/US/htdocs/productMgr/datasheet/Reader_WiFi_Black_front.JPG', "category_ids" => tablets_category._id)
kindle_fire_product = Product.new(name: 'Kindle Fire Hd 16gb', description: 'Tablet 7 Pulgadas Pantalla Color HD Antirreflex Multitouch de mayor resolución. 16Gb de almacenamiento. Sonido Dolby Estereo. WiFi doble antena. Procesador QUAD Core 2,2Ghz. Webcam. USB. HDMI 2GB RAM', brand:'Amazon', approved: 'true', photo_url:'http://mla-s2-p.mlstatic.com/amazon-kindle-fire-hd-16gb-ebook-tablet-7-pulg-caja-cerrada-4504-MLA3687218049_012013-O.jpg', "category_ids" => tablets_category._id)
notebook_samsung_product = Product.new(name: 'Notebook Samsung Serie 3 B960', description: 'Pantalla 15.6" anti-reflejo. Superficie antimarcas. Calidad que dura. Battery-life plus: tecnología anti-envejecimiento de la batería. 4GB de RAM. 500GB de disco. Lectora de DVD.', brand:'Samsung', approved: 'true', photo_url:'http://ftcenlinea.com/promote/image/cache/data/Productos/Computadoras%20Portatiles/Notebook%20SamsungNP300E4C-A02MX-600x600.jpg', "category_ids" => pcs_portatiles_category._id)
notebok_exo_product = Product.new(name: 'Notebook Exo Nice C1443h', description: 'Industria nacional. Procesador i3 2.1ghz. 4gb de RAM. 500gb de disco duro.', brand:'Exo', approved: 'true', photo_url:'http://mla-s2-p.mlstatic.com/notebook-exo-nice-14-c1443h-dual-core-win8-4gb-320gb-hdmi-3220-MLA4832255422_082013-O.jpg', "category_ids" => pcs_portatiles_category._id)
all_in_one_bgh_product = Product.new(name: 'All In One Bgh Aio 515', description: 'Procesador Intel Celeron. Pantalla 18.5". 2gb de RAM. 5 puertos USB', brand:'BGH', approved: 'true', photo_url:'http://www.rodo.com.ar/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/b/g/bgh_one_515.png', "category_ids" => pcs_portatiles_category._id)
pc_clon_product = Product.new(name: 'Pc Escritorio Gamer', description: 'MOTHER A55M-P35. CPU AMD A4 5300 3.4. GHZ 1MB CACHE. RADEON GRAPHICS MEMORIA KINGSTON 4GBX2 HX 1600MHZ TOTAL 8GB. UNIDAD OPTICA DVD-RW LG 24X. DISCO RIGIDO WESTER DIGITAL 1TB 7200RPM SATA3 64MB. PLACA DE VIDEO XFX GT630 2GB DDR3. GABINETE OVER CASE OEM SIN CAJA.', brand:'Clon', approved: 'true', photo_url:'http://mla-s1-p.mlstatic.com/pc-escritorio-gamer-nueva-en-caja-se-retira-por-burzaco-4551-MLA3765411669_022013-F.jpg', "category_ids" => pcs_portatiles_category._id)
windows_product = Product.new(name: 'Windows 8 en español', description: 'Licencia original. Versión de 32 o 64 bits. Requisitos mínimos: procesador 1ghz, 1gb RAM, 16gb de espacio libre, tarjeta gráfica con DirectX 9.', brand:'Microsoft', approved: 'true', photo_url:'http://www.antivirussupport.com/Images/819d90a07bf27cb6c850cd18342e54e2.jpg', "category_ids" => software_category._id)
adobe_product = Product.new(name: 'Adobe CS6 Master Collection', description: 'Funciona en Windows o en Mac. Contiene: Photoshop CS6, Illustrator CS6, InDesign CS6, Acrobat X Pro, Flash Professional CS6, Dreamweaver CS6, Fireworks CS6, Bridge CS6 y más!', brand:'Adobe', approved: 'true', photo_url:'http://mla-s1-p.mlstatic.com/adobe-cs6-master-collection-windows-mac-osx-full-espanol-563-MLA4690886991_072013-F.jpg', "category_ids" => software_category._id)
office2013_product = Product.new(name: 'Microsoft Office 2013', description: 'Su office para el hogar y los deberes escolares. Simplifique su manera de compartir. Convierta sus ideas en bellos documentos', brand:'Microsoft', approved: 'true', photo_url:'http://i.ebayimg.com/00/s/NTAwWDM1NA==/z/M5UAAOxyA4ZRJbIp/$(KGrHqZ,!iwFDyvmQfSTBRJbIpMsVw~~60_35.JPG?set_id=8800005007', "category_ids" => software_category._id)
jaulon_pajaro_loro_product = Product.new(name: 'Jaulón Pájaro Loro', description: '´Jaula con ruedas, 55x55x1.25. Espectacular', brand:'Aerojaula', approved: 'true', photo_url:'http://mla-s2-p.mlstatic.com/jaulon-pajaro-loro-con-ruedas-55x55x125alto-espectacular-4094-MLA119564909_8410-O.jpg', "category_ids" => mascotas_category._id)
manta_caballo_product = Product.new(name: 'Manta ecológica para caballos', description: 'Manta ecológica de yute y friselina, apta para presentación y entrada a cancha', brand:'Baticola', approved: 'true', photo_url:'http://mla-s1-p.mlstatic.com/manta-ecologica-para-caballos-apta-para-cancha-5510-MLA4451880998_062013-F.jpg', "category_ids" => mascotas_category._id)
comedero_dispenser_gatos_product = Product.new(name: 'Comedero y dispenser para gatos', description: 'El snack box activity es un ingenioso juguete, que entretiene y alimenta a la vez dado que funciona como un juego de ingenio y despensador de alimento al mismo tiempo ', brand:'Cankun', approved: 'true', photo_url:'http://mla-s1-p.mlstatic.com/comedero-dispenser-comida-para-gatos-jugar-comer-ideal-3892-MLA4868787612_082013-O.jpg', "category_ids" => mascotas_category._id)
funda_asiento_product = Product.new(name: 'Funda para auto', description: 'Funda para auto para todo animal', brand:'Fundas Nico', approved: 'true', photo_url:'http://mla-s1-p.mlstatic.com/funda-asiento-auto-mascota-perro-regalo-dia-de-la-madre-mira-6208-MLA59146323_2190-O.jpg', "category_ids" => mascotas_category._id)
buzos_perro_product = Product.new(name: 'Buzos para perros', description: 'Buzos adidog para perros, muy abrigaditos y súper cancheros', brand:'Adidog', approved: 'true', photo_url:'http://mla-s2-p.mlstatic.com/unicos-buzos-adidog--4889-MLA3907315774_032013-O.jpg', "category_ids" => mascotas_category._id)
bataraz_pajaro_product = Product.new(name: 'Pollitos Bataraz', description: 'Sin sexar', brand:'Granaja la Zaphira', approved: 'true', photo_url:'http://mla-s1-p.mlstatic.com/pollitos-bataraz-sin-sexar-plymouth-rock-barrado-7505-MLA5226944931_102013-F.jpg', "category_ids" => aves_category._id)
pollitos_pajaro_product = Product.new(name: 'Pollitos Bebé', description: 'Varios colores, sin sexar', brand:'Cruza de campo', approved: 'true', photo_url:'http://mla-s1-p.mlstatic.com/pollitos-bebe-cruza-de-campo-7865-MLA5280161746_102013-O.jpg', "category_ids" => aves_category._id)
urraca_pajaro_product = Product.new(name: 'Urraca', description: 'Ave de misiones, traida de Brasil', brand:'', approved: 'true', photo_url:'http://mla-s2-p.mlstatic.com/urraca-ave-de-misiones-traida-de-brasil-8067-MLA5322714605_112013-F.jpg', "category_ids" => aves_category._id)
conejos1_product = Product.new(name: 'Conejos Enanos', description: 'Viene con Jaulita + alimento + certificado de naciemitno + guía de cuidados', brand:'', approved: 'true', photo_url:'http://mla-s2-p.mlstatic.com/conejos-enanos-orejas-caidas-holland-lop-o-dutch-jaula-4293-MLA3494327941_122012-F.jpg', "category_ids" => conejos_category._id)
conejos2_product = Product.new(name: 'Conejos Holland Lop', description: 'Conejitos Holland Lop, enanos de orejas caidas + Jaula', brand:'', approved: 'true', photo_url:'http://mla-s2-p.mlstatic.com/conejitos-holland-lop-enanos-de-orejas-caidas-jaula-4020-MLA116985644_6181-F.jpg', "category_ids" => conejos_category._id)
conejos3_product = Product.new(name: 'Conejos Super enanos', description: 'Super enanos raza Dutch', brand:'', approved: 'true', photo_url:'http://mla-s2-p.mlstatic.com/conejos-super-enanos-raza-dutch-6174-MLA4619063804_072013-O.jpg', "category_ids" => conejos_category._id)
gato1_product = Product.new(name: 'Gato persa', description: 'Gato persa Himalayo macho nacido el 12/09/13.', brand:'', approved: 'true', photo_url:'http://mla-s2-p.mlstatic.com/hermosos-gatitos-persas-himalayos-2-machitos-divinos-7807-MLA5289847859_102013-F.jpg', "category_ids" => gatos_category._id)
gato2_product = Product.new(name: 'Siames puro', description: 'Siames puro, sano, desaparacitado', brand:'Criadero Siames Tradic', approved: 'true', photo_url:'http://img1.mlstatic.com/siameses-puros-sanitos-desparacitados-criadero-siames-tradic_MLA-O-135070220_4546.jpg', "category_ids" => gatos_category._id)
gato3_product = Product.new(name: 'Servicio de reproducto Gato Persa Red', description: 'Servicio de reproductor gato persa red, con todas su vacunas al día, análisis VIF y VILEF negativo', brand:'Garfield', approved: 'true', photo_url:'http://mla-s1-p.mlstatic.com/servicio-de-reproductor-gato-persa-red-2191-MLA4781160199_082013-F.jpg', "category_ids" => gatos_category._id)
pez1_product = Product.new(name: 'Carpas Koi', description: 'Importadas de singapur, 18cm', brand:'', approved: 'true', photo_url:'http://mla-s2-p.mlstatic.com/carpas-koi-importadas-de-singapur-18-cm-3249-MLA4832991062_082013-O.jpg', "category_ids" => peces_category._id)
pez2_product = Product.new(name: 'Peces tropicales', description: '16 peces tropicales: 3 Platis, 3 neones negros, 4 Levistes, 4 cebras, 2 espadas.', brand:'', approved: 'true', photo_url:'http://mla-s2-p.mlstatic.com/combo-16-peces-tropicales-planta-4097-MLA101408163_8985-O.jpg', "category_ids" => peces_category._id)
pez3_product = Product.new(name: 'Peces agua fría', description: '10 peces de agua fría: 2 telecópicos negros, 2 carasius naranjas, 2 carasius cálicos, 2 cometas naranja intenso y 2 otocinclus', brand:'Aquariumba', approved: 'true', photo_url:'http://mla-s2-p.mlstatic.com/combo-peces-agua-fria-10-peces-4026-MLA117009755_8142-O.jpg', "category_ids" => peces_category._id)
perro1_product = Product.new(name: 'Caniche toy', description: 'Caniches Toy de raza, se entregan a partir de los 45 días. Todos los colores', brand:'', approved: 'true', photo_url:'http://bimg2.mlstatic.com/cachorros-caniches-toy-miralos-todos-los-colores_MLA-F-3238288810_102012.jpg', "category_ids" => perros_category._id)
perro2_product = Product.new(name: 'Bichon Frise', description: 'Inscripto en la FCA', brand:'Criadero pequeña Utopía', approved: 'true', photo_url:'http://mla-s1-p.mlstatic.com/bichon-frise-los-mas-bonitos-con-pedigri-de-fca-4887-MLA3901339972_022013-F.jpg', "category_ids" => perros_category._id)
perro3_product = Product.new(name: 'Perro Salchica', description: 'Perros salchicha mini puros. 1 macho negro fuego, 2 machos arlequines. Desparacitados', brand:'', approved: 'true', photo_url:'http://mla-s2-p.mlstatic.com/salchica-mini-puros-6812-MLA5114282032_092013-F.jpg', "category_ids" => perros_category._id)
perro4_product = Product.new(name: 'Perro Boxer', description: 'Puros, buen linaje, buen porte, cariñosos.', brand:'', approved: 'true', photo_url:'http://mla-s1-p.mlstatic.com/boxer-el-mejor-cachorro-para-los-chicos-6967-MLA5127556083_092013-F.jpg', "category_ids" => perros_category._id)
roedor1_product = Product.new(name: 'Cobayo', description: 'Cobayos Americanos y abisinios.', brand:'Rodentia', approved: 'true', photo_url:'http://mla-s1-p.mlstatic.com/cobayos-americanos-y-abisinios-bebes-unicos-miralos-6282-MLA99775450_4481-O.jpg', "category_ids" => roedores_category._id)
roedor2_product = Product.new(name: 'Hamster', description: 'Hamster enano ruso, hamstera, rueda, tapa-reja.', brand:'Rodentia', approved: 'true', photo_url:'http://mla-s2-p.mlstatic.com/tene-ya-tu-hamster-enano-ruso-hamstera-rueda-tapa-reja-4022-MLA117224481_6316-O.jpg', "category_ids" => roedores_category._id)
roedor3_product = Product.new(name: 'Chinchilla', description: 'Certificado sanitario, sanas, limpias. De todas las edades y los colores.', brand:'ChinchiPets', approved: 'true', photo_url:'http://mla-s2-p.mlstatic.com/chinchillas-las-mas-lindas-y-dociles-pets-4148-MLA2533102225_032012-O.jpg', "category_ids" => roedores_category._id)
audio_antiguo_1_product = Product.new(name: 'Discos de Pasta', description: 'Discos de pasta 78rpm No vinilo. Lote para colección', brand:'RCA Victor', approved: 'true', photo_url:'http://mla-s1-p.mlstatic.com/discos-pasta-78-rpm-no-vinilo-lote-154-MLA4664121901_072013-F.jpg', "category_ids" => audio_antiguo_category._id)
audio_antiguo_2_product = Product.new(name: 'Tocadisco', description: 'Funcionan las distintas velocidad, volumen y tono', brand:'Winco', approved: 'true', photo_url:'http://mla-s1-p.mlstatic.com/tocadisco-winco-funciona-7976-MLA5297560768_102013-F.jpg', "category_ids" => audio_antiguo_category._id)
audio_antiguo_3_product = Product.new(name: 'Radio RCA', description: 'Radio RCA Victor Década del 40. Carcasa baquelita.', brand:'RCA Victor', approved: 'true', photo_url:'http://mla-s1-p.mlstatic.com/radio-rca-victor-decada-del-40-de-carcasa-de-baquelita-6435-MLA5068473027_092013-F.jpg', "category_ids" => audio_antiguo_category._id)
cristaleria_antigua_1_product = Product.new(name: 'Copas antiguas', description: 'Juego de 11 copas verdes para vino blanco. Medianas. Altura: 13cm', brand:'', approved: 'true', photo_url:'http://mla-s1-p.mlstatic.com/copas-antiguas-talladas-verdes-vino-blanco-preciosas-5109-MLA4227251113_042013-F.jpg', "category_ids" => cristaleria_antigua_category._id)
cristaleria_antigua_2_product = Product.new(name: 'Conjunto de botellas', description: 'Conjunto de botellas antiguas de diferentes colores', brand:'', approved: 'true', photo_url:'http://mla-s2-p.mlstatic.com/conjunto-de-botellas-antiguas-de-diferentes-colores-4380-MLA3612042486_012013-F.jpg', "category_ids" => cristaleria_antigua_category._id)
cristaleria_antigua_3_product = Product.new(name: 'Licorera/Whiskera', description: 'Licorera de cristal tallado con virola plateada. Medidas: 34x10x10cm', brand:'', approved: 'true', photo_url:'http://mla-s2-p.mlstatic.com/licorera-whiskera-7255-MLA5186402109_102013-F.jpg', "category_ids" => cristaleria_antigua_category._id)
camaras_antiguas_1_product = Product.new(name: 'Cámara de fotos antiguas', description: 'Cámara de fotos antigua marca Kodak. Impecable, muy vieja.', brand:'Kodak', approved: 'true', photo_url:'http://mla-s1-p.mlstatic.com/kodak-camara-de-fotos-antigua-inpecable-muy-vieja-7953-MLA5303820722_102013-O.jpg', "category_ids" => camaras_antiguas_category._id)
camaras_antiguas_2_product = Product.new(name: 'Camara filmadora antigua', description: 'Cámara filmadora de 16mm Revere 16. Año 1947', brand:'El arcon', approved: 'true', photo_url:'http://mla-s2-p.mlstatic.com/el-arcon-antigua-camara-filmadora-de16-mm-revere-16-de-1947-4035-MLA127759844_3291-F.jpg', "category_ids" => camaras_antiguas_category._id)
camaras_antiguas_3_product = Product.new(name: 'Proyecto super 8', description: 'Proyector súper 8 Canon Ps-1000 sonoro. Graba sonido. Incluye accesorios y micrófono original y protectores.', brand:'Canon', approved: 'true', photo_url:'http://mla-s1-p.mlstatic.com/proyector-super-8-canon-ps-1000-sonoro-1613-MLA4764372490_082013-O.jpg', "category_ids" => camaras_antiguas_category._id)
iluminacion_antigua_1_product = Product.new(name: 'Araña antigua', description: 'Elegante araña de cristal. Partes de metal en dorado o plata', brand:'E-Luminarte', approved: 'true', photo_url:'http://mla-s1-p.mlstatic.com/e-luminarte-unicas-aranas-lamparas-cristal-caireles-al-costo-4066-MLA105678728_9736-O.jpg', "category_ids" => iluminacion_antigua_category._id)
iluminacion_antigua_2_product = Product.new(name: 'Lámpara de mesa antigua', description: 'Lámpara de mesa especial Luis XV. Incluye espejo haciendo juego', brand:'', approved: 'true', photo_url:'http://mla-s1-p.mlstatic.com/hermosa-lampara-de-mesa-especial-luis-xv-mas-oferta--6456-MLA5063526574_092013-F.jpg', "category_ids" => iluminacion_antigua_category._id)
iluminacion_antigua_3_product = Product.new(name: 'Menorá de bronce', description: 'Candelabro menorá de 7 veles hecho en bronce. 21cm de alto', brand:'Fundación Tzedaka', approved: 'true', photo_url:'http://mla-s2-p.mlstatic.com/menora-de-7-velas-hecho-en-bronce-fundacion-tzedaka-7968-MLA5301182948_102013-F.jpg', "category_ids" => iluminacion_antigua_category._id)
juguetes_antiguos_1_product = Product.new(name: 'Muñeca antigua', description: 'Muñeca negra de pasta de época (1940), argentinas y alemanas. 32cm de alto.', brand:'', approved: 'true', photo_url:'http://mla-s2-p.mlstatic.com/munecas-negras-de-pasta-antigua-hermosas-2254-MLA4788459592_082013-F.jpg', "category_ids" => juguetes_antiguos_category._id)
juguetes_antiguos_2_product = Product.new(name: 'Tractor antiguo', description: 'Tractor de juguete con pala Duravit. De colección, 60 años de antiguedad en muy buen estado de conservación', brand:'Duravit', approved: 'true', photo_url:'http://mla-s1-p.mlstatic.com/tractor-duravit-de-coleccion-7938-MLA5295488484_102013-F.jpg', "category_ids" => juguetes_antiguos_category._id)
juguetes_antiguos_3_product = Product.new(name: 'Triciclo antiguo restaurado', description: 'Triciclo restaurado, pintura a fuego color pastel original. Rayos y masas zincadas, arcos restaurados realizamos a mano. Manubrio, palancas, asiento, tornillos y cromados', brand:'', approved: 'true', photo_url:'http://mla-s1-p.mlstatic.com/triciclo-restaurado-a-nuevo-con-todo-original-6533-MLA5082289249_092013-F.jpg', "category_ids" => juguetes_antiguos_category._id)
muebles_antiguos_1_product = Product.new(name: 'Biblioteca antigua', description: 'Biblioteca antigua con tallas hechas a mano. Firme estructura sin marcas. Cajón con cerradura y llave. Medidas: 2,05x1.12,0.42m', brand:'', approved: 'true', photo_url:'http://mla-s1-p.mlstatic.com/importante-biblioteca-antigua-con-bellisimas-tallas-7868-MLA5290255522_102013-F.jpg', "category_ids" => muebles_antiguos_category._id)
muebles_antiguos_2_product = Product.new(name: 'Sillones antiguos', description: 'Sillones estilo inglés. Estructura firme en perfecto estado. Tapizado original. Medidas 100x75x55cm. Hecho por ebanista', brand:'Reina Ana', approved: 'true', photo_url:'http://mla-s2-p.mlstatic.com/antiguos-sillones-maple-reina-ana-caoba-1950-ebanista-7503-MLA5239551167_102013-F.jpg', "category_ids" => muebles_antiguos_category._id)
muebles_antiguos_3_product = Product.new(name: 'Cristalero antiguo', description: 'Cristalero de roble de 1.7x1.10x.035m. dos estantes en vidrio. Hecho en roble', brand:'', approved: 'true', photo_url:'http://mla-s2-p.mlstatic.com/cristalero-antiguo-en-roble-5522-MLA4513950038_062013-F.jpg', "category_ids" => muebles_antiguos_category._id)
maquinas_de_escribir_antiguas_1_product = Product.new(name: 'Máquina de escribir antigua Underwood', description: 'Máquina de escribir en excelente estado. Solo tiene la barra espaciadora partida. Tiene tinta.', brand:'Underwood', approved: 'true', photo_url:'http://mla-s2-p.mlstatic.com/maquina-de-escribir-antigua-underwood-excelente-4531-MLA4917155221_082013-O.jpg', "category_ids" => maquinas_de_escribir_antiguas_category._id)
maquinas_de_escribir_antiguas_2_product = Product.new(name: 'Máquina de escribir antigua Remington', description: 'Máquina de escribir portatil Remington 380. Impecable', brand:'Remington', approved: 'true', photo_url:'http://mla-s2-p.mlstatic.com/maquina-de-escribir-portatil-remington-380-poco-uso-6049-MLA5023177366_092013-F.jpg', "category_ids" => maquinas_de_escribir_antiguas_category._id)
maquinas_de_escribir_antiguas_3_product = Product.new(name: 'Máquina de escribir antigua Olivetti', description: 'Modelo Lettera 35, muy poco uso. Incluye la funda original', brand:'Olivetti', approved: 'true', photo_url:'http://mla-s2-p.mlstatic.com/maquina-de-escribir-olivetti-7903-MLA5302507394_102013-F.jpg', "category_ids" => maquinas_de_escribir_antiguas_category._id)
juegos_de_mesa_1_product = Product.new(name: 'Minuto para ganar', description: 'Juego oficial del programa de TV de Marley.', brand:'Zetateam', approved: 'true', photo_url:'http://mla-s2-p.mlstatic.com/minuto-para-ganar-juego-programa-tv-marley-telefe-zetateam-374-MLA4682124589_072013-O.jpg', "category_ids" => juegos_de_mesa_category._id)
juegos_de_mesa_2_product = Product.new(name: 'TEG', description: 'TEG 1. Juego clásico de estrategia, lógica, diplomacia, inteligencia y azar', brand:'YETEM', approved: 'true', photo_url:'http://mla-s2-p.mlstatic.com/teg-clasico-clasico-juego-de-estrategia-zetateam-4180-MLA2887080785_072012-O.jpg', "category_ids" => juegos_de_mesa_category._id)
juegos_de_mesa_3_product = Product.new(name: 'Settlers of Catan', description: 'Juego Colonos de Catán en español. Juego de estrategia, negociación y azar.', brand:'Klaus Teuber', approved: 'true', photo_url:'http://mla-s1-p.mlstatic.com/colonos-de-catan-settlers-of-catan-juego-de-mesa-espanol-4592-MLA4915851875_082013-O.jpg', "category_ids" => juegos_de_mesa_category._id)
arte_artesanias_1_product = Product.new(name: 'Atril', description: 'Atril metal 7 bastidos para óleos, acrílicos, pinchles y paleta', brand:'Naries', approved: 'true', photo_url:'http://mla-s2-p.mlstatic.com/kit-atril-metal-7-bastidor-oleos-acrilicos-pincles-paleta-574-MLA4689523651_072013-F.jpg', "category_ids" => arte_artesanias_category._id)
arte_artesanias_2_product = Product.new(name: 'Pintura acrilica', description: 'Pintura acrílica AD 6 unidades x 50ML color tradicional y/o metálicos', brand:'AD', approved: 'true', photo_url:'http://mla-s2-p.mlstatic.com/pintura-acrilica-ad-6un-x-50ml-color-tradicional-o-metalicos-6257-MLA60439404_5807-O.jpg', "category_ids" => arte_artesanias_category._id)
arte_artesanias_3_product = Product.new(name: 'Souvenir árbol de la vida', description: 'Elegante souvenir para toda ocasión. CASERO en 11, 15 y 18cm', brand:'', approved: 'true', photo_url:'http://mla-s1-p.mlstatic.com/arbol-de-la-vida-souveniers-para-todo-eventocaseros-5162-MLA4227048512_042013-F.jpg', "category_ids" => arte_artesanias_category._id)
arte_artesanias_4_product = Product.new(name: 'Fondos de marcos', description: '2000 fondos para marcos. Imágenes, efectos y fuentes. Material imprimible', brand:'Viccap Kits', approved: 'true', photo_url:'http://mla-s2-p.mlstatic.com/2000-fondos-marcos-imagenes-efectos-fuentes-imprimibles-415-MLA4685647081_072013-O.jpg', "category_ids" => arte_artesanias_category._id)
geforce_product = Product.new(name: 'Video Geforce Gt 610', description: 'Todo PC merece unos gráficos dedicados. Da vida a tus fotos y vídeos con una tarjeta gráfica NVIDIA® GeForce® GT 610. Pásate a los gráficos dedicados NVIDIA para disfrutar de una experiencia más rica y fluida con tus aplicaciones preferidas en todo momento', brand:'nVidia', approved: 'true', photo_url:'http://www.amaze-tech.com/ProductImages/Geforce_GT610-01.JPG', "category_ids" => hardware_category._id)
thermaltake_product = Product.new(name: 'Gabinete Thermaltake V3 Black Edition', description: 'Incluye 3 fancoolers y luces azules. Negro por fuera.', brand:'Thermaltake', approved: 'true', photo_url:'http://bimg2.mlstatic.com/gabinete-thermaltake-v3-black-edition-gamer-mejor-precio_MLA-F-3012039095_082012.jpg', "category_ids" => hardware_category._id)
ssd_product = Product.new(name: 'Disco SSD Samsung 120gb', description: 'Los más rápidos del mercado y con 120gb de memoria para que entren todas tus películas y series', brand:'Samsung', approved: 'true', photo_url:'http://images.bit-tech.net/content_images/2011/09/samsung-ssd-830-256gb-review/samsung830-6b.jpg', "category_ids" => hardware_category._id)
grab_bluray_product = Product.new(name: 'Grabadora Blu Ray Lite On', description: 'Grabadora interna de blurays. Disfrute de la máxima versatilidad en casa junto con el bluray, dvd y grabación de CD.', brand:'Lite-on', approved: 'true', photo_url:'http://www.storagereview.com/images/Lite-On%20IHBS112.jpg', "category_ids" => hardware_category._id)
flipper_product = Product.new(name: 'Flipper Blackout', description: 'SET DE PLASTICOS COMPLETOS Y EN BUEN ESTADO. SET DE CALCOS NUEVOS. EL FLIPPER FUE DESARMADO Y RESTAURADO EN SU TOTALIDAD', brand:'Blackout', approved: 'true', photo_url:'http://mla-s2-p.mlstatic.com/flipper-blackout-7082-MLA5153140072_102013-F.jpg', "category_ids" => consolas_videojuegos_retro_category._id)
daytona_product = Product.new(name: 'Cartel Daytona', description: 'CARTEL DAYTONA USA 2 POWER EDITION ORIGINAL', brand:'Daytona', approved: 'true', photo_url:'http://bimg1.mlstatic.com/cartel-daytona-usa-2-power-edition-original_MLA-F-3242387166_102012.jpg', "category_ids" => consolas_videojuegos_retro_category._id)
n3ds_product = Product.new(name: 'Nintendo 3Ds Xl', description: 'Consola portátil con 4gb de almacenamiento. Colores: Gris/Azul/Rojo. Incluye un juego a elección', brand:'Nintendo', approved: 'true', photo_url:'http://img.vidaextra.com/2012/11/Nintendo3DSXL1.jpg', "category_ids" => consolas_category._id)
ps3_product = Product.new(name: 'Playstations 3 Slim 160gb', description: 'Consola en caja cerrada con un juego a elección. Incluye un joystick inalámbrico y transformador.', brand:'Sony', approved: 'true', photo_url:'http://www.tpcdb.com/images/products/1000/1125.jpg', "category_ids" => consolas_category._id)
psvita_product = Product.new(name: 'Playstation Vita', description: 'Consola portátil con dos juegos de regalo. Incluye cable USB, cargador 220v, 1 manual de usuario y 6 play cards para realidad aumentada', brand:'Sony', approved: 'true', photo_url:'http://mla-s1-p.mlstatic.com/ps-vita-con-wi-fi-nuevas-en-caja-cerrada-touch-hd-regalo-4181-MLA2809068704_062012-F.jpg', "category_ids" => consolas_category._id)
wii_product = Product.new(name: 'Consola Nintendo Wii', description: 'Incluye Wii Fit para hacer ejercicio jugando y 2 controles. Viene con un juego de deportes de Nintendo', brand:'Nintendo', approved: 'true', photo_url:'http://mla-s2-p.mlstatic.com/consola-wii-nintendo-wii-fit-controles-6926-MLA5135936400_102013-O.jpg', "category_ids" => consolas_category._id)
xbox_product = Product.new(name: 'Xbox 360 Slim 4gb', description: 'Consola Xbox 360 con 4gb de almacenamiento interno. 1 joystick original inalámbrico. 1 cable RCA. 1 fuente de alimentación 220v.', brand:'Microsoft', approved: 'true', photo_url:'http://mla-s2-p.mlstatic.com/xbox-360-250gb-2-controles-2-juegos-auricular-2949-MLA4821307470_082013-F.jpg', "category_ids" => consolas_category._id)
materiales_para_tatuajes_1_product = Product.new(name: 'Tintas', description: 'Tintas para tatuar, pigmentos para tatuajes', brand:'Solid Ink', approved: 'true', photo_url:'http://bimg1.mlstatic.com/tintas-para-tatuar-solid-ink-usa-pigmentos-tattoo-tatuajes_MLA-F-3007488454_082012.jpg', "category_ids" => materiales_para_tatuajes_category._id)
materiales_para_tatuajes_2_product = Product.new(name: 'Equipo de tatuaje', description: 'Equipo para empezar a tatuar. Kit completo.', brand:'Family Ink', approved: 'true', photo_url:'http://mla-s1-p.mlstatic.com/equipo-pempezar-a-tatuar-tattoo-kit-maquina-tenemos-otros-4067-MLA114717379_129-F.jpg', "category_ids" => materiales_para_tatuajes_category._id)
materiales_para_tatuajes_3_product = Product.new(name: 'Maquina para tatuar', description: 'Maquina profesional híbrida de alta gama para tatuaje', brand:'Solid Ink', approved: 'true', photo_url:'http://mla-s2-p.mlstatic.com/maquina-para-tatuar-profesional-hibrida-tattoo-tatuaje-5132-MLA4218450726_042013-O.jpg', "category_ids" => materiales_para_tatuajes_category._id)
souvenirs_1_product = Product.new(name: 'Souvenir anotador', description: '32 anotadores personalizados de 10,6x7,5cm. Varios modelos', brand:'Lorenzo', approved: 'true', photo_url:'http://mla-s2-p.mlstatic.com/32-souvenirs-anotador-libreta-personalizada-elegi-tu-diseno-5084-MLA4059394512_032013-F.jpg', "category_ids" => souvenirs_category._id)
souvenirs_2_product = Product.new(name: 'Souvenir peluche', description: '20 souvenirs realizados en tela + caja decorada', brand:'Ma Cristina', approved: 'true', photo_url:'http://mla-s1-p.mlstatic.com/souvenirs-nacimientos-bautismos-1er-anito-baby-shower-4061-MLA118325120_4687-O.jpg', "category_ids" => souvenirs_category._id)
souvenirs_3_product = Product.new(name: 'Souvenir taza', description: 'Tazas con cuchara para todos los eventos.', brand:'', approved: 'true', photo_url:'http://mla-s1-p.mlstatic.com/souvenirstazasmatesbautismocumple-infantil15casamiento-4130-MLA143613456_4189-F.jpg', "category_ids" => souvenirs_category._id)
joystick_ps3_product = Product.new(name: 'Joystick Playstation 3', description: '1 Joystick original de Playstation 3 (PS3)', brand:'Sony', approved: 'true', photo_url:'http://img1.mlstatic.com/sony-dualshock-3-joystick-ps3-original-en-blister-sellado_MLA-O-3157517244_092012.jpg', "category_ids" => joysticks_category._id)
joystick_wii_product = Product.new(name: 'Joystick Control Wii', description: 'Joystick para Nintendo Wii con Motion Plus ya incorporado', brand:'Nintendo', approved: 'true', photo_url:'http://mla-s1-p.mlstatic.com/joystick-control-wii-remote-motion-plus-inside-nintendo-caja-5015-MLA4111449273_042013-F.jpg', "category_ids" => joysticks_category._id)
joystick_xbox_product = Product.new(name: 'Joystick Xbox 360', description: 'Joystick inalámbrico original para Xbox 360. ', brand:'Microsoft', approved: 'true', photo_url:'http://mla-s2-p.mlstatic.com/joystick-inalambrico-microsoft-xbox-360-wireless-windows-4852-MLA3897219121_022013-F.jpg', "category_ids" => joysticks_category._id)
articulos_embarazadas_1_product = Product.new(name: 'Bebes Neocuore', description: 'Baby doopler para escuchar los sonidos del feto en la panza', brand:'Neocuore', approved: 'true', photo_url:'http://bimg1.mlstatic.com/bebes-neocuore-baby-doopler-escucha-fetal-angel-sounds_MLA-F-3118570597_092012.jpg', "category_ids" => articulos_embarazadas_category._id)
articulos_embarazadas_2_product = Product.new(name: 'Almohadon Wawita', description: 'Almohandón para amamantar chico. Original 100%', brand:'Titanes y princesas', approved: 'true', photo_url:'http://mla-s2-p.mlstatic.com/almohadon-wawita-para-amamantar-chico-original-100-5260-MLA4291332453_052013-O.jpg', "category_ids" => articulos_embarazadas_category._id)
articulos_embarazadas_3_product = Product.new(name: 'Ama-manta', description: 'Novedosos accesorio para amamantar', brand:'Amores de mamá', approved: 'true', photo_url:'http://mla-s2-p.mlstatic.com/ama-manta-un-novedoso-accesorio-para-amamantar-6280-MLA98613359_4521-O.jpg', "category_ids" => articulos_embarazadas_category._id)
juguetes_bebes_1_product = Product.new(name: 'Gimansio para bebés', description: 'Gimnasio para bebé rainforest deluxe con música y luces', brand:'Fisher Price', approved: 'true', photo_url:'http://mla-s2-p.mlstatic.com/gimnasio-para-bebe-fisher-price-rainforest-deluxe-musica-luz-4869-MLA3916825554_032013-O.jpg', "category_ids" => juguetes_bebes_category._id)
juguetes_bebes_2_product = Product.new(name: 'Mesa didáctica para bebés', description: 'Mesa didáctiva para bebés con música, luces y sonidos para estimulara los niños.', brand:'Infantops', approved: 'true', photo_url:'http://mla-s1-p.mlstatic.com/mesa-didactica-musicalluzsonidoestimula-a-tus-ninosnueva-7154-MLA5164850020_102013-O.jpg', "category_ids" => juguetes_bebes_category._id)
juguetes_bebes_3_product = Product.new(name: 'Arco Musical para bebés', description: 'Arco musical móvil de juguete para bebes. Acoplable a cunas', brand:'R&R Babies', approved: 'true', photo_url:'http://mla-s1-p.mlstatic.com/arco-musical-movil-de-juguete-para-bebes-para-cuna-4718-MLA4929951026_082013-O.jpg', "category_ids" => juguetes_bebes_category._id)
seguridad_bebes_1_product = Product.new(name: 'Piso de goma eva', description: 'Piso de goma exa encastrable de 36 piezas con letras y números. Ideas para proteger a tu bebé mientras juega', brand:'Full Deportes', approved: 'true', photo_url:'http://img2.mlstatic.com/pisos-goma-eva-encatrable-x-36-piezas-letras-y-numeros-dvd_MLA-O-3058173864_082012.jpg', "category_ids" => seguridad_bebes_category._id)
seguridad_bebes_2_product = Product.new(name: 'Baby video call', description: 'Video baby call con cámara y LCD de 2.4Ghz wireless', brand:'Tecnología para niños', approved: 'true', photo_url:'http://img1.mlstatic.com/video-baby-call-camara-y-lcd-24-wireless-24ghz-nino-bebe_MLA-O-3216836178_102012.jpg', "category_ids" => seguridad_bebes_category._id)
seguridad_bebes_3_product = Product.new(name: 'Puertas para bebes', description: 'Puertitas de protección de seguridad para bebés. Sirve para puertas y escaleras', brand:'Cuidacaídas', approved: 'true', photo_url:'http://mla-s1-p.mlstatic.com/puertitas-proteccion-seguridad-bebes-ninos-puertas-escaleras-5392-MLA4365027152_052013-F.jpg', "category_ids" => seguridad_bebes_category._id)
videojuego1_product = Product.new(name: 'Pes 2013 Pro Evolution Soccer Nintendo Wii', description: 'Pro Evolution Soccer 2013 para Nintendo Wii', brand:'Konami', approved: 'true', photo_url:'http://mla-s1-p.mlstatic.com/pes-2013-pro-evolution-soccer-nintendo-wii-original-garantia-7134-MLA5171529120_102013-F.jpg', "category_ids" => videojuegos_category._id)
videojuego2_product = Product.new(name: 'GTA 5 para Playstation 3 (PS3)', description: 'Grand Theft Auto 5 para Playstation 3 (PS3). Recién llegados, 2013.', brand:'Rockstar', approved: 'true', photo_url:'http://mla-s2-p.mlstatic.com/gta-5-grand-theft-auto-5-gta-v-playstation-3-ps3-stock-ya-6358-MLA5047806674_092013-F.jpg', "category_ids" => videojuegos_category._id)
videojuego3_product = Product.new(name: 'God Of War Saga Collection para Playstation 3 (PS3)', description: 'Incluye God of War I, God of War II, God of War III, God Of War: Chains of Olympus y God Of War: Ghost of Sparta (con contenido extra)', brand:'Santa Monica', approved: 'true', photo_url:'http://mla-s2-p.mlstatic.com/god-of-war-saga-collection-ps3-nuevo-y-sellado-4870-MLA3903926775_022013-F.jpg', "category_ids" => videojuegos_category._id)
videojuego4_product = Product.new(name: 'Mario Party 9 para Nintendo Wii', description: 'Nuevo Mario Party 9 para Nintendo Wii en caja cerrada', brand:'Nintendo', approved: 'true', photo_url:'http://mla-s1-p.mlstatic.com/mario-party-9-para-nintendo-wii-2876-MLA4816716399_082013-F.jpg', "category_ids" => videojuegos_category._id)
videojuego5_product = Product.new(name: 'Far Cry 3 para Xbox 360', description: 'Far Cry 3 para Xbox 360, clasificado dentro de los mejores juegos del 2013. En caja cerrada', brand:'Ubisoft', approved: 'true', photo_url:'http://mla-s1-p.mlstatic.com/far-cry-3-ps3-y-xbox-360-de-los-mejores-juegos-del-ano-5052-MLA4155431417_042013-O.jpg', "category_ids" => videojuegos_category._id)
videojuego6_product = Product.new(name: 'The Sims 3 para PC', description: 'Juego de los Sims 3 para PC original', brand:'EA Games', approved: 'true', photo_url:'http://img1.mlstatic.com/los-sims-3-pc-juego-pc-sim-3-original-the-sims-3-simulador_MLA-O-54100654_3920.jpg', "category_ids" => videojuegos_category._id)
bodega1_product = Product.new(name: 'Biblioteca Componible Bodega', description: 'Biblioteca Componible Bodega Con Porta Copas Reproex R-15113', brand:'Home Project', approved: 'true', photo_url:'http://mla-s1-p.mlstatic.com/biblioteca-componible-bodega-con-porta-copas-reproex-r-15113-4427-MLA3641312906_012013-F.jpg', "category_ids" => bodegas_category._id)
bodega2_product = Product.new(name: 'Bodega Mini Para Pared', description: 'Bodega Mini Para Pared para 6 botellas', brand:'The Wine Comany', approved: 'true', photo_url:'http://mla-s1-p.mlstatic.com/bodega-mini-para-pared-de-4-o-6-botellas-varios-colores-4051-MLA4892626390_082013-F.jpg', "category_ids" => bodegas_category._id)
bodega3_product = Product.new(name: 'Bodega Y Biblioteca Reproex 15113', description: 'Bodega Y Biblioteca Reproex 15113 100% Melamina Importada', brand:'The Wine Comany', approved: 'true', photo_url:'http://mla-s2-p.mlstatic.com/bodega-y-biblioteca-reproex-15113-100-melamina-importada-6300-MLA96911441_1067-O.jpg', "category_ids" => bodegas_category._id)
camaras_accesorios_1_product = Product.new(name: 'Cámara polaroid', description: 'aárma polaroid Land 1000 y 600 instantánea + Kit + Film 2013', brand:'Polaroid', approved: 'true', photo_url:'http://mla-s2-p.mlstatic.com/camara-poalroid-land-1000-y-600-instantanea-kit-film-2013-3248-MLA4831902280_082013-F.jpg', "category_ids" => camaras_accesorios_category._id)
camaras_accesorios_2_product = Product.new(name: 'Cámara analógica', description: 'Cámara Lomo Styles - 2, 3 y 4 lentes.', brand:'Lomo', approved: 'true', photo_url:'http://mla-s1-p.mlstatic.com/camaras-lomo-styles-2-3-y-4-lentes-precio-unico--3319-MLA4841617954_082013-O.jpg', "category_ids" => camaras_accesorios_category._id)
camaras_accesorios_3_product = Product.new(name: 'Cámara digital', description: 'Cámara digital Nikon l310 14MP 21xVideo HD-HDMI + memoria de 8GB + Bolso', brand:'Nikon', approved: 'true', photo_url:'http://mla-s1-p.mlstatic.com/camara-digital-nikon-l310-14mp-21x-video-hd-hdmi-8gbbolso-4854-MLA3926163089_032013-F.jpg', "category_ids" => camaras_accesorios_category._id)
accesorios_camaras_1_product = Product.new(name: 'Flash para cámara', description: 'Flash Yongnuo YN-560II Para Nikon y Canon. Guía 58', brand:'Tongnuo', approved: 'true', photo_url:'http://mla-s2-p.mlstatic.com/flash-yongnuo-yn-560ii-p-nikon-canon-guia-58-envio-gratis-4178-MLA2772632237_062012-O.jpg', "category_ids" => accesorios_camaras_category._id)
accesorios_camaras_2_product = Product.new(name: 'Trípode para cámaras', description: 'Trípode 1-75m para cámara o filmadora de aluminio negro y universal', brand:'Exotec', approved: 'true', photo_url:'http://bimg1.mlstatic.com/tripode-175m-p-camara-o-filmadora-aluminio-negro-universal_MLA-F-129853760_5246.jpg', "category_ids" => accesorios_camaras_category._id)
accesorios_camaras_3_product = Product.new(name: 'Mochila para cámaras', description: 'Mochila lowepro flipside 400AW para réflex, Canon, Nikon y Sony', brand:'Lowepro', approved: 'true', photo_url:'http://img2.mlstatic.com/mochila-lowepro-flipside-400aw-preflex-canon-nikon-sony_MLA-O-133593101_9209.jpg', "category_ids" => accesorios_camaras_category._id)
laboratorios_1_product = Product.new(name: 'Papél fotográfico', description: 'Papel fotográfico autoadhesivo Matte 100grs', brand:'Kennen', approved: 'true', photo_url:'http://bimg2.mlstatic.com/papel-fotografico-autoadhesivo-matte-100grs-kennen_MLA-F-3025555597_082012.jpg', "category_ids" => laboratorios_category._id)
laboratorios_2_product = Product.new(name: 'Timer Digital', description: 'Timer digital para ampliadoras fotográficas con conteo regresivo. Pantalla digital. Fácil manejo', brand:'AmpliTimer', approved: 'true', photo_url:'http://mla-s2-p.mlstatic.com/timer-digital-ampliadoras-fotograficas-conteo-regresivo-6385-MLA5057363815_092013-F.jpg', "category_ids" => laboratorios_category._id)
laboratorios_3_product = Product.new(name: 'Kiosko digital', description: 'Kiosko digital de fotografía', brand:'Mitsubishi', approved: 'true', photo_url:'http://mla-s1-p.mlstatic.com/kiosco-digital-fotografico-mitsubishi-7613-MLA5250294381_102013-O.jpg', "category_ids" => laboratorios_category._id)
alcohol1_product = Product.new(name: 'Souvenirs Botellitas De Fernets Personalizadas', description: 'Souvenirs Botellitas De Fernets Personalizadas x 10 unidades', brand:'Licores Sensaciones', approved: 'true', photo_url:'http://mla-s1-p.mlstatic.com/souvenirs-botellitas-de-fernets-personalizadas-x-10-unidades-4708-MLA3818908777_022013-F.jpg', "category_ids" => bebidas_alcoholicas_category._id)
alcohol2_product = Product.new(name: 'Latas Coleccionables Fernet Branca', description: 'Latas Coleccionables Fernet Branca modelos 2013 por unidad', brand:'Licores Sensaciones', approved: 'true', photo_url:'http://img1.mlstatic.com/s_MLA_v_C_f_5255098967_102013.jpg', "category_ids" => bebidas_alcoholicas_category._id)
alcohol3_product = Product.new(name: 'Cartel Cerveza Quilmes', description: 'Cartel Cerveza Quilmes con botella giratoria', brand:'Quilmes', approved: 'true', photo_url:'http://mla-s1-p.mlstatic.com/cartel-cerveza-quilmesbotella-giratoria-5476-MLA4451884366_062013-F.jpg', "category_ids" => bebidas_alcoholicas_category._id)
alcohol4_product = Product.new(name: 'Chopera De Cerveza Tirada', description: 'Chopera De Cerveza Tirada Barrilito P/2 Botellas-clasica', brand:'Licores Sensaciones', approved: 'true', photo_url:'http://mla-s2-p.mlstatic.com/chopera-de-cerveza-tirada-barrilito-p2-botellas-clasica-6215-MLA97079969_4255-O.jpg', "category_ids" => bebidas_alcoholicas_category._id)
alcohol5_product = Product.new(name: 'Cerveza Quilmes Botellas Edicion Limitada', description: 'Cerveza Quilmes Botellas Edicion Limitada', brand:'Quilmes', approved: 'true', photo_url:'http://mla-s1-p.mlstatic.com/cerveza-quilmes-botellas-edicion-limitada-6527-MLA5079723704_092013-F.jpg', "category_ids" => bebidas_alcoholicas_category._id)
alcohol6_product = Product.new(name: 'Antigua Botella De Cerveza Quilmes Cristal', description: 'Antigua Botella De Cerveza Quilmes Cristal', brand:'Quilmes', approved: 'true', photo_url:'http://mla-s1-p.mlstatic.com/antigua-botella-de-cerveza-quilmes-cristal-5528-MLA4482050022_062013-F.jpg', "category_ids" => bebidas_alcoholicas_category._id)
alcohol7_product = Product.new(name: 'Cava Vinos Heladera Conservadora', description: 'Cava Vinos Heladera Conservadora 8 Botellas Coolbrand Jc 23a', brand:'Coolbrand', approved: 'true', photo_url:'http://mla-s2-p.mlstatic.com/cava-vinos-heladera-conservadora-8-botellas-coolbrand-jc-23a-4030-MLA123030248_1003-O.jpg', "category_ids" => bebidas_alcoholicas_category._id)
cigarros1_product = Product.new(name: 'Cigarros Italianos Toscanellos', description: 'Cigarros Italianos Toscanellos Caja X 5 Cafe Y Vainilla', brand:'Toscano', approved: 'true', photo_url:'http://mla-s1-p.mlstatic.com/cigarros-italianos-toscanellos-caja-x-5-cafe-y-vainilla-7219-MLA5189868934_102013-O.jpg', "category_ids" => cigarros_pipas_category._id)
cigarros2_product = Product.new(name: 'Pipa Ropp Boquilla Acrilico', description: 'Pipa Ropp Boquilla Acrilico únicos en Buenos Aires', brand:'Ropp', approved: 'true', photo_url:'http://img2.mlstatic.com/pipa-ropp-boquilla-acrilico-unicas-en-buenos-aires-microcent_MLA-O-3272108427_102012.jpg', "category_ids" => cigarros_pipas_category._id)
cigarros3_product = Product.new(name: 'Antigua Pipa Curva Bristol', description: 'Antigua Pipa Curva Bristol Sport Texturada Virola Punzonada', brand:'Bristol', approved: 'true', photo_url:'http://mla-s1-p.mlstatic.com/antigua-pipa-curva-bristol-sport-texturada-virola-punzonada-7821-MLA5286586132_102013-F.jpg', "category_ids" => cigarros_pipas_category._id)
cigarros4_product = Product.new(name: 'Lote De Cajas De Cigarrillos Coleccion', description: 'Gran lote de 56 cajas box de cigarrillos de 10 y de 20', brand:'Varias', approved: 'true', photo_url:'http://mla-s1-p.mlstatic.com/lote-de-cajas-de-cigarrillos-coleccion-camel-marlborolucky-7936-MLA5297197968_102013-F.jpg', "category_ids" => cigarros_pipas_category._id)
cigarros5_product = Product.new(name: 'Colección Marlboro Puzzle', description: 'Colección Marlboro Puzzle', brand:'Marlboro', approved: 'true', photo_url:'http://mla-s2-p.mlstatic.com/coleccion-marlboro-puzzle-5663-MLA4984854685_092013-F.jpg', "category_ids" => cigarros_pipas_category._id)
auris_product = Product.new(name: 'Auricular Philips Shl3000', description: 'Auricular Philips Shl3000 Plegable Tipo Dj En Varios Colores', brand:'Philips', approved: 'true', photo_url:'http://mla-s2-p.mlstatic.com/auricular-philips-shl3000-plegable-tipo-dj-en-varios-colores-3266-MLA4832010937_082013-O.jpg', "category_ids" => accesorios_audio_category._id)
auris2_product = Product.new(name: 'Auriculares Sony Mdr Zx-300', description: 'Auriculares Sony Mdr Zx-300 Super potenciados', brand:'Sony', approved: 'true', photo_url:'http://mla-s2-p.mlstatic.com/auriculares-sony-mdr-zx-300-super-potenciados-microcentro-5132-MLA4222201428_042013-F.jpg', "category_ids" => accesorios_audio_category._id)
auris3_product = Product.new(name: 'Auriculares Sony Mdr Zx100', description: 'Auriculares Sony Mdr Zx100. Mejor distorsión y rango dinámico', brand:'Sony', approved: 'true', photo_url:'http://mla-s2-p.mlstatic.com/auriculares-sony-mdr-zx100-fashion-mejor-precio-microcentro-7965-MLA5308617554_102013-O.jpg', "category_ids" => accesorios_audio_category._id)
auris4_product = Product.new(name: 'Auriculares Apple Earpods', description: 'Auriculares Apple Earpods con control remoto, se ajustan perfectamente al oído', brand:'Apple', approved: 'true', photo_url:'http://mla-s1-p.mlstatic.com/auriculares-apple-earpods-ccontrol-garantia-microcentro--5139-MLA4234186056_042013-O.jpg', "category_ids" => accesorios_audio_category._id)
mic_product = Product.new(name: 'Micrófono Retro Para Pc', description: 'Micrófono para PC con estética retro. Se conecta a la máquina por medio de una ficha de 3,5 mm. No requiere ningún driver o software especial. Es ideal para Skype', brand:'Bebop', approved: 'true', photo_url:'http://img1.mlstatic.com/microfono-retro-para-pc-bebop-regalos-regalos-originales_MLA-O-3329539764_102012.jpg', "category_ids" => accesorios_audio_category._id)
minicomponente_product = Product.new(name: 'Minicomponente Philips Fwm6500', description: 'Equipo De Audio Minicomponente Philips Fwm6500 Usb Mp3 910w', brand:'Philips', approved: 'true', photo_url:'http://www.grupomarquez.com.ar/image/cache/data/productos-octubre/Minicomponente-Philips-FWM-6500-500x500.jpg', "category_ids" => equipos_audio_category._id)
minicomponente2_product = Product.new(name: 'Minicomponente Noblex Mnx 190', description: 'Minicomponente Noblex Mnx 190 Usb, Mp3 Aux', brand:'Noblex', approved: 'true', photo_url:'http://mla-s2-p.mlstatic.com/minicomponente-noblex-mnx-190-usb-mp3-aux-7245-MLA5189446532_102013-F.jpg', "category_ids" => equipos_audio_category._id)
parlantes_product = Product.new(name: 'Home Theater Noganet', description: 'Parlantes Noganet Home Theater 5.1 H5176u Necxus', brand:'Noganet', approved: 'true', photo_url:'http://bimg1.mlstatic.com/parlantes-noganet-home-theater-51-h5176u-necxus_MLA-F-3011820367_082012.jpg', "category_ids" => equipos_audio_category._id)
parlantes2_product = Product.new(name: 'Parlantes Genius Sw-5.1 1010', description: 'Parlantes Genius Sw-5.1 1010 Home Theater 18wats Con Control Remoto', brand:'Genius', approved: 'true', photo_url:'http://mla-s2-p.mlstatic.com/parlantes-genius-sw-51-1010-home-theater-18wats-con-remoto-5181-MLA4181027545_042013-F.jpg', "category_ids" => equipos_audio_category._id)
parlantes3_product = Product.new(name: 'Parlantes 5.1 Edifier R451', description: 'Parlantes 5.1 Edifier R451', brand:'Edifier', approved: 'true', photo_url:'http://mla-s1-p.mlstatic.com/parlantes-51-edifier-r451-usados-6910-MLA5127184604_092013-O.jpg', "category_ids" => equipos_audio_category._id)
rep_dvd_product = Product.new(name: 'Reproductor Dvd Philips Dvp3800x/77', description: 'Reproductor Dvd Philips Dvp3800x/77 Divx Avi Mp3 1 Año Gtia', brand:'Philips', approved: 'true', photo_url:'http://mla-s1-p.mlstatic.com/reproductor-dvd-philips-dvp3800x77-divx-avi-mp3-1-ano-gtia-5166-MLA4262908304_052013-O.jpg', "category_ids" => equipos_video_category._id)
rep_bluray_product = Product.new(name: 'Reproductor Blu-ray Samsung E5300', description: 'Reproductor Blu-ray Samsung E5300 Usb Hdmi Lan Player Dvd Cd', brand:'Samsung', approved: 'true', photo_url:'http://mla-s2-p.mlstatic.com/reproductor-blu-ray-samsung-e5300-usb-hdmi-lan-player-dvd-cd-5366-MLA4370614866_052013-O.jpg', "category_ids" => equipos_video_category._id)
anteojos_3d_product = Product.new(name: 'Lentes Anteojos 3d Sony', description: 'Lentes Anteojos 3d Sony Tdg-br250b 100% Original', brand:'Sony', approved: 'true', photo_url:'http://mla-s2-p.mlstatic.com/lentes-anteojos-3d-sony-tdg-br250b-100-original-554-MLA4698689386_072013-O.jpg', "category_ids" => accesorios_video_category._id)
anteojos_3d_genericos_product = Product.new(name: 'Lentes 3d Gafas 3d Anteojos Genéricos', description: 'Lentes 3d Gafas 3d Anteojos Genéricos Azul Rojo', brand:'Genérico', approved: 'true', photo_url:'http://mla-s2-p.mlstatic.com/lentes-3d-gafas-3d-anteojos-3d-recien-llegados-de-usa-6207-MLA86485359_3246-O.jpg', "category_ids" => accesorios_video_category._id)
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
entradas_eventos_product = Product.new(name: 'Sander Van Doorn', description: 'Sander Van Doorn es un DJ y productor musical holandés de música trance y house', brand:'Ticketet', approved: 'true', photo_url:'http://static.ticketek.com.ar/show/images/SANDERMP13_show_img_show__3f1.jpg', "category_ids" => entradas_eventos_category._id)
entradas_eventos_product = Product.new(name: 'Les Luthiers', description: 'Presentando Chist! Con lo mejor de sus espectáculos -Mastropiero que Nunca-, -Bromato de Armonio- o -Muchas Gracias de Nada-, entre otros, ¡Chist! es uno de los más brillantes shows de la historia de Les Luthiers', brand:'Ticketet', approved: 'true', photo_url:'http://static4.ticketek.com.ar/newsite/sites/default/files/styles/artist/public/lesluthiers_s_1031.jpg', "category_ids" => entradas_eventos_category._id)
entradas_eventos_product = Product.new(name: 'Partido de tenis', description: 'Venus Williams vs. Serena Williams en el court central del Buenos Aires Lawn Tennis Club', brand:'Ticketet', approved: 'true', photo_url:'http://static4.ticketek.com.ar/newsite/sites/default/files/styles/artist/public/williams_s_1029.jpg', "category_ids" => entradas_eventos_category._id)
entradas_eventos_product = Product.new(name: 'HOCKEY WORLD LEAGUE 2013', description: ' Del sábado 30 de Noviembre al domingo 8 de Diciembre en el Estadio Natación y Gimnasia.', brand:'Ticketet', approved: 'true', photo_url:'http://static.ticketek.com.ar/show/images/WLEAGUE13_show_img_show_.jpg', "category_ids" => entradas_eventos_category._id)
metronomo_product = Product.new(name: 'Metronomo Cherub Wsm001', description: 'Metronomo Cherub Wsm001 Digital Con Audifono', brand:'Genérico', approved: 'true', photo_url:'http://img2.mlstatic.com/metronomo-cherub-wsm001-digital-con-audifono-envios-garantia_MLA-O-118824065_5006.jpg', "category_ids" => accesorios_musica_category._id)
afinador_product = Product.new(name: 'Afinador cromático', description: 'Afinador digital con metrónomo incluido y generador de tonos', brand:'Musedo', approved: 'true', photo_url:'http://mla-s2-p.mlstatic.com/afinador-cromatico-metronomo-generador-de-tonos-cclip-4432-MLA3625727268_012013-O.jpg', "category_ids" => accesorios_musica_category._id)
metronomo2_product = Product.new(name: 'Metronomo Joyo Jm66w', description: 'Metronomo Joyo Jm66w Mecanico Simil Madera', brand:'Joyo', approved: 'true', photo_url:'http://mla-s2-p.mlstatic.com/metronomo-joyo-jm66w-mecanico-simil-madera-en-palermo-4189-MLA2828892248_062012-O.jpg', "category_ids" => accesorios_musica_category._id)
criolla_product = Product.new(name: 'Guitarra Clasica Criolla', description: 'Guitarra Clasica Criolla Estudio C/ Funda Y Dvd', brand:'Famusic', approved: 'true', photo_url:'http://mla-s1-p.mlstatic.com/ff-guitarra-clasica-criolla-estudio-c-funda-y-dvd-envios-4078-MLA141230203_6323-O.jpg', "category_ids" => guitarras_category._id)
acustica_product = Product.new(name: 'Guitarra Acústica', description: 'Guitarra Electro Criolla Acustica Amplif Cable Pua Fender', brand:'Famusic', approved: 'true', photo_url:'http://bimg1.mlstatic.com/guitarra-electro-criolla-acustica-amplif-cable-pua-fender-_MLA-F-3368270286_112012.jpg', "category_ids" => guitarras_category._id)
electrica_product = Product.new(name: 'Guitarra Electrica Epiphone', description: 'Guitarra Electrica Epiphone By Gibson Les Paul Lp-100', brand:'Famusic', approved: 'true', photo_url:'http://www.dv247.es/assets/products/37110_l.jpg', "category_ids" => guitarras_category._id)
ampli_product = Product.new(name: 'Amplificador Guitarra Electrica Crimson G10', description: 'Amplificador Guitarra Electrica Crimson G10 Crn 10 Watts', brand:'Crimson', approved: 'true', photo_url:'http://mla-s2-p.mlstatic.com/amplificador-guitarra-electrica-crimson-g10-crn-10-watts-4079-MLA129384652_3531-O.jpg', "category_ids" => guitarras_category._id)
banqueta_product = Product.new(name: 'Banqueta Para Piano', description: 'Banqueta para piano de altura regulable', brand:'Rpb', approved: 'true', photo_url:'http://mla-s1-p.mlstatic.com/banqueta-para-piano-regulable-rpb-4481-MLA3659746797_012013-F.jpg', "category_ids" => pianos_category._id)
pianoflexible_product = Product.new(name: 'Teclado Piano Flexible Enrollable', description: 'Teclado Piano Flexible Enrollable Plegable Portatil 49teclas', brand:'Genérico', approved: 'true', photo_url:'http://mla-s1-p.mlstatic.com/teclado-piano-flexible-enrollable-plegable-portatil-49teclas-3172-MLA4830863978_082013-F.jpg', "category_ids" => pianos_category._id)
pianoprincipiantes_product = Product.new(name: 'Casio Sa46 Teclado Para Niños Principiantes', description: 'Casio Sa46 Teclado Para Niños Principiantes', brand:'Casio', approved: 'true', photo_url:'http://mla-s2-p.mlstatic.com/casio-sa46-teclado-para-ninos-principiantes-6166-MLA4601300918_072013-F.jpg', "category_ids" => pianos_category._id)
piano5octavas_product = Product.new(name: 'Teclado Casio Lk125', description: 'Casio Lk125 Teclado Portatil De 5 Octavas Teclas Luminosas', brand:'Casio', approved: 'true', photo_url:'http://mla-s1-p.mlstatic.com/casio-lk125-teclado-portatil-de-5-octavas-teclas-luminosas-4050-MLA118391612_3867-O.jpg', "category_ids" => pianos_category._id)
platillos_product = Product.new(name: 'Platillo Set P/ Bateria Zildjian Planet Z4', description: 'Platillo Set P/ Bateria Zildjian Planet Z4 Hi Hat Crash Ride', brand:'Zildjian', approved: 'true', photo_url:'http://img2.mlstatic.com/platillo-set-p-bateria-zildjian-planet-z4-hi-hat-crash-ride_MLA-O-93484544_6166.jpg', "category_ids" => baterias_category._id)
bateria_product = Product.new(name: 'Bateria Completa Orion', description: 'Bateria Completa Orion Drums 5 Cuerpos Platos Palillos', brand:'Orion', approved: 'true', photo_url:'http://img2.mlstatic.com/bateria-completa-orion-drums-5-cuerpos-platos-palillos-gtia_MLA-O-90445354_3032.jpg', "category_ids" => baterias_category._id)
bateria_ninos_product = Product.new(name: 'Bateria P/ Niños Power M ', description: 'Bateria P/ Niños Power M 5 Cuerpos C/ Fierros Y Platillos', brand:'Famusic', approved: 'true', photo_url:'http://mla-s1-p.mlstatic.com/bateria-p-ninos-power-m-5-cuerpos-c-fierros-y-platillos-4013-MLA117074917_9841-O.jpg', "category_ids" => baterias_category._id)
bateria_electronica_product = Product.new(name: 'Bateria Electronica Profesional', description: 'Bateria Electronica Profesional 7 Pads Usb 2pedales', brand:'GnMusic', approved: 'true', photo_url:'http://mla-s1-p.mlstatic.com/bateria-electronica-profesional-7-pads-usb-2pedales-garantia-5080-MLA4158706463_042013-F.jpg', "category_ids" => baterias_category._id)
muneco_bebe_product = Product.new(name: 'Muñeco de bebé muy real', description: 'Bebotes Reales Marca Casita De Muñecas', brand:'Casita de Muñecas', approved: 'true', photo_url:'http://mla-s2-p.mlstatic.com/bebotes-reales-marca-casita-de-munecas-al-mejor-precio-4705-MLA4930019767_082013-O.jpg', "category_ids" => juguetes_mujer_category._id)
casa_barbie_product = Product.new(name: 'Casita Muñecas Barbie', description: 'Casita Muñecas Barbie Pintada Y Decorada Con Muebles', brand:'Casita de Muñecas', approved: 'true', photo_url:'http://mla-s1-p.mlstatic.com/casita-munecas-barbie-pintada-y-decorada-con-muebles-4195-MLA2884003544_072012-F.jpg', "category_ids" => juguetes_mujer_category._id)
cochecito_munecas_product = Product.new(name: 'Cochecito De Muñecas', description: 'Cochecito De Muñecas Travel System Kiddy Jogguer O 4 Ruedas', brand:'Kiddy', approved: 'true', photo_url:'http://mla-s2-p.mlstatic.com/cochecito-de-munecas-travel-system-kiddy-jogguer-o-4-ruedas-5332-MLA4314744258_052013-O.jpg', "category_ids" => juguetes_mujer_category._id)
perrito_barbie_product = Product.new(name: 'Perrito Barbie', description: 'Perrito Caniche Interactivo Barbie Sequin. Incluye cepillo, labial, anteojos, 2 pilas AA. Recomendado para +3 años', brand:'Mattel', approved: 'true', photo_url:'http://www.jugueteriatomy.com/image/cache/data/Productos/3001802%20CANICHE%20SEQUIN%20BARBIE-500x500.jpg', "category_ids" => juguetes_mujer_category._id)
barbie_sirena_product = Product.new(name: 'Barbie Sirena', description: 'Barbie Sirena Color Magic Original', brand:'Mattel', approved: 'true', photo_url:'http://mla-s1-p.mlstatic.com/barbie-sirena-color-magic-original-mattel-3935-MLA4884880229_082013-O.jpg', "category_ids" => juguetes_mujer_category._id)
barbie_fiat_product = Product.new(name: 'Barbie Fiat 500', description: 'Barbie + Fiat 500. Un coche de Barbie igual al modelo real', brand:'Mattel', approved: 'true', photo_url:'http://img1.mlstatic.com/barbie-fiat-500-munecacocheoriginal-mattel_MLA-O-3450836205_112012.jpg', "category_ids" => juguetes_mujer_category._id)
piccolo_product = Product.new(name: 'Muñeco de Dragon Ball', description: 'Dragon Ball Z Piccolo La Batalla De Los Dioses', brand:'BCN Toys', approved: 'true', photo_url:'http://mla-s1-p.mlstatic.com/dragon-ball-z-piccoro-la-batalla-de-los-dioses-5883-MLA5006423260_092013-F.jpg', "category_ids" => juguetes_hombre_category._id)
actionman_product = Product.new(name: 'Muñeco de Action Man Piloto', description: 'Action Man Piloto De Carreras', brand:'Hasbro', approved: 'true', photo_url:'http://mla-s2-p.mlstatic.com/action-man-piloto-de-carreras-ano-2003-6286-MLA98414305_7588-O.jpg', "category_ids" => juguetes_hombre_category._id)
spiderman_mask_product = Product.new(name: 'Mascara Del Hombre Araña', description: 'Mascara Del Hombre Araña Original Hasbro', brand:'Hasbro', approved: 'true', photo_url:'http://mla-s2-p.mlstatic.com/mascara-del-hombre-arana-original-hasbro-5353-MLA4342393614_052013-F.jpg', "category_ids" => juguetes_hombre_category._id)
patineta_product = Product.new(name: 'Patineta - Skate', description: 'Patineta Skate De 4 Ruedas De Hombre Araña Cars Ben 10 Hot Wheels. Ideal para chicos. Estampado de cada personaje', brand:'Hasbro', approved: 'true', photo_url:'http://i367.photobucket.com/albums/oo114/oatyr/08-%2009-2011/2012-07-13299.jpg', "category_ids" => juguetes_hombre_category._id)
helicoptero_product = Product.new(name: 'Helicóptero Action Man', description: 'Action Man Set Helicoptero Nuevo En Blister', brand:'Hasbro', approved: 'true', photo_url:'http://mla-s2-p.mlstatic.com/action-man-set-helicoptero-nuevo-en-blister-hasbro-4792-MLA3884787955_022013-F.jpg', "category_ids" => juguetes_hombre_category._id)
autito_product = Product.new(name: 'Hot Wheels Lamborghini', description: 'Hot Wheels 2010 Lamborghini Gallardo Lp 560-4 All Stars 121', brand:'Hot Wheels', approved: 'true', photo_url:'http://mla-s2-p.mlstatic.com/hot-wheels-2010-lamborghini-gallardo-lp-560-4-all-stars-121-5513-MLA4969807882_092013-F.jpg', "category_ids" => juguetes_hombre_category._id)
autito2_product = Product.new(name: 'Hot Wheels Auto Volver Al Futuro De Lorean', description: 'Hot Wheels Auto Volver Al Futuro De Lorean Juguete Original', brand:'Hot Wheels', approved: 'true', photo_url:'http://mla-s1-p.mlstatic.com/hot-wheels-auto-volver-al-futuro-de-lorean-juguete-original-4459-MLA3663358460_012013-F.jpg', "category_ids" => juguetes_hombre_category._id)

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
entradas_eventos_product.save
entradas_eventos_product.save
entradas_eventos_product.save
entradas_eventos_product.save
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

puts "done"

#
# Creación de Vendedores (Seller)
#

print "Creating sellers..."

#sellers = []

#(1..5).each do |s|
#  s = Seller.new(first_name: Faker::Name.first_name,
#    last_name: Faker::Name.last_name,
#    email: Faker::Internet.email,
#    banned: false,
#    password: password,
#    password_confirmation: password_confirmation,
#    active: true)
#  sellers.push(s)
#end


s = Seller.new(
	company_name: 'Autopartes warnes'
	web: 'www.autoparteswarners.com.ar'
	location: 'Warnes 1354'
	phone: '4958-9785'
	email: 'autopartes@warnes.com.ar',
	banned: false,
	password: password,
	password_confirmation: password_confirmation,
	active: true
	)
	sellers.push(s)
end

puts "done."

#
# Creación de Productos Vendedor (Selling Product)
#

print "Asociating products with sellers..."

#sellers[0].selling_products = []
#libro_yenny = SellingProduct.new
#libro_yenny.product  = libro_product
#sellers[0].selling_products << libro_yenny
#libro_yenny.price = 65
#libro_yenny.save

sellers[0].selling_products = []
sensor_estacionamiento = SellingProduct.new
sensor_estacionamiento.product = sensor_estacionamiento_product
sellers[0].selling_products << sensor_estacionamiento
sensor_estacionamiento.price = 250
sensor_estacionamiento.save


puts "done."

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
sach.password = '12345678'
sach.password_confirmation = '12345678'
sach.active = active
sach.banned = banned
sach.genre = 'Hombre'
sach.wishlist = []
sach.wishlist << Product.all.entries[rand.rand(10)]
sach.wishlist << Product.all.entries[rand.rand(10)]
gift = Gift.new
gift.product = Product.all[rand.rand(10)]
gift.score = rand.rand(10)
sach.gifts = [gift]
sach.birthday = rand(20.years).ago
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
joaquincito.wishlist = []
joaquincito.wishlist << Product.all.entries[rand.rand(10)]
joaquincito.wishlist << Product.all.entries[rand.rand(10)]
gift = Gift.new
gift.product = Product.all[rand.rand(10)]
gift.score = rand.rand(10)
joaquincito.gifts = [gift]
joaquincito.birthday = rand(20.years).ago
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
vero.wishlist = []
vero.wishlist << Product.all.entries[rand.rand(10)]
vero.wishlist << Product.all.entries[rand.rand(10)]
gift = Gift.new
gift.product = Product.all[rand.rand(10)]
gift.score = rand.rand(10)
vero.gifts = [gift]
vero.birthday = rand(20.years).ago
vero.save

puts "Done"
print "Seeds germinado con exito ;)"