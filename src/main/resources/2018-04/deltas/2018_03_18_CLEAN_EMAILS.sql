--liquibase formatted sql

--changeset konstantin_mosounov:1 endDelimiter:#
#
DROP PROCEDURE IF EXISTS  `cleanDuplicateEmails`#
CREATE PROCEDURE `cleanDuplicateEmails`()
BEGIN

  -- clean up empty emails
  delete from email where address is null;

  -- update email.address to account.user_name where user_name matches email regexp and email.address appears more than ones
  update email
  inner join account a on a.person_id = email.person_id
  inner join (
	    select
	   	  e.address
	    from email e
	    group by e.address
	    having count(e.person_id) > 1
      ) tmp on tmp.address = email.address
  set email.address = a.user_name
  where a.user_name != email.address and a.user_name REGEXP '^[a-zA-Z0-9][a-zA-Z0-9._-]*@[a-zA-Z0-9][a-zA-Z0-9._-]*\\.[a-zA-Z]{2,4}$';

  -- second run delete duplicate email addresses favoring user_name = email
  delete e 
  from email e
  inner join (
    select a.person_id, dup.address 
    from account a 
      inner join (
          select
             e.address
          from email e
            inner join account a on a.person_id = e.person_id
          group by e.address
          having count(e.person_id) > 1) dup on dup.address = a.user_name
  ) tmp on tmp.address = e.address
  where e.person_id != tmp.person_id;

  -- third run delete duplicate email addresses favoring earlier person_id
  delete e 
  from email e
    inner join (
    select e.person_id, e.address from email e
      inner join (
          select
             e.address,
             min(e.person_id) as   person
          from email e
          group by e.address
          having count(e.person_id) > 1) dup
      on e.address = dup.address and e.person_id != dup.person) tmp
    on e.person_id = tmp.person_id and e.address = tmp.address;

END#
