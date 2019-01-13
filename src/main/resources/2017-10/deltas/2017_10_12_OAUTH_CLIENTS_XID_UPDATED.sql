--liquibase formatted sql

--changeset pawan_pangty:1 context:dev
update oauth_client_details set additional_information = '{"xid":"urn:com.mheducation.openlearning:lms:dev.global.connect2-dev.mheducation.com"}' where client_id = 'EngradeStageClient';
update oauth_client_details set additional_information = '{"xid":"urn:com.mheducation.rms:internal.integration.identity:dev.global"}' where client_id = 'RMSClient';
update oauth_client_details set additional_information = '{"xid":"urn:com.mheducation.unitas:internal.integration.identity:dev.global"}' where client_id = 'UNITAS';
update oauth_client_details set additional_information = '{"xid":"urn:com.mheducation.openlearning:enterprise.identity.org_client:dev.global"}' where client_id = 'OrgClient';
update oauth_client_details set additional_information = '{"xid":"urn:com.mheducation.openlearning:integration.external.roster:dev.global"}' where client_id = 'MHCampus';

--changeset pawan_pangty:2 context:qastg
update oauth_client_details set additional_information = '{"xid":"urn:com.mheducation.openlearning:lms:qastg.global.connect2-qastg.mheducation.com"}' where client_id = 'EngradeStageClient';
update oauth_client_details set additional_information = '{"xid":"urn:com.mheducation.rms:internal.integration.identity:qastg.global"}' where client_id = 'RMSClient';
update oauth_client_details set additional_information = '{"xid":"urn:com.mheducation.unitas:internal.integration.identity:qastg.global"}' where client_id = 'UNITAS';
update oauth_client_details set additional_information = '{"xid":"urn:com.mheducation.openlearning:enterprise.identity.org_client:qastg.global"}' where client_id = 'OrgClient';
update oauth_client_details set additional_information = '{"xid":"urn:com.mheducation.openlearning:integration.external.roster:qastg.global"}' where client_id = 'MHCampus';

--changeset pawan_pangty:3 context:dev
update oauth_client_details set additional_information = '{"xid":"urn:com.mheducation.openlearning:enterprise.identity.bulk_loader:dev.global"}' where client_id = 'dpgloader';

--changeset pawan_pangty:4 context:qastg
update oauth_client_details set additional_information = '{"xid":"urn:com.mheducation.openlearning:enterprise.identity.bulk_loader:qastg.global"}' where client_id = 'dpgloader';

--changeset pawan_pangty:5 context:qalv
update oauth_client_details set additional_information = '{"xid":"urn:com.mheducation.openlearning:enterprise.identity.bulk_loader:qalv.global"}' where client_id = 'dpgloader';
update oauth_client_details set additional_information = '{"xid":"urn:com.mheducation.openlearning:lms:qalv.global.connect2-qalv.mheducation.com"}' where client_id = 'EngradeStageClient';
update oauth_client_details set additional_information = '{"xid":"urn:com.mheducation.rms:internal.integration.identity:qalv.global"}' where client_id = 'RMSClient';
update oauth_client_details set additional_information = '{"xid":"urn:com.mheducation.unitas:internal.integration.identity:qalv.global"}' where client_id = 'UNITAS';
update oauth_client_details set additional_information = '{"xid":"urn:com.mheducation.openlearning:enterprise.identity.org_client:qalv.global"}' where client_id = 'OrgClient';
update oauth_client_details set additional_information = '{"xid":"urn:com.mheducation.openlearning:integration.external.roster:qalv.global"}' where client_id = 'MHCampus';

