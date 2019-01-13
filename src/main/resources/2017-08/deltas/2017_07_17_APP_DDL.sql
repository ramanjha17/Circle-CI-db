--liquibase formatted sql

--changeset pawan_pangty:1
CREATE TABLE person(
  id bigint(20) NOT NULL AUTO_INCREMENT,
  created_by varchar(45) DEFAULT NULL,
  created_date datetime(3) DEFAULT NOW(3),
  last_modified_by varchar(45) DEFAULT NULL,
  last_modified_date datetime(3) DEFAULT NOW(3),
  guid varchar(40) DEFAULT NULL,
  date_of_birth date DEFAULT NULL,
  display_name varchar(255) DEFAULT NULL,
  economically_disadvantaged bit(1) DEFAULT 0,
  code varchar(255) DEFAULT NULL,
  name varchar(255) DEFAULT NULL,
  gender varchar(20) DEFAULT NULL,
  locale varchar(40) DEFAULT NULL,
  family_name varchar(255) DEFAULT NULL,
  given_name varchar(255) DEFAULT NULL,
  honorific_prefix varchar(255) DEFAULT NULL,
  honorific_suffix varchar(255) DEFAULT NULL,
  middle_name varchar(255) DEFAULT NULL,
  nick_name varchar(255) DEFAULT NULL,
  opt_marketing bit(1) NOT NULL DEFAULT 0,
  preferred_language varchar(40) DEFAULT NULL,
  profile_picture_url varchar(255) DEFAULT NULL,
  profile_url varchar(255) DEFAULT NULL,
  timezone varchar(80) DEFAULT NULL,
  PRIMARY KEY(id),
  UNIQUE INDEX person_guid_unique(guid)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE account(
  id bigint(20) NOT NULL AUTO_INCREMENT,
  created_by varchar(45) DEFAULT NULL,
  created_date datetime(3) DEFAULT NOW(3),
  last_modified_by varchar(45) DEFAULT NULL,
  last_modified_date datetime(3) DEFAULT NOW(3),
  activation_code varchar(255) DEFAULT NULL,
  activation_code_end_date datetime(3) DEFAULT NULL,
  activation_date datetime(3) DEFAULT NULL,
  credentials_expired bit(1) NOT NULL DEFAULT 0,
  active bit(1) NOT NULL DEFAULT 0,
  auth_ldap bit(1) NOT NULL DEFAULT 0,
  auth_rms bit(1) NOT NULL DEFAULT 0,
  email_verified bit(1) NOT NULL DEFAULT 0,
  last_login_date datetime(3) DEFAULT NULL,
  last_password_change_date datetime(3) DEFAULT NULL,
  locked bit(1) NOT NULL DEFAULT 0,
  password varchar(255) DEFAULT NULL,
  password_must_change bit(1) NOT NULL DEFAULT 0,
  reset_code varchar(255) DEFAULT NULL,
  reset_code_end_date datetime(3) DEFAULT NULL,
  reset_date datetime(3) DEFAULT NULL,
  status varchar(40) DEFAULT NULL,
  simplified_login bit(1) NOT NULL DEFAULT 0,
  terms_accept_date datetime(3) DEFAULT NULL,
  terms_accepted bit(1) NOT NULL DEFAULT 0,
  user_name varchar(255) NOT NULL,
  user_type varchar(80) DEFAULT NULL,
  person_id bigint(20) DEFAULT NULL,
  PRIMARY KEY(id),
  UNIQUE KEY account_user_name_unique(user_name),
  KEY account_person_id_idx(person_id),
  CONSTRAINT account_person_id_fk FOREIGN KEY(person_id) REFERENCES person(id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE address(
  person_id bigint(20) NOT NULL,
  city varchar(255) DEFAULT NULL,
  country_code varchar(255) DEFAULT NULL,
  county varchar(255) DEFAULT NULL,
  end_date datetime(3) DEFAULT NULL,
  lattitude varchar(255) DEFAULT NULL,
  longitude varchar(255) DEFAULT NULL,
  postal_code varchar(255) DEFAULT NULL,
  start_date datetime(3) DEFAULT NULL,
  state_code varchar(255) DEFAULT NULL,
  street_address varchar(255) DEFAULT NULL,
  type varchar(40) DEFAULT NULL,
  KEY address_person_id_idx(person_id),
  CONSTRAINT address_person_id_fk FOREIGN KEY(person_id) REFERENCES person(id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE client (
  person_id bigint(20) NOT NULL,
  client_id varchar(255) DEFAULT NULL,
  created_date datetime(3) DEFAULT NOW(3),
  external_id varchar(255) DEFAULT NULL,
  KEY client_person_id_idx (person_id),
  KEY client_client_id_external_id_idx (client_id, external_id),
  UNIQUE KEY client_person_id_client_id_external_id_unique (`person_id`,`client_id`,`external_id`),
  CONSTRAINT client_person_id_fc FOREIGN KEY (person_id) REFERENCES person (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE email(
  person_id bigint(20) NOT NULL,
  address varchar(255) DEFAULT NULL,
  primary_email bit(1) NOT NULL DEFAULT 0,
  type varchar(40) DEFAULT NULL,
  verification_code varchar(255) DEFAULT NULL,
  verification_code_end_date datetime(3) DEFAULT NULL,
  verified bit(1) NOT NULL DEFAULT 0,
  verified_date datetime(3) DEFAULT NULL,
  KEY(person_id, primary_email),
  CONSTRAINT email_person_id_fk FOREIGN KEY(person_id) REFERENCES person(id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE external_identity_source(
  id bigint(20) NOT NULL AUTO_INCREMENT,
  created_by varchar(45) DEFAULT NULL,
  created_date datetime(3) DEFAULT NOW(3),
  last_modified_by varchar(45) DEFAULT NULL,
  last_modified_date datetime(3) DEFAULT NOW(3),
  name varchar(80) DEFAULT NULL,
  xid varchar(255) DEFAULT NULL,
  PRIMARY KEY(id),
  UNIQUE KEY external_identity_source_name_xid_unique (name, xid)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE external_identifier(
  person_id bigint(20) NOT NULL,
  lid varchar(255) DEFAULT NULL,
  source_id bigint(20) DEFAULT NULL,
  xid varchar(255) DEFAULT NULL,
  KEY external_identifier_person_id_idx(person_id),
  KEY external_identifier_source_id_lid_idx(source_id, lid),
  KEY external_identifier_source_id_xid_idx(source_id, xid),
  UNIQUE KEY external_identifier_person_id_source_id_lid_xid_unique (`person_id`,`source_id`,`lid`, `xid`),
  CONSTRAINT external_identifier_source_id_fk FOREIGN KEY(source_id) REFERENCES external_identity_source(id),
  CONSTRAINT external_identifier_person_id_fk FOREIGN KEY(person_id) REFERENCES person(id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


CREATE TABLE phone(
  person_id bigint(20) NOT NULL,
  number varchar(255) DEFAULT NULL,
  primary_phone bit(1) NOT NULL DEFAULT 0,
  verified bit(1) NOT NULL DEFAULT 0,
  type varchar(40) DEFAULT NULL,
  KEY (person_id, primary_phone),
  CONSTRAINT phone_person_id_ifk FOREIGN KEY(person_id) REFERENCES person(id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE security_answer(
  person_id bigint(20) NOT NULL,
  answer varchar(255) DEFAULT NULL,
  question varchar(255) DEFAULT NULL,
  KEY security_answer_person_id_idx(person_id),
  CONSTRAINT security_answer_person_id_fk FOREIGN KEY(person_id) REFERENCES person(id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE role(
  id bigint(20) NOT NULL AUTO_INCREMENT,
  name varchar(255) DEFAULT NULL,
  PRIMARY KEY(id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE affiliation(
  person_id bigint(20) NOT NULL,
  end_date datetime DEFAULT NULL,
  organization_id varchar(40) DEFAULT NULL,
  organization_xid varchar(255) DEFAULT NULL,
  role_id bigint(20) DEFAULT NULL,
  start_date datetime DEFAULT NULL,
  KEY affiliation_role_id_idx(role_id),
  KEY affiliation_person_id_idx(person_id),
  CONSTRAINT affiliation_role_id_fk FOREIGN KEY(role_id) REFERENCES role(id),
  CONSTRAINT affiliation_person_id_fk FOREIGN KEY(person_id) REFERENCES person(id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
