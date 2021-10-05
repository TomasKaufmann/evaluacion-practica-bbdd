CREATE DATABASE `gestion_notas_kaufmann` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

use `gestion_notas_kaufmann`;
-- gestion_notas_kaufmann.usuarios definition

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `mail` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4;

-- gestion_notas_kaufmann.categorias definition

CREATE TABLE `categorias` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4;

-- gestion_notas_kaufmann.notas definition

CREATE TABLE `notas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `categoria_id` int(11) NOT NULL,
  `fecha_creacion` datetime NOT NULL DEFAULT current_timestamp(),
  `fecha_modificacion` datetime NOT NULL DEFAULT current_timestamp(),
  `titulo` varchar(100) NOT NULL,
  `descripcion` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `notas_FK` (`user_id`),
  KEY `notas_FK_1` (`categoria_id`),
  CONSTRAINT `notas_FK` FOREIGN KEY (`user_id`) REFERENCES `usuarios` (`id`),
  CONSTRAINT `notas_FK_1` FOREIGN KEY (`categoria_id`) REFERENCES `categorias` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4;

insert into usuarios( nombre, mail) values 
	('Carlos',
	'carlos@carlos.com'),
	('Carlos',
	'carlos@carlos.com'),
	('Carlos',
	'carlos@carlos.com'),
	('Carlos',
	'carlos@carlos.com'),
	('Carlos',
	'carlos@carlos.com'),
	('Carlos',
	'carlos@carlos.com'),
	('Carlos',
	'carlos@carlos.com'),
	('Carlos',
	'carlos@carlos.com'),
	('Carlos',
	'carlos@carlos.com'),
	('Carlos',
	'carlos@carlos.com');

insert into categorias(nombre) values 
	('categoria'),
	('categoria'),
	('categoria'),
	('categoria'),
	('categoria'),
	('categoria'),
	('categoria'),
	('categoria'),
	('categoria'),
	('categoria');

insert into notas (user_id, categoria_id, titulo, descripcion) values 
	(1,1,'titulo',
	'descripcion'),
	(1,1,'titulo',
	'descripcion'),
	(1,1,'titulo',
	'descripcion'),
	(1,1,'titulo',
	'descripcion'),
	(1,1,'titulo',
	'descripcion'),
	(1,1,'titulo',
	'descripcion'),
	(1,1,'titulo',
	'descripcion'),
	(1,1,'titulo',
	'descripcion'),
	(1,1,'titulo',
	'descripcion'),
	(1,1,'titulo',
	'descripcion');