--liquibase formatted sql

--changeset konstantin_mosounov:2
ALTER TABLE `account`
	ADD COLUMN  `simplified_password` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL;
