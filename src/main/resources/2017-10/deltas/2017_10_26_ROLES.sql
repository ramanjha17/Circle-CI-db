--liquibase formatted sql

--changeset pawan_pangty:1
ALTER TABLE role DROP COLUMN guid;    

--changeset pawan_pangty:2
update role set name = 'learner' where name='STUDENT';
update role set name = 'instructor' where name='INSTRUCTOR';

--changeset pawan_pangty:3
insert into role (name, created_by) values('assess_author_admin','system');
insert into role (name, created_by) values('assess_discipline_admin','system');
insert into role (name, created_by) values('assess_vendor','system');
insert into role (name, created_by) values('assess_author','system');
insert into role (name, created_by) values('mhe_admin','system');

--changeset pawan_pangty:4 context:qalv
insert into role (name, created_by) values('learner','system');
insert into role (name, created_by) values('instructor','system');


--changeset pawan_pangty:5
insert into role (name, created_by) values('organizational_admin','system');
