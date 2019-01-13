--liquibase formatted sql

--changeset pawan_pangty:1
CREATE TABLE user_name(
  id bigint(20) NOT NULL AUTO_INCREMENT,
  generated_name varchar(100) NOT NULL,
  counter INT,
  PRIMARY KEY(id),
  UNIQUE KEY user_name_generated_unique(generated_name)
 );