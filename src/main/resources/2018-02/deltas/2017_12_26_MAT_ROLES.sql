--liquibase formatted sql

--changeset konstantin_mosounov:1
insert into role (name, created_by) values('mhe_cxg_admin','system');
insert into role (name, created_by) values('mhe_media_admin','system');
