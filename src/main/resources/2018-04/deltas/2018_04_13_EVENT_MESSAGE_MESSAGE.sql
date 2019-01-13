--liquibase formatted sql

--changeset konstantin_mosounov:1
ALTER TABLE event_message MODIFY COLUMN message MEDIUMTEXT;