/*
Navicat MySQL Data Transfer

Source Server         : MySQL
Source Server Version : 50624
Source Host           : 127.0.0.1:3306
Source Database       : testdevidia

Target Server Type    : MYSQL
Target Server Version : 50699
File Encoding         : 65001

Date: 2016-07-15 13:52:42
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for clients
-- ----------------------------
DROP TABLE IF EXISTS `clients`;
CREATE TABLE `clients` (
`id`  int(10) UNSIGNED NOT NULL AUTO_INCREMENT ,
`nom`  varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL ,
`telephone`  varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL ,
`email`  varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL ,
`created_at`  timestamp NULL DEFAULT NULL ,
`updated_at`  timestamp NULL DEFAULT NULL ,
PRIMARY KEY (`id`),
UNIQUE INDEX `clients_nom_unique` (`nom`) USING BTREE ,
UNIQUE INDEX `clients_telephone_unique` (`telephone`) USING BTREE ,
UNIQUE INDEX `clients_email_unique` (`email`) USING BTREE 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_unicode_ci
AUTO_INCREMENT=26

;

-- ----------------------------
-- Records of clients
-- ----------------------------
BEGIN;
INSERT INTO `clients` VALUES ('1', 'Nom et prénoms numéro 0', '0022890663020', 'Emailcomplet0@devidia.com', '2016-03-01 13:36:32', '2016-03-01 13:36:32'), ('2', 'Nom et prénoms numéro 1', '0022890663021', 'Emailcomplet1@devidia.com', '2016-11-06 13:36:32', '2016-11-06 13:36:32'), ('3', 'Nom et prénoms numéro 2', '0022890663022', 'Emailcomplet2@devidia.com', '2016-08-02 13:36:33', '2016-08-02 13:36:33'), ('4', 'Nom et prénoms numéro 3', '0022890663023', 'Emailcomplet3@devidia.com', '2016-12-10 13:36:33', '2016-12-10 13:36:33'), ('5', 'Nom et prénoms numéro 4', '0022890663024', 'Emailcomplet4@devidia.com', '2016-10-21 13:36:33', '2016-10-21 13:36:33'), ('6', 'Nom et prénoms numéro 5', '0022890663025', 'Emailcomplet5@devidia.com', '2016-08-11 13:36:33', '2016-08-11 13:36:33'), ('7', 'Nom et prénoms numéro 6', '0022890663026', 'Emailcomplet6@devidia.com', '2016-12-25 13:36:33', '2016-12-25 13:36:33'), ('8', 'Nom et prénoms numéro 7', '0022890663027', 'Emailcomplet7@devidia.com', '2016-09-26 13:36:33', '2016-09-26 13:36:33'), ('9', 'Nom et prénoms numéro 8', '0022890663028', 'Emailcomplet8@devidia.com', '2016-11-26 13:36:33', '2016-11-26 13:36:33'), ('10', 'Nom et prénoms numéro 9', '0022890663029', 'Emailcomplet9@devidia.com', '2016-08-28 13:36:33', '2016-08-28 13:36:33'), ('11', 'Nom et prénoms numéro 10', '00228906630210', 'Emailcomplet10@devidia.com', '2016-09-17 13:36:33', '2016-09-17 13:36:33'), ('12', 'Nom et prénoms numéro 11', '00228906630211', 'Emailcomplet11@devidia.com', '2016-06-07 13:36:33', '2016-06-07 13:36:33'), ('13', 'Nom et prénoms numéro 12', '00228906630212', 'Emailcomplet12@devidia.com', '2016-04-08 13:36:33', '2016-04-08 13:36:33'), ('14', 'Nom et prénoms numéro 13', '00228906630213', 'Emailcomplet13@devidia.com', '2016-08-20 13:36:33', '2016-08-20 13:36:33'), ('15', 'Nom et prénoms numéro 14', '00228906630214', 'Emailcomplet14@devidia.com', '2016-09-24 13:36:33', '2016-09-24 13:36:33'), ('16', 'Nom et prénoms numéro 15', '00228906630215', 'Emailcomplet15@devidia.com', '2016-02-02 13:36:34', '2016-02-02 13:36:34'), ('17', 'Nom et prénoms numéro 16', '00228906630216', 'Emailcomplet16@devidia.com', '2016-09-18 13:36:34', '2016-09-18 13:36:34'), ('18', 'Nom et prénoms numéro 17', '00228906630217', 'Emailcomplet17@devidia.com', '2016-05-10 13:36:34', '2016-05-10 13:36:34'), ('19', 'Nom et prénoms numéro 18', '00228906630218', 'Emailcomplet18@devidia.com', '2016-08-13 13:36:34', '2016-08-13 13:36:34'), ('20', 'Nom et prénoms numéro 19', '00228906630219', 'Emailcomplet19@devidia.com', '2016-05-05 13:36:34', '2016-05-05 13:36:34'), ('21', 'Nom et prénoms numéro 20', '00228906630220', 'Emailcomplet20@devidia.com', '2016-01-19 13:36:34', '2016-01-19 13:36:34'), ('22', 'Nom et prénoms numéro 21', '00228906630221', 'Emailcomplet21@devidia.com', '2016-08-18 13:36:34', '2016-08-18 13:36:34'), ('23', 'Nom et prénoms numéro 22', '00228906630222', 'Emailcomplet22@devidia.com', '2016-03-04 13:36:34', '2016-03-04 13:36:34'), ('24', 'Nom et prénoms numéro 23', '00228906630223', 'Emailcomplet23@devidia.com', '2016-01-09 13:36:34', '2016-01-09 13:36:34'), ('25', 'Nom et prénoms numéro 24', '00228906630224', 'Emailcomplet24@devidia.com', '2016-10-05 13:36:34', '2016-10-05 13:36:34');
COMMIT;

-- ----------------------------
-- Table structure for factures
-- ----------------------------
DROP TABLE IF EXISTS `factures`;
CREATE TABLE `factures` (
`id`  int(10) UNSIGNED NOT NULL AUTO_INCREMENT ,
`client_id`  int(10) UNSIGNED NOT NULL ,
`nom`  varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL ,
`created_at`  timestamp NULL DEFAULT NULL ,
`updated_at`  timestamp NULL DEFAULT NULL ,
PRIMARY KEY (`id`),
FOREIGN KEY (`client_id`) REFERENCES `clients` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
UNIQUE INDEX `factures_nom_unique` (`nom`) USING BTREE ,
INDEX `factures_client_id_foreign` (`client_id`) USING BTREE 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_unicode_ci
AUTO_INCREMENT=101

;

-- ----------------------------
-- Records of factures
-- ----------------------------
BEGIN;
INSERT INTO `factures` VALUES ('1', '5', 'Nom complet de facture 0', '2016-02-09 13:36:34', '2016-02-09 13:36:34'), ('2', '6', 'Nom complet de facture 1', '2016-08-23 13:36:34', '2016-08-23 13:36:34'), ('3', '15', 'Nom complet de facture 2', '2016-12-26 13:36:34', '2016-12-26 13:36:34'), ('4', '20', 'Nom complet de facture 3', '2016-02-10 13:36:34', '2016-02-10 13:36:34'), ('5', '4', 'Nom complet de facture 4', '2016-06-19 13:36:34', '2016-06-19 13:36:34'), ('6', '22', 'Nom complet de facture 5', '2016-08-23 13:36:34', '2016-08-23 13:36:34'), ('7', '17', 'Nom complet de facture 6', '2016-06-06 13:36:35', '2016-06-06 13:36:35'), ('8', '25', 'Nom complet de facture 7', '2016-05-04 13:36:35', '2016-05-04 13:36:35'), ('9', '7', 'Nom complet de facture 8', '2016-07-08 13:36:35', '2016-07-08 13:36:35'), ('10', '3', 'Nom complet de facture 9', '2016-09-08 13:36:35', '2016-09-08 13:36:35'), ('11', '12', 'Nom complet de facture 10', '2016-08-24 13:36:35', '2016-08-24 13:36:35'), ('12', '3', 'Nom complet de facture 11', '2016-01-14 13:36:35', '2016-01-14 13:36:35'), ('13', '13', 'Nom complet de facture 12', '2016-01-18 13:36:35', '2016-01-18 13:36:35'), ('14', '24', 'Nom complet de facture 13', '2016-11-12 13:36:35', '2016-11-12 13:36:35'), ('15', '15', 'Nom complet de facture 14', '2016-11-02 13:36:35', '2016-11-02 13:36:35'), ('16', '24', 'Nom complet de facture 15', '2016-08-11 13:36:35', '2016-08-11 13:36:35'), ('17', '6', 'Nom complet de facture 16', '2016-01-22 13:36:35', '2016-01-22 13:36:35'), ('18', '24', 'Nom complet de facture 17', '2016-05-23 13:36:35', '2016-05-23 13:36:35'), ('19', '7', 'Nom complet de facture 18', '2016-02-19 13:36:35', '2016-02-19 13:36:35'), ('20', '19', 'Nom complet de facture 19', '2016-03-07 13:36:35', '2016-03-07 13:36:35'), ('21', '9', 'Nom complet de facture 20', '2016-05-08 13:36:35', '2016-05-08 13:36:35'), ('22', '3', 'Nom complet de facture 21', '2016-11-19 13:36:36', '2016-11-19 13:36:36'), ('23', '3', 'Nom complet de facture 22', '2016-09-27 13:36:36', '2016-09-27 13:36:36'), ('24', '8', 'Nom complet de facture 23', '2016-05-26 13:36:36', '2016-05-26 13:36:36'), ('25', '8', 'Nom complet de facture 24', '2016-02-04 13:36:36', '2016-02-04 13:36:36'), ('26', '25', 'Nom complet de facture 25', '2016-09-19 13:36:36', '2016-09-19 13:36:36'), ('27', '7', 'Nom complet de facture 26', '2016-07-19 13:36:36', '2016-07-19 13:36:36'), ('28', '22', 'Nom complet de facture 27', '2016-01-24 13:36:36', '2016-01-24 13:36:36'), ('29', '24', 'Nom complet de facture 28', '2016-11-26 13:36:36', '2016-11-26 13:36:36'), ('30', '16', 'Nom complet de facture 29', '2016-09-25 13:36:36', '2016-09-25 13:36:36'), ('31', '10', 'Nom complet de facture 30', '2016-01-03 13:36:36', '2016-01-03 13:36:36'), ('32', '8', 'Nom complet de facture 31', '2016-10-26 13:36:36', '2016-10-26 13:36:36'), ('33', '19', 'Nom complet de facture 32', '2016-10-17 13:36:36', '2016-10-17 13:36:36'), ('34', '13', 'Nom complet de facture 33', '2016-02-02 13:36:36', '2016-02-02 13:36:36'), ('35', '17', 'Nom complet de facture 34', '2016-03-01 13:36:36', '2016-03-01 13:36:36'), ('36', '20', 'Nom complet de facture 35', '2016-09-17 13:36:36', '2016-09-17 13:36:36'), ('37', '14', 'Nom complet de facture 36', '2016-07-21 13:36:36', '2016-07-21 13:36:36'), ('38', '18', 'Nom complet de facture 37', '2016-10-08 13:36:36', '2016-10-08 13:36:36'), ('39', '19', 'Nom complet de facture 38', '2016-05-22 13:36:36', '2016-05-22 13:36:36'), ('40', '5', 'Nom complet de facture 39', '2016-03-20 13:36:37', '2016-03-20 13:36:37'), ('41', '20', 'Nom complet de facture 40', '2016-05-11 13:36:37', '2016-05-11 13:36:37'), ('42', '19', 'Nom complet de facture 41', '2016-10-07 13:36:37', '2016-10-07 13:36:37'), ('43', '19', 'Nom complet de facture 42', '2016-05-02 13:36:37', '2016-05-02 13:36:37'), ('44', '19', 'Nom complet de facture 43', '2016-06-19 13:36:37', '2016-06-19 13:36:37'), ('45', '10', 'Nom complet de facture 44', '2016-11-01 13:36:37', '2016-11-01 13:36:37'), ('46', '16', 'Nom complet de facture 45', '2016-02-03 13:36:37', '2016-02-03 13:36:37'), ('47', '10', 'Nom complet de facture 46', '2016-09-06 13:36:37', '2016-09-06 13:36:37'), ('48', '6', 'Nom complet de facture 47', '2016-10-13 13:36:37', '2016-10-13 13:36:37'), ('49', '18', 'Nom complet de facture 48', '2016-03-21 13:36:37', '2016-03-21 13:36:37'), ('50', '23', 'Nom complet de facture 49', '2016-01-15 13:36:37', '2016-01-15 13:36:37'), ('51', '20', 'Nom complet de facture 50', '2016-04-28 13:36:37', '2016-04-28 13:36:37'), ('52', '24', 'Nom complet de facture 51', '2016-06-11 13:36:37', '2016-06-11 13:36:37'), ('53', '18', 'Nom complet de facture 52', '2016-12-01 13:36:38', '2016-12-01 13:36:38'), ('54', '16', 'Nom complet de facture 53', '2016-03-17 13:36:38', '2016-03-17 13:36:38'), ('55', '15', 'Nom complet de facture 54', '2016-06-20 13:36:38', '2016-06-20 13:36:38'), ('56', '17', 'Nom complet de facture 55', '2016-11-12 13:36:38', '2016-11-12 13:36:38'), ('57', '19', 'Nom complet de facture 56', '2016-06-27 13:36:38', '2016-06-27 13:36:38'), ('58', '8', 'Nom complet de facture 57', '2016-01-02 13:36:38', '2016-01-02 13:36:38'), ('59', '25', 'Nom complet de facture 58', '2016-03-02 13:36:38', '2016-03-02 13:36:38'), ('60', '17', 'Nom complet de facture 59', '2016-02-27 13:36:38', '2016-02-27 13:36:38'), ('61', '20', 'Nom complet de facture 60', '2016-02-28 13:36:38', '2016-02-28 13:36:38'), ('62', '25', 'Nom complet de facture 61', '2016-03-02 13:36:38', '2016-03-02 13:36:38'), ('63', '16', 'Nom complet de facture 62', '2016-11-13 13:36:38', '2016-11-13 13:36:38'), ('64', '19', 'Nom complet de facture 63', '2016-09-26 13:36:38', '2016-09-26 13:36:38'), ('65', '5', 'Nom complet de facture 64', '2016-04-07 13:36:38', '2016-04-07 13:36:38'), ('66', '5', 'Nom complet de facture 65', '2016-01-05 13:36:38', '2016-01-05 13:36:38'), ('67', '16', 'Nom complet de facture 66', '2016-05-16 13:36:38', '2016-05-16 13:36:38'), ('68', '5', 'Nom complet de facture 67', '2016-08-19 13:36:38', '2016-08-19 13:36:38'), ('69', '21', 'Nom complet de facture 68', '2016-08-05 13:36:38', '2016-08-05 13:36:38'), ('70', '23', 'Nom complet de facture 69', '2016-04-19 13:36:38', '2016-04-19 13:36:38'), ('71', '17', 'Nom complet de facture 70', '2016-02-20 13:36:39', '2016-02-20 13:36:39'), ('72', '19', 'Nom complet de facture 71', '2016-06-04 13:36:39', '2016-06-04 13:36:39'), ('73', '5', 'Nom complet de facture 72', '2016-03-24 13:36:39', '2016-03-24 13:36:39'), ('74', '19', 'Nom complet de facture 73', '2016-04-03 13:36:39', '2016-04-03 13:36:39'), ('75', '24', 'Nom complet de facture 74', '2016-12-19 13:36:39', '2016-12-19 13:36:39'), ('76', '19', 'Nom complet de facture 75', '2016-03-21 13:36:39', '2016-03-21 13:36:39'), ('77', '4', 'Nom complet de facture 76', '2016-08-23 13:36:39', '2016-08-23 13:36:39'), ('78', '17', 'Nom complet de facture 77', '2016-10-20 13:36:39', '2016-10-20 13:36:39'), ('79', '2', 'Nom complet de facture 78', '2016-06-21 13:36:39', '2016-06-21 13:36:39'), ('80', '23', 'Nom complet de facture 79', '2016-05-10 13:36:39', '2016-05-10 13:36:39'), ('81', '3', 'Nom complet de facture 80', '2016-03-02 13:36:39', '2016-03-02 13:36:39'), ('82', '7', 'Nom complet de facture 81', '2016-02-02 13:36:39', '2016-02-02 13:36:39'), ('83', '5', 'Nom complet de facture 82', '2016-05-20 13:36:39', '2016-05-20 13:36:39'), ('84', '14', 'Nom complet de facture 83', '2016-02-12 13:36:39', '2016-02-12 13:36:39'), ('85', '24', 'Nom complet de facture 84', '2016-06-05 13:36:39', '2016-06-05 13:36:39'), ('86', '14', 'Nom complet de facture 85', '2016-12-12 13:36:39', '2016-12-12 13:36:39'), ('87', '25', 'Nom complet de facture 86', '2016-02-23 13:36:40', '2016-02-23 13:36:40'), ('88', '11', 'Nom complet de facture 87', '2016-10-23 13:36:40', '2016-10-23 13:36:40'), ('89', '3', 'Nom complet de facture 88', '2016-08-03 13:36:40', '2016-08-03 13:36:40'), ('90', '25', 'Nom complet de facture 89', '2016-08-10 13:36:40', '2016-08-10 13:36:40'), ('91', '15', 'Nom complet de facture 90', '2016-09-25 13:36:40', '2016-09-25 13:36:40'), ('92', '22', 'Nom complet de facture 91', '2016-08-27 13:36:40', '2016-08-27 13:36:40'), ('93', '12', 'Nom complet de facture 92', '2016-05-13 13:36:40', '2016-05-13 13:36:40'), ('94', '18', 'Nom complet de facture 93', '2016-01-02 13:36:40', '2016-01-02 13:36:40'), ('95', '18', 'Nom complet de facture 94', '2016-07-04 13:36:40', '2016-07-04 13:36:40'), ('96', '16', 'Nom complet de facture 95', '2016-12-22 13:36:40', '2016-12-22 13:36:40'), ('97', '12', 'Nom complet de facture 96', '2016-10-07 13:36:40', '2016-10-07 13:36:40'), ('98', '5', 'Nom complet de facture 97', '2016-04-06 13:36:40', '2016-04-06 13:36:40'), ('99', '12', 'Nom complet de facture 98', '2016-05-12 13:36:40', '2016-05-12 13:36:40'), ('100', '25', 'Nom complet de facture 99', '2016-11-18 13:36:40', '2016-11-18 13:36:40');
COMMIT;

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
`migration`  varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL ,
`batch`  int(11) NOT NULL 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_unicode_ci

;

-- ----------------------------
-- Records of migrations
-- ----------------------------
BEGIN;
INSERT INTO `migrations` VALUES ('2016_07_15_103728_create_table_clients', '1'), ('2016_07_15_104202_create_table_factures', '1');
COMMIT;

-- ----------------------------
-- Auto increment value for clients
-- ----------------------------
ALTER TABLE `clients` AUTO_INCREMENT=26;

-- ----------------------------
-- Auto increment value for factures
-- ----------------------------
ALTER TABLE `factures` AUTO_INCREMENT=101;
