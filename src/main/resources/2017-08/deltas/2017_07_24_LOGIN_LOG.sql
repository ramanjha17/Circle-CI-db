--liquibase formatted sql

--changeset konstantin_mosounov:1
CREATE TABLE `login_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `account_id` bigint(20) DEFAULT NULL,
  `client_id` varchar(255) DEFAULT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  `user_agent` varchar(255) DEFAULT NULL,
  `grant_type` enum('PASSWORD','CLIENT_CREDENTIALS') DEFAULT NULL,
  `scope` varchar(80) DEFAULT NULL,
  `success` bit(1) NOT NULL DEFAULT 0,
  `created_date` datetime(3) NOT NULL DEFAULT NOW(3),
  PRIMARY KEY (`id`),
  KEY `login_log_account_id_idx` (`account_id`),
  KEY `login_log_user_name_idx` (`user_name`),
  CONSTRAINT `login_log_account_id_fk` FOREIGN KEY (`account_id`) REFERENCES `account` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

ALTER TABLE `external_identifier`
	ADD COLUMN  `created_by` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
	ADD COLUMN  `created_date` datetime(3) DEFAULT CURRENT_TIMESTAMP(3),
	ADD COLUMN  `last_modified_by` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
	ADD COLUMN  `last_modified_date` datetime(3) DEFAULT CURRENT_TIMESTAMP(3);