--changeset pawan_pangty:6 context:pqa
update oauth_client_details set additional_information = '{"xid":"urn:com.mheducation.openlearning:enterprise.identity.bulk_loader:pqa.global"}' where client_id = 'dpgloader';
update oauth_client_details set additional_information = '{"xid":"urn:com.mheducation.openlearning:lms:pqa.global.connect2-pqa.mheducation.com"}' where client_id = 'EngradeStageClient';
update oauth_client_details set additional_information = '{"xid":"urn:com.mheducation.rms:internal.integration.identity:pqa.global"}' where client_id = 'RMSClient';
update oauth_client_details set additional_information = '{"xid":"urn:com.mheducation.unitas:internal.integration.identity:pqa.global"}' where client_id = 'UNITAS';
update oauth_client_details set additional_information = '{"xid":"urn:com.mheducation.openlearning:enterprise.identity.org_client:pqa.global"}' where client_id = 'OrgClient';
update oauth_client_details set additional_information = '{"xid":"urn:com.mheducation.openlearning:integration.external.roster:pqa.global"}' where client_id = 'MHCampus';

--changeset pawan_pangty:7 context:demo
update oauth_client_details set additional_information = '{"xid":"urn:com.mheducation.openlearning:enterprise.identity.bulk_loader:demo.global"}' where client_id = 'dpgloader';
update oauth_client_details set additional_information = '{"xid":"urn:com.mheducation.openlearning:lms:demo.global.connect2-demo.mheducation.com"}' where client_id = 'EngradeStageClient';
update oauth_client_details set additional_information = '{"xid":"urn:com.mheducation.rms:internal.integration.identity:demo.global"}' where client_id = 'RMSClient';
update oauth_client_details set additional_information = '{"xid":"urn:com.mheducation.unitas:internal.integration.identity:demo.global"}' where client_id = 'UNITAS';
update oauth_client_details set additional_information = '{"xid":"urn:com.mheducation.openlearning:enterprise.identity.org_client:demo.global"}' where client_id = 'OrgClient';
update oauth_client_details set additional_information = '{"xid":"urn:com.mheducation.openlearning:integration.external.roster:demo.global"}' where client_id = 'MHCampus';

--changeset pawan_pangty:8 context:prod
update oauth_client_details set additional_information = '{"xid":"urn:com.mheducation.openlearning:enterprise.identity.bulk_loader:prod.global"}' where client_id = 'dpgloader';
update oauth_client_details set additional_information = '{"xid":"urn:com.mheducation.openlearning:lms:prod.global.connect2-prod.mheducation.com"}' where client_id = 'EngradeStageClient';
update oauth_client_details set additional_information = '{"xid":"urn:com.mheducation.rms:internal.integration.identity:prod.global"}' where client_id = 'RMSClient';
update oauth_client_details set additional_information = '{"xid":"urn:com.mheducation.unitas:internal.integration.identity:prod.global"}' where client_id = 'UNITAS';
update oauth_client_details set additional_information = '{"xid":"urn:com.mheducation.openlearning:enterprise.identity.org_client:prod.global"}' where client_id = 'OrgClient';
update oauth_client_details set additional_information = '{"xid":"urn:com.mheducation.openlearning:integration.external.roster:prod.global"}' where client_id = 'MHCampus';
update oauth_client_details set additional_information = '{"xid":"urn:com.mheducation.decoupler:internal.integration.identity:prod.global"}' where client_id = 'Decoupler';

--changeset pawan_pangty:9 context:dev
update oauth_client_details set additional_information = '{"xid":"urn:com.mheducation.decoupler:internal.integration.identity:dev.global"}' where client_id = 'Decoupler';

--changeset pawan_pangty:10 context:qastg
update oauth_client_details set additional_information = '{"xid":"urn:com.mheducation.decoupler:internal.integration.identity:qastg.global"}' where client_id = 'Decoupler';

--changeset pawan_pangty:11 context:qalv
update oauth_client_details set additional_information = '{"xid":"urn:com.mheducation.decoupler:internal.integration.identity:qalv.global"}' where client_id = 'Decoupler';

--changeset pawan_pangty:12 context:pqa
update oauth_client_details set additional_information = '{"xid":"urn:com.mheducation.decoupler:internal.integration.identity:pqa.global"}' where client_id = 'Decoupler';

