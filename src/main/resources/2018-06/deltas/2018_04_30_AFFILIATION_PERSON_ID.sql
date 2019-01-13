--liquibase formatted sql

--changeset konstantin_mosounov:1
ALTER TABLE `affiliation`
  ADD COLUMN `customer_person_id` varchar(255) DEFAULT NULL, ALGORITHM=INPLACE, LOCK=NONE;
