--liquibase formatted sql

--changeset konstantin_mosounov:1 endDelimiter:#
#
DROP PROCEDURE IF EXISTS  `ced_migrateAffiliations`#
CREATE PROCEDURE `ced_migrateAffiliations`(IN v_user_id bigint(20), IN v_person_id bigint(20))
BEGIN

  DECLARE v_organization_xid varchar(255);
  DECLARE v_role_id bigint(20);
  DECLARE affiliations_done BOOLEAN DEFAULT FALSE;

  DECLARE affiliations CURSOR FOR
    select
      connected_db.stg_affiliation.organization_xid,
      (select jidm.role.id from jidm.role where jidm.role.name=role_name)
    from connected_db.stg_affiliation
    where connected_db.stg_affiliation.connected_user_id = v_user_id;

  DECLARE CONTINUE HANDLER FOR NOT FOUND SET affiliations_done = TRUE;

  OPEN affiliations;

  affiliations_loop: LOOP
    FETCH affiliations INTO
    v_organization_xid,
    v_role_id;

    IF affiliations_done THEN LEAVE affiliations_loop; END IF;

    IF (length(v_organization_xid) > 0 and length(v_role_id) > 0) THEN
      -- update if organization_xid exists
      IF (not exists (
        select true
        from jidm.affiliation
        where jidm.affiliation.person_id = v_person_id
          and jidm.affiliation.organization_xid = v_organization_xid
          and jidm.affiliation.role_id = v_role_id)) THEN
        -- insert affiliation
        insert into jidm.affiliation(person_id, organization_xid, role_id, start_date) values (v_person_id, v_organization_xid, v_role_id, (select now()));
        -- affiliation created event
        insert into jidm.migrated_person(person_id, organization_xid, event) values (v_person_id, v_organization_xid, 'AffiliationCreatedEvent');
      END IF;
    END IF;
    SET affiliations_done:=false;
  END LOOP;
  CLOSE affiliations;
END#

DROP PROCEDURE IF EXISTS `ced_migrateExternalIdentifiers`#
CREATE PROCEDURE `ced_migrateExternalIdentifiers`(IN v_user_id bigint(20), IN v_person_id bigint(20))
BEGIN

  DECLARE v_lid varchar(255);
  DECLARE v_source bigint(20);
  DECLARE v_xid varchar(255);
  DECLARE v_created_date datetime(3);

  DECLARE v_source_name varchar(80);
  DECLARE v_source_xid varchar(255);
  DECLARE v_source_id bigint(20);

  DECLARE ei_done BOOLEAN DEFAULT FALSE;

  DECLARE sources CURSOR FOR
    select
      connected_db.stg_external_identifier.lid,
      connected_db.stg_external_identifier.source_id,
      connected_db.stg_external_identifier.xid,
      connected_db.stg_external_identifier.created_date
    from connected_db.stg_external_identifier
    where connected_db.stg_external_identifier.connected_user_id = v_user_id
    order by connected_db.stg_external_identifier.lid;

  DECLARE CONTINUE HANDLER FOR NOT FOUND SET ei_done = TRUE;

  OPEN sources;

  ei_loop: LOOP
    FETCH sources INTO
    v_lid,
    v_source,
    v_xid,
    v_created_date;

    IF ei_done THEN LEAVE ei_loop; END IF;

    select name, xid into v_source_name, v_source_xid from connected_db.stg_external_identity_source where id = v_source;

    -- figure out v_source_id
    if (length(v_source_xid) > 0) then
      -- if there is source xid
      if (not exists (select true from jidm.external_identity_source where name = v_source_name and xid = v_source_xid)) then
        -- if it does not exist
        insert into jidm.external_identity_source(name, xid) values (v_source_name, v_source_xid);
        set v_source_id := LAST_INSERT_ID();
      else
        -- if it already exists
        select id into v_source_id from jidm.external_identity_source where name = v_source_name and xid = v_source_xid;
      end if;
    else
      -- if there is no source xid
      if (not exists (select true from jidm.external_identity_source where name = v_source_name and xid is null)) then
        -- if it does not exist
        insert into jidm.external_identity_source(name) values (v_source_name);
        set v_source_id := LAST_INSERT_ID();
      else
         -- if it already exists
        select id into v_source_id from jidm.external_identity_source where name = v_source_name and xid is null;
      end if;
    end if;

    if (not exists (select true from jidm.external_identifier where person_id = v_person_id and source_id = v_source_id and lid = v_lid)) then
      -- insert external identifier if it does not exist
      insert into jidm.external_identifier(person_id, source_id, lid, created_date) values (v_person_id, v_source_id, v_lid, v_created_date);
    end if;
    SET ei_done:=false;
  END LOOP;
  CLOSE sources;

