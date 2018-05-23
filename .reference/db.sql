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


CREATE TABLE `imgbox` (
    `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
    `img` VARCHAR(110),
    `title` VARCHAR(110),
    `author` VARCHAR(110),
    PRIMARY KEY (`id`)
    );

INSERT INTO
    `imgbox`
    (`id`, `img`, `title`, `author`)
VALUES
   (NULL, "url", "mer", "michel")
;

CREATE TABLE `partenaire` (
    `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(110),
    `logo` VARCHAR(110),
    `alt` VARCHAR(110),
    PRIMARY KEY (`id`)
    );

INSERT INTO
    `partenaire`
    (`id`, `name`, `logo`, `alt`)
VALUES
   (NULL, "air france", "ouep", "ouep")
;

CREATE TABLE `message` (
    `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
    `type` VARCHAR(110),
    `entreprise` VARCHAR(110),
    `name` VARCHAR(110),
    `email` VARCHAR(110),
    `phone` INT,
    `message` VARCHAR(3000),
    PRIMARY KEY (`id`)
    );

INSERT INTO
    `message`
    (`id`, `type`, `entreprise`, `name`, `email`, `phone`, `message`)
VALUES
   (NULL, "air france", "ouep", "ouep", "hey", 2, "ouaip")
;