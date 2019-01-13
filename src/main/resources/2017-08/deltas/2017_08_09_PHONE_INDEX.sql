--liquibase formatted sql

--changeset konstantin_mosounov:1
ALTER TABLE `phone` ADD KEY `phone_person_id_idx` (`person_id`) ;
