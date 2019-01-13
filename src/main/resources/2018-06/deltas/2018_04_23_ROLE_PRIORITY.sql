--liquibase formatted sql

--changeset konstantin_mosounov:1
ALTER TABLE `role`
  ADD COLUMN `priority` SMALLINT DEFAULT NULL;

UPDATE `role` SET `priority` = 10 WHERE `name` = 'learner';
UPDATE `role` SET `priority` = 20 WHERE `name` = 'instructor';
UPDATE `role` SET `priority` = 30 WHERE `name` = 'organizational_admin';
UPDATE `role` SET `priority` = 40 WHERE `name` = 'curriculum_reporter';
UPDATE `role` SET `priority` = 50 WHERE `name` = 'usage_reporter';
UPDATE `role` SET `priority` = 60 WHERE `name` = 'assess_vendor';
UPDATE `role` SET `priority` = 80 WHERE `name` = 'assess_author';
UPDATE `role` SET `priority` = 90 WHERE `name` = 'assess_discipline_admin';
UPDATE `role` SET `priority` = 100 WHERE `name` = 'assess_author_admin';
UPDATE `role` SET `priority` = 110 WHERE `name` = 'mhe_media_admin';
UPDATE `role` SET `priority` = 130 WHERE `name` = 'mhe_cxg_admin';
UPDATE `role` SET `priority` = 140 WHERE `name` = 'mhe_admin';

SET FOREIGN_KEY_CHECKS = 0;

ALTER TABLE `person`
	ADD COLUMN `default_role_id` BIGINT(20) DEFAULT NULL,
	ADD CONSTRAINT `person_default_role_id_fk` FOREIGN KEY (`default_role_id`) REFERENCES `role` (`id`),
	ALGORITHM=INPLACE, LOCK=NONE;

-- set priority of highest priority active affiliation
UPDATE `person` AS p
INNER JOIN (
  SELECT  a.`person_id`, MIN(r.`priority`) AS max_pri
  FROM affiliation a 
  INNER JOIN `person` p ON a.`person_id` = p.`id`
  INNER JOIN `role` r ON r.`id` = a.`role_id`
  WHERE p.`default_role_id` IS NULL AND (a.`end_date` IS NULL or a.`end_date` > current_date)
  GROUP BY a.`person_id` ) tmp ON tmp.`person_id` = p.`id`
INNER JOIN `role` r ON r.`priority` = tmp.`max_pri`
SET p.`default_role_id` = r.`id`;

-- set priority of highest priority inactive affiliation (historical)
-- for records that don't have default role set by above statement
UPDATE `person` AS p
INNER JOIN (
  SELECT  a.`person_id`, MIN(r.`priority`) AS max_pri
  FROM affiliation a 
  INNER JOIN `person` p ON a.`person_id` = p.`id`
  INNER JOIN `role` r ON r.`id` = a.`role_id`
  WHERE p.`default_role_id` IS NULL AND a.`end_date` <= current_date
  GROUP BY a.`person_id` ) tmp ON tmp.`person_id` = p.`id`
INNER JOIN `role` r ON r.`priority` = tmp.`max_pri`
SET p.`default_role_id` = r.`id`;

SET FOREIGN_KEY_CHECKS = 1;

