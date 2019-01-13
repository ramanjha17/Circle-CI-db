--liquibase formatted sql

--changeset pawan_pangty:1
ALTER TABLE role
    ADD COLUMN guid VARCHAR(255) NOT NULL after name,
    ADD COLUMN created_by VARCHAR(45) DEFAULT null after guid,
    ADD COLUMN created_date datetime(3) DEFAULT NOW(3) after created_by,
    ADD COLUMN last_modified_by VARCHAR(45) DEFAULT null after created_date,
    ADD COLUMN last_modified_date datetime(3) after last_modified_by;