--liquibase formatted sql

--changeset pawan_pangty:1
CREATE TABLE oauth_access_token (
  token_id varchar(255) DEFAULT NULL,
  token blob,
  authentication_id varchar(255) NOT NULL,
  user_name varchar(255) DEFAULT NULL,
  client_id varchar(255) DEFAULT NULL,
  authentication blob,
  refresh_token varchar(255) DEFAULT NULL,
  PRIMARY KEY (authentication_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE oauth_approvals (
  userId varchar(255) DEFAULT NULL,
  clientId varchar(255) DEFAULT NULL,
  scope varchar(255) DEFAULT NULL,
  status varchar(10) DEFAULT NULL,
  expiresAt timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  lastModifiedAt timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE oauth_client_details (
  client_id varchar(255) NOT NULL,
  resource_ids varchar(255) DEFAULT NULL,
  client_secret varchar(255) DEFAULT NULL,
  scope varchar(255) DEFAULT NULL,
  authorized_grant_types varchar(255) DEFAULT NULL,
  web_server_redirect_uri varchar(255) DEFAULT NULL,
  authorities varchar(255) DEFAULT NULL,
  access_token_validity int(11) DEFAULT NULL,
  refresh_token_validity int(11) DEFAULT NULL,
  additional_information varchar(4096) DEFAULT NULL,
  autoapprove varchar(255) DEFAULT NULL,
  PRIMARY KEY (client_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE oauth_client_token (
  token_id varchar(255) DEFAULT NULL,
  token blob,
  authentication_id varchar(255) NOT NULL,
  user_name varchar(255) DEFAULT NULL,
  client_id varchar(255) DEFAULT NULL,
  PRIMARY KEY (authentication_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE oauth_code (
  code varchar(255) DEFAULT NULL,
  authentication blob
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE oauth_refresh_token (
  token_id varchar(255) DEFAULT NULL,
  token blob,
  authentication blob
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `blacklisted_token` (
  id bigint(20) NOT NULL AUTO_INCREMENT,
  token_hash varchar(255) NOT NULL,
  refresh_hash varchar(255),
  created_by varchar(45) DEFAULT NULL,
  created_date datetime(3) DEFAULT NOW(3),
  last_modified_by varchar(45) DEFAULT NULL,
  last_modified_date datetime(3) DEFAULT NOW(3),
  PRIMARY KEY (`id`),
  UNIQUE KEY `blacklisted_token_token_hash_unique` (`token_hash`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

