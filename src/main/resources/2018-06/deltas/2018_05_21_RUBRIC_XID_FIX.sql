--liquibase formatted sql

--changeset konstantin_mosounov:1 
update oauth_client_details set access_token_validity = 432000 where client_id = 'EnablingServices';

--changeset konstantin_mosounov:2 context:local
update oauth_client_details set additional_information = '{"xid":"urn:com.mheducation.openlearning:lms.rubric.deliver:local.us-east-1"}' where client_id = 'ProductRubric';

--changeset konstantin_mosounov:3 context:dev
update oauth_client_details set additional_information = '{"xid":"urn:com.mheducation.openlearning:lms.rubric.deliver:dev.us-east-1"}' where client_id = 'ProductRubric';

--changeset konstantin_mosounov:4 context:qastg
update oauth_client_details set additional_information = '{"xid":"urn:com.mheducation.openlearning:lms.rubric.deliver:qastg.us-east-1"}' where client_id = 'ProductRubric';

--changeset konstantin_mosounov:5 context:qalv
update oauth_client_details set additional_information = '{"xid":"urn:com.mheducation.openlearning:lms.rubric.deliver:qalv.us-east-1"}' where client_id = 'ProductRubric';

--changeset konstantin_mosounov:6 context:demo
update oauth_client_details set additional_information = '{"xid":"urn:com.mheducation.openlearning:lms.rubric.deliver:demo.us-east-1"}' where client_id = 'ProductRubric';

--changeset konstantin_mosounov:7 context:pqa
update oauth_client_details set additional_information = '{"xid":"urn:com.mheducation.openlearning:lms.rubric.deliver:pqa.us-east-1"}' where client_id = 'ProductRubric';

--changeset konstantin_mosounov:8 context:prod
update oauth_client_details set additional_information = '{"xid":"urn:com.mheducation.openlearning:lms.rubric.deliver:prod.us-east-1"}' where client_id = 'ProductRubric';
