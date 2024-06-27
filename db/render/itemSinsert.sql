INSERT INTO public.items (
    "Itemnum", "ItemName", "Price", "Onhand", "Allocated", "ReOrder", "OnOrder", 
    "CatPage", "CatDescription", "Category1", "Category2", "Special", "Weight", 
    "Minqty", "imagen"
) VALUES 
(1, 'Fins', 24.00, 13022, 9399, 1, 433, 1, 'Estas aletas de piel de tiburón real te dejarán sin aliento en la playa. Te verán venir desde lejos mientras llevas las Aletas Originales', 'Diving', 'Footwear', '1', 4.00, 5, 'cat00001.jpg'),
(2, 'Tennis Racquet', 119.50, 12987, 9038, 7, 483, 2, 'Usa lo que usan los profesionales. Especifica Grafito, Madera No de Bosque Tropical, o Aluminio', 'Tennis', 'Equipment', '2', 3.00, 5, 'cat00002.jpg'),
(3, 'Golf Umbrella', 16.55, 12906, 10582, 59, 654, 3, 'Mantén la calma con este paraguas de golf Progress', 'Golf', 'Equipment', '3', 0.25, 50, 'cat00003.jpg'),
(4, 'Cycle Helmet', 75.00, 12977, 10548, 41, 546, 4, 'Cascos de Ciclismo aprobados por ANSI, ASCII, VHS, TCP/IP. Te lucirás por la ciudad en poco tiempo. Seguridad Primero con el casco de ciclismo oficial del Equipo de Carreras de Iowa', 'Biking', 'Equipment', '1', 7.00, 10, 'cat00004.jpg'),
(5, 'Leotard - Black', 19.95, 12798, 9730, 30, 631, 5, 'Bastones de esquí de grafito. Una gran adición a tu arsenal de esquí. ¡A un precio para vender!', 'Aerobics', 'Clothing', '2', 2.00, 25, 'cat00006.jpg'),
(6, 'Ski Poles', 27.50, 12730, 10107, 5, 327, 6, 'Bastones de esquí de grafito. Una gran adición a tu arsenal de esquí. ¡A un precio para vender!', 'Skiing', 'Equipment', '3', 3.00, 10, 'cat00006.jpg'),
(7, 'Buoyancy Vest', 125.00, 12877, 10876, 15, 479, 7, 'Mantente a flote con tu propio chaleco de flotabilidad de helio', 'Diving', 'Equipment', '1', 8.00, 30, 'cat00007.jpg'),
(8, 'Runner''s Vest', 19.85, 13035, 10788, 19, 427, 30, 'Ya sea una carrera rápida o una larga, este chaleco es imprescindible.', 'Running', 'Equipment', '2', 2.00, 25, 'cat00008.jpg'),
(9, 'Swim Goggles', 18.00, 13024, 11500, 4, 275, 9, '¿Dónde las dejé? Estas gafas nunca se perderán. Vienen con su propia correa.', 'Diving', 'Equipment', '3', 0.75, 15, 'cat00009.jpg'),
(10, 'Duffel Bag', 50.00, 13001, 10330, 13, 309, 0, 'La bolsa de deporte "Powered By Progress" viene en aqua, púrpura y negro', 'Miscellaneous', 'Equipment', '1', 4.00, 10, 'cat00010.jpg'),
(11, 'Tent', 134.00, 12817, 10269, 19, 334, 11, 'Hecha de nylon ligero, esta tienda tiene el peso perfecto para llevarla de excursión', 'Miscellaneous', 'Equipment', '2', 5.00, 15, 'cat00011.jpg'),
(12, 'Sled', 34.00, 13021, 10692, 30, 287, 19, 'Deslízate hacia la diversión con este trineo para una persona', 'Miscellaneous', 'Equipment', '3', 3.00, 30, 'cat00012.jpg'),
(13, 'Fishing Pole', 50.99, 13023, 8108, 24, 307, 0, '¡No dejes que el Gran Pez se escape! Esta caña de agua dulce es genial para la pesca en lago', 'Fishing', 'Equipment', '1', 2.00, 5, 'cat00013.jpg'),
(14, 'Knee Guards', 15.00, 9852, 9448, 59, 615, 14, 'No dejes que tus articulaciones sufran. Protege tus rodillas', 'Hockey', 'Equipment', '2', 3.00, 20, 'cat00014.jpg'),
(15, 'Football Helmet', 45.00, 10042, 9179, 14, 291, 12, 'Un accesorio esencial para todos los entrenadores.', 'Football', 'Equipment', '3', 7.00, 5, 'cat00015.jpg'),
(16, 'Baseball Bat', 13.95, 10059, 9387, 44, 285, 57, 'Este es un verdadero bateador. Con este bate, sacarás la pelota del parque', 'Baseball', 'Equipment', '1', 4.00, 20, 'cat00016.jpg'),
(17, 'Tennis Balls', 5.95, 11391, 10513, 65, 1060, 17, 'Tres por paquete. Disponibles en blanco o amarillo fluorescente', 'Tennis', 'Equipment', '2', 1.00, 100, 'cat00017.jpg'),
(18, 'Wet Suit', 225.00, 9992, 8872, 3, 262, 18, 'Este traje de una pieza de goma te mantendrá caliente en los mares fríos. Ideal para buceo y surf', 'Diving', 'Equipment', '3', 8.50, 5, 'cat00018.jpg'),
(19, 'Ski Wax - Red', 2.75, 9925, 9213, 33, 269, 0, 'Para aprovechar al máximo tus esquís, asegúrate de aplicar una cantidad suficiente de cera', 'Skiing', 'Equipment', '1', 0.25, 5, 'cat00019.jpg'),
(20, 'Snow Shoes', 225.00, 9842, 8883, 8, 244, 20, '¡Son para eventos nórdicos! ¡No, son para eventos alpinos! En realidad, ¡son geniales para ambos!', 'Skiing', 'Equipment', '2', 10.00, 20, 'cat00020.jpg'),
(21, 'Ski Bindings', 56.50, 12841, 12786, 16, 248, 0, 'Compatibles con los esquís de la mayoría de los principales proveedores, estas fijaciones de agarre seguro son la mejor manera de obtener el mejor rendimiento en las pistas', 'Skiing', 'Equipment', '3', 5.00, 10, 'cat00021.jpg'),
(22, 'Eight Pound Weight', 10.00, 9919, 9631, 18, 542, 0, 'También disponible en 2, 5 y 10 libras', 'Miscellaneous', 'Equipment', '1', 8.00, 20, 'cat00022.jpg'),
(23, 'Ski Hat', 10.99, 9904, 9895, 56, 444, 0, 'Hecho de algodón, disponible en rosa y azul', 'Skiing', 'Clothing', '2', 2.00, 30, 'cat00023.jpg'),
(24, 'Snorkel', 13.95, 9925, 9430, 17, 331, 24, 'En el arrecife o en un lago, el Ultra-Snorkel de AirWaves te dejará sin aliento', 'Diving', 'Equipment', '3', 2.00, 25, 'cat00024.jpg'),
(25, 'Ski boots', 121.00, 10064, 9146, 12, 223, 56, 'Las botas de esquí están disponibles en los siguientes colores: azul, rojo, negro o blanco', 'Skiing', 'Footwear', '1', 10.00, 20, 'cat00025.jpg'),
(26, 'Catchers Mit', 4.99, 10570, 10445, 42, 212, 0, 'Disponible en pequeño, mediano y grande', 'Baseball', 'Equipment', '2', 2.00, 50, 'cat00026.jpg'),
(27, 'Parka', 98.00, 9940, 9035, 30, 292, 27, 'Probado en campo por la Marina en la Antártida.', 'Skiing', 'Clothing', '3', 8.00, 50, 'cat00027.jpg'),
(28, 'Ski Gloves', 23.00, 9754, 9600, 10, 262, 56, 'Abrigados por dentro porque mantienen el frío fuera. Estos guantes también son resistentes al agua y están forrados', 'Skiing', 'Clothing', '1', 10.00, 20, 'cat00028.jpg'),
(29, 'Gloves', 13.50, 9976, 9060, 62, 458, 29, 'Disfrutarás de los fríos días de invierno cuando tengas estos guantes térmicos.', 'Skiing', 'Clothing', '2', 10.00, 75, 'cat00029.jpg'),
(30, 'Wind Surfer', 42.75, 10039, 9682, 11, 276, 0, 'Este remo de cedro y madera te hará remar con estilo', 'Boating', 'Equipment', '3', 5.00, 20, 'cat00030.jpg');