--liquibase formatted sql

--changeset konstantin_mosounov:1
alter table person add column `xid` varchar(1000) after guid;

--changeset konstantin_mosounov:2 context:local
update person set xid = concat('urn:com.mheducation.openlearning:enterprise.identity:local.global:person:',guid);

--changeset konstantin_mosounov:3 context:dev
update person set xid = concat('urn:com.mheducation.openlearning:enterprise.identity:dev.global:person:',guid);

--changeset konstantin_mosounov:4 context:qastg
update person set xid = concat('urn:com.mheducation.openlearning:enterprise.identity:qastg.global:person:',guid);

--changeset konstantin_mosounov:5 context:qalv
update person set xid = concat('urn:com.mheducation.openlearning:enterprise.identity:qalv.global:person:',guid);

--changeset konstantin_mosounov:6 context:pqa
update person set xid = concat('urn:com.mheducation.openlearning:enterprise.identity:pqa.global:person:',guid);

--changeset konstantin_mosounov:7 context:demo
update person set xid = concat('urn:com.mheducation.openlearning:enterprise.identity:demo.global:person:',guid);

--changeset konstantin_mosounov:8 context:prod
update person set xid = concat('urn:com.mheducation.openlearning:enterprise.identity:prod.global:person:',guid);
