--liquibase formatted sql

--changeset konstantin_mosounov:1
INSERT INTO role (`name`) VALUES ('curriculum_reporter'), ('usage_reporter');