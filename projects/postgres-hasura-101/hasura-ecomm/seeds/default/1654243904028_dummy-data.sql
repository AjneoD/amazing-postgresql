-- Adminer 4.8.1 PostgreSQL 14.3 (Debian 14.3-1.pgdg110+1) dump

INSERT INTO "tenants" ("id", "name") VALUES
('lsk',	'Luke Skywalker'),
('dvd',	'Darth Vaeder'),
('iso',	'Ian Solo');

INSERT INTO "products" ("id", "tenant_id", "is_visible", "name", "description", "price", "created_at", "updated_at") VALUES
('ls001',	'lsk',	'1',	'Lightsaber',	'Available in blue color',	100,	'2022-06-03 08:05:55.687283+00',	'2022-06-03 08:05:55.687283+00'),
('ls002',	'lsk',	'1',	'Speeder',	'A fancy way to move on any terrain',	7100,	'2022-06-03 08:06:42.146075+00',	'2022-06-03 08:06:42.146075+00'),
('dv001',	'dvd',	'1',	'Lightsaber',	'Red and cool',	89,	'2022-06-03 08:07:01.85316+00',	'2022-06-03 08:07:01.85316+00'),
('is001',	'iso',	'1',	'Millennium Falcom',	'Looks like crap, but flies like an eagle',	85000,	'2022-06-03 08:07:40.298186+00',	'2022-06-03 08:07:40.298186+00');

INSERT INTO "movements" ("id", "tenant_id", "product_id", "created_at", "amount", "note") VALUES
(1,	'lsk',	'ls001',	'2022-06-03 08:08:23.125914+00',	1,	'inventory movement'),
(2,	'lsk',	'ls002',	'2022-06-03 08:08:35.596375+00',	1,	'inventory movement'),
(3,	'lsk',	'ls002',	'2022-06-03 08:09:10.301422+00',	-1,	'sold to fly away from Tatooine'),
(4,	'dvd',	'dv001',	'2022-06-03 08:09:27.468956+00',	1,	'inventory movement'),
(5,	'iso',	'is001',	'2022-06-03 08:09:42.560688+00',	1,	'inventory movement');

-- 2022-06-03 08:10:30.802684+00