END#

DROP PROCEDURE IF EXISTS `ced_migrateUsers`#
CREATE PROCEDURE `ced_migrateUsers`(IN env varchar(20))
BEGIN

  -- usage: call ced_migrateUsers('env')
  -- where env: 'local','dev','qastg','qalv','demo','pqa','prod'

  declare v_user_id bigint(20);
  declare v_created_by varchar(255);
  declare v_created_date datetime(3);
  declare v_last_modified_date datetime(3);

  declare v_guid varchar(255);
  declare v_xid varchar(500);
  declare v_xid_prefix varchar(255);
  declare v_connected_source_id bigint(20);

  declare v_person_id bigint(20);
  declare v_person_id2 bigint(20);

  declare v_date_of_birth date;
  declare v_display_name varchar(255);
  declare v_economically_disadvantaged bit(1);
  declare v_code varchar(255);
  declare v_name varchar(255);
  declare v_gender varchar(20);
  declare v_locale varchar(40);
  declare v_family_name varchar(255);
  declare v_given_name varchar(255);
  declare v_honorific_prefix varchar(255);
  declare v_honorific_suffix varchar(255);
  declare v_middle_name varchar(255);
  declare v_nick_name varchar(255);
  declare v_opt_marketing bit(1);
  declare v_preferred_language varchar(40);
  declare v_profile_picture_url varchar(255);
  declare v_profile_url varchar(255);
  declare v_timezone varchar(80);
  declare v_grade_level_code varchar(15);
  declare v_creation_source varchar(15);

  declare v_email varchar(255);
  declare v_primary_email bit(1);
  declare v_phone varchar(255);
  declare v_address_country varchar(255);
  declare v_address_region varchar(255);
  declare v_address_postal_code varchar(255);
  declare v_address_locality varchar(255);
  declare v_address_street_address varchar(255);

  declare v_activation_code varchar(255);
  declare v_activation_code_end_date datetime(3);
  declare v_activation_date datetime(3);
  declare v_credentials_expired bit(1);
  declare v_active bit(1);
  declare v_auth_ldap bit(1);
  declare v_auth_rms bit(1);
  declare v_email_verified bit(1);
  declare v_last_login_date datetime(3);
  declare v_last_password_change_date datetime(3);
  declare v_locked bit(1);
  declare v_password varchar(255);
  declare v_password_must_change bit(1);
  declare v_reset_code varchar(255);
  declare v_reset_code_end_date datetime(3);
  declare v_reset_date datetime(3);
  declare v_status varchar(40);
  declare v_simplified_login bit(1);
  declare v_terms_accept_date datetime(3);
  declare v_terms_accepted bit(1);
  declare v_user_name varchar(255);
  declare v_user_type varchar(80);
  declare v_simplified_password varchar(60);

  DECLARE done BOOLEAN DEFAULT FALSE;
  DECLARE skip BOOLEAN DEFAULT FALSE;

  DECLARE last_insert_id bigint(20);

  DECLARE connected_users CURSOR FOR
    select
      p.connected_user_id,
      p.created_date,
      p.last_modified_date,
      p.date_of_birth,
      p.display_name,
      p.economically_disadvantaged,
      p.code,
      p.name,
      (CASE WHEN p.gender='M' THEN 'MALE' WHEN p.gender = 'F' THEN 'FEMALE' ELSE 'OTHER' END) as gender,
      p.locale,
      p.family_name,
      p.given_name,
      p.honorific_prefix,
      p.honorific_suffix,
      p.middle_name,
      p.nick_name,
      p.opt_marketing,
      p.preferred_language,
      p.profile_picture_url,
      p.profile_url,
      (case when length(p.timezone) > 0 then p.timezone else null end) as timezone,
      p.grade_level_code,
      (case when length(p.creation_source) > 0 then p.creation_source else null end) as creation_source,
      a.activation_code,
      a.activation_code_end_date,
      a.activation_date,
      a.credentials_expired,
      a.active,
      a.auth_ldap,
      a.auth_rms,
      a.email_verified,
      (case when a.last_login_date = '0000-00-00 00:00:00.000' then NULL else a.last_login_date end) as last_login_date,
      (case when a.last_password_change_date = '0000-00-00 00:00:00.000' then NULL else a.last_password_change_date end) as last_password_change_date,
      a.locked,
      a.password,
      a.password_must_change,
      a.reset_code,
      a.reset_code_end_date,
      a.reset_date,
      a.status,
      a.simplified_login,
      a.terms_accept_date,
      a.terms_accepted,
      a.user_name,
      a.user_type,
      a.simplified_password,
      (case when length(p.country_code) > 0  then p.country_code else null end) as country_code,
      (case when length(p.state_code) > 0 then p.state_code else null end) as state_code,
      (case when length(p.email_address) > 0 then p.email_address else null end) as email

    from
      connected_db.stg_person p
      inner join connected_db.stg_account a on a.connected_user_id = p.connected_user_id
    where p.last_exported_date is null
    ;

  DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;

  IF env NOT IN ('local','dev','qastg','qalv','demo','pqa','prod') THEN
    SIGNAL SQLSTATE '45000'
    SET MESSAGE_TEXT = 'Invalid environment input parameter', MYSQL_ERRNO = 1001;
  END IF;

  set v_created_by := CONCAT('connected');
  set v_xid_prefix := CONCAT('urn:com.mheducation.openlearning:enterprise.identity:', env, '.us-east-1:person:');


  -- set connected external identity source id
  if (not exists (select true from jidm.external_identity_source where jidm.external_identity_source.name = 'CONNECTED' and jidm.external_identity_source.xid is null)) then
    insert into jidm.external_identity_source(name) values ('CONNECTED');
    set v_connected_source_id := LAST_INSERT_ID();
  else
    select id into v_connected_source_id from jidm.external_identity_source where jidm.external_identity_source.name = 'CONNECTED' and jidm.external_identity_source.xid is null;
  end if;

  OPEN connected_users;

  read_loop: LOOP
    FETCH connected_users INTO
      v_user_id,
      v_created_date,
      v_last_modified_date,
      v_date_of_birth,
      v_display_name,
      v_economically_disadvantaged,
      v_code,
      v_name,
      v_gender,
      v_locale,
      v_family_name,
      v_given_name,
      v_honorific_prefix,
      v_honorific_suffix,
      v_middle_name,
      v_nick_name,
      v_opt_marketing,
      v_preferred_language,
      v_profile_picture_url,
      v_profile_url,
      v_timezone,
      v_grade_level_code,
      v_creation_source,
      v_activation_code,
      v_activation_code_end_date,
      v_activation_date,
      v_credentials_expired,
      v_active,
      v_auth_ldap,
      v_auth_rms,
      v_email_verified,
      v_last_login_date,
      v_last_password_change_date,
      v_locked,
      v_password,
      v_password_must_change,
      v_reset_code,
      v_reset_code_end_date,
      v_reset_date,
      v_status,
      v_simplified_login,
      v_terms_accept_date,
      v_terms_accepted,
      v_user_name,
      v_user_type,
      v_simplified_password,
      v_address_country,
      v_address_region,
      v_email
      ;

    IF done THEN LEAVE read_loop; END IF;

    SET skip:=FALSE;

    SET v_person_id := 0;
    SET v_person_id2 := 0;

    -- check if we have such a user by connected user id
    select jidm.external_identifier.person_id into v_person_id from jidm.external_identifier where jidm.external_identifier.source_id = v_connected_source_id and jidm.external_identifier.lid = v_user_id;

    -- check for existing user_name
    select jidm.account.person_id into v_person_id2 from jidm.account where jidm.account.user_name = v_user_name;

    if (v_person_id > 0 OR v_person_id2 > 0) THEN
      -- we found existing person
      if (v_person_id = 0) then 
        set v_person_id := v_person_id2;
      end if;

      select guid, xid into v_guid, v_xid from jidm.person where jidm.person.id = v_person_id;

      -- make sure user_name didn't change
      if (not exists (select true from jidm.account where jidm.account.person_id = v_person_id and jidm.account.user_name = v_user_name)) then
        -- we have a problem, username mismatch
        SET skip:=TRUE;
      end if;

      if (NOT skip) then
      -- update person
      update jidm.person set
        jidm.person.last_modified_by = v_created_by,
        jidm.person.date_of_birth = COALESCE(v_date_of_birth,jidm.person.date_of_birth),
        jidm.person.display_name = COALESCE(v_display_name,jidm.person.display_name),
        jidm.person.economically_disadvantaged = COALESCE(v_economically_disadvantaged,jidm.person.economically_disadvantaged),
        jidm.person.code = COALESCE(v_code, jidm.person.code),
        jidm.person.name = COALESCE(v_name, jidm.person.name),
        jidm.person.gender = COALESCE(v_gender, jidm.person.gender),
        jidm.person.locale = COALESCE(v_locale, jidm.person.locale),
        jidm.person.family_name = COALESCE(v_family_name, jidm.person.family_name),
        jidm.person.honorific_prefix = COALESCE(v_honorific_prefix, jidm.person.honorific_prefix),
        jidm.person.honorific_suffix = COALESCE(v_honorific_suffix, jidm.person.honorific_suffix),
        jidm.person.middle_name = COALESCE(v_middle_name, jidm.person.middle_name),
        jidm.person.nick_name = COALESCE(v_nick_name, jidm.person.nick_name),
        jidm.person.opt_marketing = COALESCE(v_opt_marketing, jidm.person.opt_marketing),
        jidm.person.preferred_language = COALESCE(v_preferred_language, jidm.person.preferred_language),
        jidm.person.profile_picture_url = COALESCE(v_profile_picture_url, jidm.person.profile_picture_url),
        jidm.person.profile_url = COALESCE(v_profile_url, jidm.person.profile_url),
        jidm.person.timezone = COALESCE(v_timezone, jidm.person.timezone),
        jidm.person.grade_level_code = COALESCE(v_grade_level_code, jidm.person.grade_level_code),
        jidm.person.creation_source = COALESCE(v_creation_source, jidm.person.creation_source)
      where
        jidm.person.id = v_person_id;

      update jidm.account set
        jidm.account.last_modified_by = v_created_by,
        jidm.account.activation_code = COALESCE(v_activation_code,jidm.account.activation_code),
        jidm.account.activation_code_end_date = COALESCE(v_activation_code_end_date,jidm.account.activation_code_end_date),
        jidm.account.activation_date = COALESCE(v_activation_date,jidm.account.activation_date),
        jidm.account.credentials_expired = COALESCE(v_credentials_expired,jidm.account.credentials_expired),
        jidm.account.active = COALESCE(v_active,jidm.account.active),
        jidm.account.auth_ldap = COALESCE(v_auth_ldap,jidm.account.auth_ldap),
        jidm.account.auth_rms = COALESCE(v_auth_rms,jidm.account.auth_rms),
        jidm.account.email_verified = COALESCE(v_email_verified,jidm.account.email_verified),
        jidm.account.last_login_date = COALESCE(v_last_login_date,jidm.account.last_login_date),
        jidm.account.last_password_change_date = COALESCE(v_last_password_change_date,jidm.account.last_password_change_date),
        jidm.account.locked = COALESCE(v_locked,jidm.account.locked),
        jidm.account.password = COALESCE(v_password,jidm.account.password),
        jidm.account.password_must_change = COALESCE(v_password_must_change,jidm.account.password_must_change),
        jidm.account.reset_code = COALESCE(v_reset_code,jidm.account.reset_code),
        jidm.account.reset_code_end_date = COALESCE(v_reset_code_end_date,jidm.account.reset_code_end_date),
        jidm.account.reset_date = COALESCE(v_reset_date,jidm.account.reset_date),
        jidm.account.status = COALESCE(v_status,jidm.account.status),
        jidm.account.simplified_login = COALESCE(v_simplified_login,jidm.account.simplified_login),
        jidm.account.terms_accept_date = COALESCE(v_terms_accept_date,jidm.account.terms_accept_date),
        jidm.account.terms_accepted = COALESCE(v_terms_accepted,jidm.account.terms_accepted),
        jidm.account.user_type = COALESCE(v_user_type,jidm.account.user_type),
        jidm.account.user_name = COALESCE(v_user_name,jidm.account.user_name),
        jidm.account.simplified_password = COALESCE(v_simplified_password,jidm.account.simplified_password)
      where
        jidm.account.person_id = v_person_id;

      -- log event
      insert into jidm.migrated_person(person_id, event) values (v_person_id, 'PersonUpdatedEvent');

      -- update email
      if (length(v_email) > 0 and (not exists (select true from jidm.email where jidm.email.person_id = v_person_id and jidm.email.address = v_email))) then
        select coalesce((select false from jidm.email where jidm.email.person_id = v_person_id and jidm.email.primary_email=1),true) into v_primary_email;
        insert into jidm.email(person_id, address, primary_email, verified) values (v_person_id, v_email, v_primary_email, v_email_verified);
      end if;

      -- update address
      if (
        length(v_address_region) > 0 or length(v_address_country) > 0) 
        and (
          not exists (
            select true 
            from jidm.address 
            where jidm.address.person_id = v_person_id 
              and (jidm.address.state_code = v_address_region or jidm.address.country_code = v_address_country))) then
        insert into jidm.address(person_id, state_code, country_code) values (v_person_id, v_address_region, v_address_country);
      end if;

      -- update affiliation
      call ced_migrateAffiliations(v_user_id, v_person_id);

      -- update sources
      call ced_migrateExternalIdentifiers(v_user_id, v_person_id);

      -- add CONNECTED user_Id
      if (not exists (select true from jidm.external_identifier where person_id = v_person_id and source_id = v_connected_source_id and lid = v_user_id)) then
        -- insert external identifier if it does not exist
        insert into jidm.external_identifier(person_id, source_id, lid) values (v_person_id, v_connected_source_id, v_user_id);
      end if;

      end if; -- skip
    else

      -- generate guid
      set v_guid := uuid();
      set v_xid := concat(v_xid_prefix, v_guid);
      -- insert
      insert into jidm.person (created_by, last_modified_by, guid, xid, date_of_birth, display_name, economically_disadvantaged, code, name, gender, locale, family_name, given_name, honorific_prefix, honorific_suffix, middle_name, nick_name, opt_marketing, preferred_language, profile_picture_url, profile_url, timezone, grade_level_code, creation_source)
        values (v_created_by, v_created_by, v_guid, v_xid, v_date_of_birth, v_display_name, v_economically_disadvantaged, v_code, v_name, v_gender, v_locale, v_family_name, v_given_name, v_honorific_prefix, v_honorific_suffix, v_middle_name, v_nick_name, v_opt_marketing, v_preferred_language, v_profile_picture_url, v_profile_url, v_timezone, v_grade_level_code, v_creation_source);

      set v_person_id := LAST_INSERT_ID();

      insert into jidm.account (created_by, last_modified_by, person_id, activation_code, activation_code_end_date, activation_date, credentials_expired, active, auth_ldap, auth_rms, email_verified, last_login_date, last_password_change_date, locked, password, password_must_change, reset_code, reset_code_end_date, reset_date, status, simplified_login, terms_accept_date, terms_accepted, user_name, user_type, simplified_password)
        values (v_created_by, v_created_by, v_person_id, v_activation_code, v_activation_code_end_date, v_activation_date, v_credentials_expired, v_active, v_auth_ldap, v_auth_rms, v_email_verified, v_last_login_date, v_last_password_change_date, v_locked, v_password, v_password_must_change, v_reset_code, v_reset_code_end_date, v_reset_date, v_status, v_simplified_login, v_terms_accept_date, v_terms_accepted, v_user_name, v_user_type, v_simplified_password);

      -- log event
      insert into jidm.migrated_person(person_id, event) values (v_person_id, 'PersonCreatedEvent');

      if (length(v_email) > 0) then
        insert into jidm.email(person_id, address, primary_email, verified) values (v_person_id, v_email, 1, v_email_verified);
      end if;

      if (length(v_address_region) > 0 or length(v_address_country) > 0) then
      insert into jidm.address(person_id, state_code, country_code) 
        values (v_person_id, v_address_region, v_address_country);
      end if;

      -- update affiliation
      call ced_migrateAffiliations(v_user_id, v_person_id);

      -- update sources
      call ced_migrateExternalIdentifiers(v_user_id, v_person_id);

      insert into jidm.external_identifier(person_id, source_id, lid) values (v_person_id, v_connected_source_id, v_user_id);

    end if;

    if (NOT skip) then
        -- update guid and xid
        update connected_db.stg_person set guid = v_guid, xid = v_xid, last_exported_date = now(3), migration_comment='success' where connected_db.stg_person.`connected_user_id` = v_user_id;
    else
        update connected_db.stg_person set guid = v_guid, xid = v_xid, migration_comment='failure' where connected_db.stg_person.`connected_user_id` = v_user_id;
    end if;

    SET done:=FALSE;
  END LOOP;
  CLOSE connected_users;

END#
