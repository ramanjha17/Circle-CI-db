--liquibase formatted sql

--changeset konstantin_mosounov:1
ALTER TABLE `account`
  ADD COLUMN `temp_password` varchar(255) DEFAULT NULL, 
  ADD COLUMN `temp_password_end_date` datetime(3) DEFAULT NULL, 
  ALGORITHM=INPLACE, LOCK=NONE;

 ALTER TABLE `role`
  ADD COLUMN `temp_password_expiry` int DEFAULT NULL, 
  ALGORITHM=INPLACE, LOCK=NONE;
  
 UPDATE `role` SET `temp_password_expiry` = 720 WHERE `name` = 'learner';
 