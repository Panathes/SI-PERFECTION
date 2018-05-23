DROP SCHEMA IF EXISTS `UADV`;

CREATE SCHEMA IF NOT EXISTS `UADV`
DEFAULT CHARACTER SET utf8mb4
COLLATE utf8mb4_unicode_ci;

use `UADV`;

CREATE TABLE `article` (
    `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
    `title` VARCHAR(110),
    `subtitle` VARCHAR(110),
    `img` VARCHAR(110),
    `text` VARCHAR(3000),
    `label` VARCHAR(50),
    `logo` VARCHAR(110),
    `tag` VARCHAR(50),
    PRIMARY KEY (`id`)
    );


INSERT INTO
    `article`
    (`id`, `title`, `subtitle`, `img`, `text`, `label`, `logo`)
VALUES
   (NULL, "avion", "vroom", "osef", "osef", "air france", "osef")
;