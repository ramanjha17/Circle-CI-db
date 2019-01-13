--liquibase formatted sql

--changeset pawan_pangty:1 context:dev
update oauth_client_details set additional_information = '{"xid":"urn:com.mheducation.openlearning:lms:dev.us.connect2-dev.mheducation.com"}' where client_id = 'EngradeStageClient';
update oauth_client_details set additional_information = '{"xid":"urn:com.mheducation.rms:internal.integration.identity:dev.us"}' where client_id = 'RMSClient';
update oauth_client_details set additional_information = '{"xid":"urn:com.mheducation.unitas:internal.integration.identity:dev.us"}' where client_id = 'UNITAS';
update oauth_client_details set additional_information = '{"xid":"urn:com.mheducation.openlearning:enterprise.identity.org_client:dev.us"}' where client_id = 'OrgClient';
update oauth_client_details set additional_information = '{"xid":"urn:com.mheducation.openlearning:integration.external.roster:dev.us"}' where client_id = 'MHCampus';

--changeset pawan_pangty:2 context:qastg
update oauth_client_details set additional_information = '{"xid":"urn:com.mheducation.openlearning:lms:qastg.us.connect2-qastg.mheducation.com"}' where client_id = 'EngradeStageClient';
update oauth_client_details set additional_information = '{"xid":"urn:com.mheducation.rms:internal.integration.identity:qastg.us"}' where client_id = 'RMSClient';
update oauth_client_details set additional_information = '{"xid":"urn:com.mheducation.unitas:internal.integration.identity:qastg.us"}' where client_id = 'UNITAS';
update oauth_client_details set additional_information = '{"xid":"urn:com.mheducation.openlearning:enterprise.identity.org_client:qastg.us"}' where client_id = 'OrgClient';
update oauth_client_details set additional_information = '{"xid":"urn:com.mheducation.openlearning:integration.external.roster:qastg.us"}' where client_id = 'MHCampus';

--changeset pawan_pangty:3 context:dev
update oauth_client_details set additional_information = '{"xid":"urn:com.mheducation.openlearning:enterprise.identity.bulk_loader:dev.us"}' where client_id = 'dpgloader';

--changeset pawan_pangty:4 context:qastg
update oauth_client_details set additional_information = '{"xid":"urn:com.mheducation.openlearning:enterprise.identity.bulk_loader:qastg.us"}' where client_id = 'dpgloader';

--changeset pawan_pangty:5 context:qalv
update oauth_client_details set additional_information = '{"xid":"urn:com.mheducation.openlearning:enterprise.identity.bulk_loader:qalv.us"}' where client_id = 'dpgloader';
update oauth_client_details set additional_information = '{"xid":"urn:com.mheducation.openlearning:lms:qalv.us.connect2-qalv.mheducation.com"}' where client_id = 'EngradeStageClient';
update oauth_client_details set additional_information = '{"xid":"urn:com.mheducation.rms:internal.integration.identity:qalv.us"}' where client_id = 'RMSClient';
update oauth_client_details set additional_information = '{"xid":"urn:com.mheducation.unitas:internal.integration.identity:qalv.us"}' where client_id = 'UNITAS';
update oauth_client_details set additional_information = '{"xid":"urn:com.mheducation.openlearning:enterprise.identity.org_client:qalv.us"}' where client_id = 'OrgClient';
update oauth_client_details set additional_information = '{"xid":"urn:com.mheducation.openlearning:integration.external.roster:qalv.us"}' where client_id = 'MHCampus';

