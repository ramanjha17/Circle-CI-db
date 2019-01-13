--liquibase formatted sql

--changeset konstantin_mosounov:1
CREATE TABLE `migrated_person` (
`id` bigint(20) NOT NULL AUTO_INCREMENT,
`person_id` bigint(20) DEFAULT NULL,
`organization_xid` varchar(255),
`event` varchar(45) not null,
`processed` bit(1) NOT NULL DEFAULT b'0',
`created_date` datetime(3) DEFAULT CURRENT_TIMESTAMP(3),
`last_modified_date` datetime(3),
PRIMARY KEY (`id`),
KEY `migrated_person_person_id_idx` (`person_id`),
KEY `migrated_person_processed_idx` (`processed`),
KEY `migrated_person_created_date_idx` (`created_date`),
KEY `migrated_person_last_modified_date_idx` (`last_modified_date`),
CONSTRAINT `migrated_person_id_fk` FOREIGN KEY (`person_id`) REFERENCES `person` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;