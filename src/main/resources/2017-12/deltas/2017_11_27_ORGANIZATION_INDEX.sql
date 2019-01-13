--liquibase formatted sql

--changeset pawan_pangty:1
CREATE INDEX affiliation_organization_xid_idx ON affiliation(organization_xid);