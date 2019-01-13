--liquibase formatted sql

--changeset pawan_pangty:1 context:prod
delete from role where id in (1,3,4,5,8);