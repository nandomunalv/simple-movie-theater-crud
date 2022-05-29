CREATE TABLE `tb_genres`
(
    `id`          bigint(20) NOT NULL AUTO_INCREMENT,
    `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `tb_classification`
(
    `id`          bigint(20) NOT NULL AUTO_INCREMENT,
    `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `tb_movie`
(
    `id`          bigint(20) NOT NULL AUTO_INCREMENT,
    `description` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `director`    varchar(255) COLLATE utf8mb4_unicode_ci  DEFAULT NULL,
    `line_up`     varchar(255) COLLATE utf8mb4_unicode_ci  DEFAULT NULL,
    `name`        varchar(255) COLLATE utf8mb4_unicode_ci  DEFAULT NULL,
    `gen_id`      bigint(20) DEFAULT NULL,
    `class_id`    bigint(20) DEFAULT NULL,
    PRIMARY KEY (`id`),
    KEY           `tb_movie_FK` (`gen_id`),
    KEY           `tb_movie_FK_1` (`class_id`),
    CONSTRAINT `tb_movie_FK` FOREIGN KEY (`gen_id`) REFERENCES `tb_genres` (`id`),
    CONSTRAINT `tb_movie_FK_1` FOREIGN KEY (`class_id`) REFERENCES `tb_classification` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
