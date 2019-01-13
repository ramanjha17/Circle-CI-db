--liquibase formatted sql

--changeset konstantin_mosounov:1
call cleanDuplicateEmails();
ALTER TABLE email ADD UNIQUE INDEX email_address_unique(address);