--changeset pawan_pangty:6 context:pqa
update oauth_client_details set additional_information = '{"xid":"urn:com.mheducation.openlearning:enterprise.identity.bulk_loader:pqa.us"}' where client_id = 'dpgloader';
update oauth_client_details set additional_information = '{"xid":"urn:com.mheducation.openlearning:lms:pqa.us.connect2-pqa.mheducation.com"}' where client_id = 'EngradeStageClient';
update oauth_client_details set additional_information = '{"xid":"urn:com.mheducation.rms:internal.integration.identity:pqa.us"}' where client_id = 'RMSClient';
update oauth_client_details set additional_information = '{"xid":"urn:com.mheducation.unitas:internal.integration.identity:pqa.us"}' where client_id = 'UNITAS';
update oauth_client_details set additional_information = '{"xid":"urn:com.mheducation.openlearning:enterprise.identity.org_client:pqa.us"}' where client_id = 'OrgClient';
update oauth_client_details set additional_information = '{"xid":"urn:com.mheducation.openlearning:integration.external.roster:pqa.us"}' where client_id = 'MHCampus';

--changeset pawan_pangty:7 context:demo
update oauth_client_details set additional_information = '{"xid":"urn:com.mheducation.openlearning:enterprise.identity.bulk_loader:demo.us"}' where client_id = 'dpgloader';
update oauth_client_details set additional_information = '{"xid":"urn:com.mheducation.openlearning:lms:demo.us.connect2-demo.mheducation.com"}' where client_id = 'EngradeStageClient';
update oauth_client_details set additional_information = '{"xid":"urn:com.mheducation.rms:internal.integration.identity:demo.us"}' where client_id = 'RMSClient';
update oauth_client_details set additional_information = '{"xid":"urn:com.mheducation.unitas:internal.integration.identity:demo.us"}' where client_id = 'UNITAS';
update oauth_client_details set additional_information = '{"xid":"urn:com.mheducation.openlearning:enterprise.identity.org_client:demo.us"}' where client_id = 'OrgClient';
update oauth_client_details set additional_information = '{"xid":"urn:com.mheducation.openlearning:integration.external.roster:demo.us"}' where client_id = 'MHCampus';

--changeset pawan_pangty:8 context:prod
update oauth_client_details set additional_information = '{"xid":"urn:com.mheducation.openlearning:enterprise.identity.bulk_loader:prod.us"}' where client_id = 'dpgloader';
update oauth_client_details set additional_information = '{"xid":"urn:com.mheducation.openlearning:lms:prod.us.connect2-prod.mheducation.com"}' where client_id = 'EngradeStageClient';
update oauth_client_details set additional_information = '{"xid":"urn:com.mheducation.rms:internal.integration.identity:prod.us"}' where client_id = 'RMSClient';
update oauth_client_details set additional_information = '{"xid":"urn:com.mheducation.unitas:internal.integration.identity:prod.us"}' where client_id = 'UNITAS';
update oauth_client_details set additional_information = '{"xid":"urn:com.mheducation.openlearning:enterprise.identity.org_client:prod.us"}' where client_id = 'OrgClient';
update oauth_client_details set additional_information = '{"xid":"urn:com.mheducation.openlearning:integration.external.roster:prod.us"}' where client_id = 'MHCampus';
update oauth_client_details set additional_information = '{"xid":"urn:com.mheducation.decoupler:internal.integration.identity:prod.us"}' where client_id = 'Decoupler';

--changeset pawan_pangty:9 context:dev
update oauth_client_details set additional_information = '{"xid":"urn:com.mheducation.decoupler:internal.integration.identity:dev.us"}' where client_id = 'Decoupler';

--changeset pawan_pangty:10 context:qastg
update oauth_client_details set additional_information = '{"xid":"urn:com.mheducation.decoupler:internal.integration.identity:qastg.us"}' where client_id = 'Decoupler';

--changeset pawan_pangty:11 context:qalv
update oauth_client_details set additional_information = '{"xid":"urn:com.mheducation.decoupler:internal.integration.identity:qalv.us"}' where client_id = 'Decoupler';

--changeset pawan_pangty:12 context:pqa
update oauth_client_details set additional_information = '{"xid":"urn:com.mheducation.decoupler:internal.integration.identity:pqa.us"}' where client_id = 'Decoupler';

--changeset pawan_pangty:13 context:demo
update oauth_client_details set additional_information = '{"xid":"urn:com.mheducation.decoupler:internal.integration.identity:demo.us"}' where client_id = 'Decoupler';

