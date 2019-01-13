--liquibase formatted sql

--changeset konstantin_mosounov:3
ALTER TABLE `client` ADD KEY `client_external_id_idx` (`external_id`);
