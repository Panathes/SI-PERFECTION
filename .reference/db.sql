DROP SCHEMA IF EXISTS `UADV`;

CREATE SCHEMA IF NOT EXISTS `UADV`
DEFAULT CHARACTER SET utf8mb4
COLLATE utf8mb4_unicode_ci;

use `UADV`;

CREATE TABLE `article` (
    `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
    `title` VARCHAR(110),
    `subtitle` VARCHAR(110),
    `img` VARCHAR(350),
    `text` VARCHAR(3000),
    `tag` VARCHAR(50),
    `compagnie` INT,
    PRIMARY KEY (`id`)
    );


CREATE TABLE `imgbox` (
    `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
    `img` VARCHAR(110),
    `title` VARCHAR(110),
    `author` VARCHAR(110),
    PRIMARY KEY (`id`)
    );


CREATE TABLE `partenaire` (
    `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(110),
    `logo` VARCHAR(110),
    `alt` VARCHAR(110),
    PRIMARY KEY (`id`)
    );



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

CREATE TABLE `compagnie` (
    `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(110),
    `label` VARCHAR(110),
    `logo` VARCHAR(110),
    PRIMARY KEY (`id`)
    );

CREATE TABLE `hundred` (
    `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(110),
    `adresse` VARCHAR(110),
    `classement` VARCHAR(110),
    `phone` VARCHAR(110),
    `price` VARCHAR(110),
    PRIMARY KEY (`id`)
    );

CREATE TABLE `twitter` (
    `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(110),
    `link` VARCHAR(255),
    PRIMARY KEY (`id`)
    );