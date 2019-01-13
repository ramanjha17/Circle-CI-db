--liquibase formatted sql

--changeset konstantin_mosounov:1
ALTER TABLE `person`
  ADD COLUMN `grade_level_code` varchar(15) DEFAULT NULL,
  ADD COLUMN `creation_source` ENUM('BULK','AAIRS','BURP','SELF','MANUAL') DEFAULT NULL;
