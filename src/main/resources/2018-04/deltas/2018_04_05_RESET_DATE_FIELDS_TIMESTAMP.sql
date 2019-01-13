--liquibase formatted sql
--changeset anand_joshi:1
ALTER TABLE account MODIFY reset_code_end_date TIMESTAMP NULL DEFAULT NULL ;
ALTER TABLE account MODIFY reset_date TIMESTAMP NULL DEFAULT NULL ;
