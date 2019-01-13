--liquibase formatted sql

--changeset konstantin_mosounov:1 runOnChange:true endDelimiter:#
#
DROP PROCEDURE IF EXISTS `jidm`.`deleteUsers`#

CREATE PROCEDURE `jidm`.`deleteUsers` (IN field varchar(20), val varchar(1000))
BEGIN

  DECLARE users varchar(2000);

  IF field != 'user_name' and field != 'guid' and field != 'id' THEN
    SIGNAL SQLSTATE '45000'
    SET MESSAGE_TEXT = 'field must be: user_name or id or guid', MYSQL_ERRNO = 1001;
  END IF;

  IF field = 'user_name' THEN
    SET users = 'SELECT DISTINCT `person_id` FROM `account` WHERE `person_id` IS NOT NULL AND';
  ELSE
    SET users = 'SELECT DISTINCT `id` FROM `person` WHERE';
  END IF;

  SET users = CONCAT_WS(' ', users, field, val);

  DROP TEMPORARY TABLE IF EXISTS temp_user;
  CREATE TEMPORARY TABLE temp_user (`person_id` bigint(20) PRIMARY KEY);

  SET @temp = CONCAT('INSERT INTO temp_user ', users);

  PREPARE stmt FROM @temp;
  EXECUTE stmt;
  DEALLOCATE PREPARE stmt;

  DELETE `login_log` FROM `login_log` JOIN `account` ON `account`.`user_name` = `login_log`.`user_name` JOIN `temp_user` ON `temp_user`.`person_id` = `account`.`person_id`;
  DELETE `external_identifier` FROM `external_identifier` JOIN `temp_user` ON `temp_user`.`person_id` = `external_identifier`.`person_id`;
  DELETE `affiliation` FROM `affiliation` JOIN `temp_user` ON `temp_user`.`person_id` = `affiliation`.`person_id`;
  DELETE `client` FROM `client` JOIN `temp_user` ON `temp_user`.`person_id` = `client`.`person_id`;
  DELETE `phone` FROM `phone` JOIN `temp_user` ON `temp_user`.`person_id` = `phone`.`person_id`;
  DELETE `email` FROM `email` JOIN `temp_user` ON `temp_user`.`person_id` = `email`.`person_id`;
  DELETE `address` FROM `address` JOIN `temp_user` ON `temp_user`.`person_id` = `address`.`person_id`;
  DELETE `security_answer` FROM `security_answer` JOIN `temp_user` ON `temp_user`.`person_id` = `security_answer`.`person_id`;
  DELETE `account` FROM `account` JOIN `temp_user` ON `temp_user`.`person_id` = `account`.`person_id`;
  DELETE `person` FROM `person` JOIN `temp_user` ON `temp_user`.`person_id` = `person`.`id`;

  DROP TEMPORARY TABLE temp_user;

END#