--changeset pawan_pangty:13 context:demo
update oauth_client_details set additional_information = '{"xid":"urn:com.mheducation.decoupler:internal.integration.identity:demo.global"}' where client_id = 'Decoupler';

--changeset anand_joshi:1 context:local
update oauth_client_details set additional_information = '{"xid":"urn:com.mheducation.openlearning:content.widgets.deliver:dev.global"}' where client_id = 'MHEReader';
update oauth_client_details set additional_information = '{"xid":"urn:com.mheducation.openlearning:content.assessment.author:dev.global"}' where client_id = 'AssessAuth';
update oauth_client_details set additional_information = '{"xid":"urn:com.mheducation.openlearning:enterprise.entitlement:dev.global"}' where client_id = 'ENTClient';

--changeset anand_joshi:2 context:dev
update oauth_client_details set additional_information = '{"xid":"urn:com.mheducation.openlearning:content.widgets.deliver:dev.global"}' where client_id = 'MHEReader';
update oauth_client_details set additional_information = '{"xid":"urn:com.mheducation.openlearning:content.assessment.author:dev.global"}' where client_id = 'AssessAuth';
update oauth_client_details set additional_information = '{"xid":"urn:com.mheducation.openlearning:enterprise.entitlement:dev.global"}' where client_id = 'ENTClient';

--changeset anand_joshi:3 context:qastg
update oauth_client_details set additional_information = '{"xid":"urn:com.mheducation.openlearning:content.widgets.deliver:qastg.global"}' where client_id = 'MHEReader';
update oauth_client_details set additional_information = '{"xid":"urn:com.mheducation.openlearning:content.assessment.author:qastg.global"}' where client_id = 'AssessAuth';
update oauth_client_details set additional_information = '{"xid":"urn:com.mheducation.openlearning:enterprise.entitlement:qastg.global"}' where client_id = 'ENTClient';

--changeset anand_joshi:4 context:pqa
update oauth_client_details set additional_information = '{"xid":"urn:com.mheducation.openlearning:content.widgets.deliver:pqa.global"}' where client_id = 'MHEReader';
update oauth_client_details set additional_information = '{"xid":"urn:com.mheducation.openlearning:content.assessment.author:pqa.global"}' where client_id = 'AssessAuth';
update oauth_client_details set additional_information = '{"xid":"urn:com.mheducation.openlearning:enterprise.entitlement:pqa.global"}' where client_id = 'ENTClient';

--changeset anand_joshi:5 context:qalv
update oauth_client_details set additional_information = '{"xid":"urn:com.mheducation.openlearning:content.widgets.deliver:qalv.global"}' where client_id = 'MHEReader';
update oauth_client_details set additional_information = '{"xid":"urn:com.mheducation.openlearning:content.assessment.author:qalv.global"}' where client_id = 'AssessAuth';
update oauth_client_details set additional_information = '{"xid":"urn:com.mheducation.openlearning:enterprise.entitlement:qalv.global"}' where client_id = 'ENTClient';

--changeset anand_joshi:6 context:demo
update oauth_client_details set additional_information = '{"xid":"urn:com.mheducation.openlearning:content.widgets.deliver:demo.global"}' where client_id = 'MHEReader';
update oauth_client_details set additional_information = '{"xid":"urn:com.mheducation.openlearning:content.assessment.author:demo.global"}' where client_id = 'AssessAuth';
update oauth_client_details set additional_information = '{"xid":"urn:com.mheducation.openlearning:enterprise.entitlement:demo.global"}' where client_id = 'ENTClient';

--changeset anand_joshi:7 context:prod
update oauth_client_details set additional_information = '{"xid":"urn:com.mheducation.openlearning:content.widgets.deliver:prod.global"}' where client_id = 'MHEReader';
update oauth_client_details set additional_information = '{"xid":"urn:com.mheducation.openlearning:content.assessment.author:prod.global"}' where client_id = 'AssessAuth';
update oauth_client_details set additional_information = '{"xid":"urn:com.mheducation.openlearning:enterprise.entitlement:prod.global"}' where client_id = 'ENTClient';