--changeset anand_joshi:1 context:local
update oauth_client_details set additional_information = '{"xid":"urn:com.mheducation.openlearning:content.widgets.deliver:dev.us"}' where client_id = 'MHEReader';
update oauth_client_details set additional_information = '{"xid":"urn:com.mheducation.openlearning:content.assessment.author:dev.us"}' where client_id = 'AssessAuth';
update oauth_client_details set additional_information = '{"xid":"urn:com.mheducation.openlearning:enterprise.entitlement:dev.us"}' where client_id = 'ENTClient';

--changeset anand_joshi:2 context:dev
update oauth_client_details set additional_information = '{"xid":"urn:com.mheducation.openlearning:content.widgets.deliver:dev.us"}' where client_id = 'MHEReader';
update oauth_client_details set additional_information = '{"xid":"urn:com.mheducation.openlearning:content.assessment.author:dev.us"}' where client_id = 'AssessAuth';
update oauth_client_details set additional_information = '{"xid":"urn:com.mheducation.openlearning:enterprise.entitlement:dev.us"}' where client_id = 'ENTClient';

--changeset anand_joshi:3 context:qastg
update oauth_client_details set additional_information = '{"xid":"urn:com.mheducation.openlearning:content.widgets.deliver:qastg.us"}' where client_id = 'MHEReader';
update oauth_client_details set additional_information = '{"xid":"urn:com.mheducation.openlearning:content.assessment.author:qastg.us"}' where client_id = 'AssessAuth';
update oauth_client_details set additional_information = '{"xid":"urn:com.mheducation.openlearning:enterprise.entitlement:qastg.us"}' where client_id = 'ENTClient';

--changeset anand_joshi:4 context:pqa
update oauth_client_details set additional_information = '{"xid":"urn:com.mheducation.openlearning:content.widgets.deliver:pqa.us"}' where client_id = 'MHEReader';
update oauth_client_details set additional_information = '{"xid":"urn:com.mheducation.openlearning:content.assessment.author:{pqa.us"}' where client_id = 'AssessAuth';
update oauth_client_details set additional_information = '{"xid":"urn:com.mheducation.openlearning:enterprise.entitlement:pqa.us"}' where client_id = 'ENTClient';

--changeset anand_joshi:5 context:qalv
update oauth_client_details set additional_information = '{"xid":"urn:com.mheducation.openlearning:content.widgets.deliver:qalv.us"}' where client_id = 'MHEReader';
update oauth_client_details set additional_information = '{"xid":"urn:com.mheducation.openlearning:content.assessment.author:qalv.us"}' where client_id = 'AssessAuth';
update oauth_client_details set additional_information = '{"xid":"urn:com.mheducation.openlearning:enterprise.entitlement:qalv.us"}' where client_id = 'ENTClient';

--changeset anand_joshi:6 context:demo
update oauth_client_details set additional_information = '{"xid":"urn:com.mheducation.openlearning:content.widgets.deliver:demo.us"}' where client_id = 'MHEReader';
update oauth_client_details set additional_information = '{"xid":"urn:com.mheducation.openlearning:content.assessment.author:demo.us"}' where client_id = 'AssessAuth';
update oauth_client_details set additional_information = '{"xid":"urn:com.mheducation.openlearning:enterprise.entitlement:demo.us"}' where client_id = 'ENTClient';

--changeset anand_joshi:7 context:prod
update oauth_client_details set additional_information = '{"xid":"urn:com.mheducation.openlearning:content.widgets.deliver:prod.us"}' where client_id = 'MHEReader';
update oauth_client_details set additional_information = '{"xid":"urn:com.mheducation.openlearning:content.assessment.author:prod.us"}' where client_id = 'AssessAuth';
update oauth_client_details set additional_information = '{"xid":"urn:com.mheducation.openlearning:enterprise.entitlement:prod.us"}' where client_id = 'ENTClient';
