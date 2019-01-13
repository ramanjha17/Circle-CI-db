--liquibase formatted sql
--changeset anand_joshi:1 context:qastg
INSERT INTO oauth_client_details (client_id,client_secret,web_server_redirect_uri,authorized_grant_types,scope,access_token_validity,additional_information) VALUES ('OLLNRClient','$6$rounds=5000$tmMTKLGf/bv/fbIb$7i5vJJed1asxzED276K2ioTL7cYYWXFf1uSP.rS3d6BxY3UOD4HukxMdv14MydBvpFeG9KP26eWqTepMBq6fi/',NULL,'client_credentials,password,refresh_token','provisioning,fulluser,auth,impersonate',1800,'{"xid":"urn:com.mheducation.openlearning:integration.external.lti_roster:qastg.us-east-1"}');
INSERT INTO account (user_name, password, active) SELECT client_id, client_secret, 1 FROM oauth_client_details WHERE client_id = 'OLLNRClient';

--changeset anand_joshi:2 context:pqa
INSERT INTO oauth_client_details (client_id,client_secret,web_server_redirect_uri,authorized_grant_types,scope,access_token_validity,additional_information) VALUES ('OLLNRClient','$6$rounds=5000$mEMeImiOp0FSmnuC$SLvnuDj3D/osHeIx7.LMNDAuZiM9qUQ9oEhOt4ALZlMMpB8BwFjjwwChbUc2lpjPeTGFF4FecR.PAKwwkxcK./',NULL,'client_credentials,password,refresh_token','provisioning,fulluser,auth,impersonate',1800,'{"xid":"urn:com.mheducation.openlearning:integration.external.lti_roster:pqa.us-east-1"}');
INSERT INTO account (user_name, password, active) SELECT client_id, client_secret, 1 FROM oauth_client_details WHERE client_id = 'OLLNRClient';

--changeset anand_joshi:3 context:prod
INSERT INTO oauth_client_details (client_id,client_secret,web_server_redirect_uri,authorized_grant_types,scope,access_token_validity,additional_information) VALUES ('OLLNRClient','$6$rounds=5000$LP5/MT9CCHqAYtri$ieRErwMEH53ofjkZ049KZhEuMMD/oGWz0Mv4D/VOjCsvnQa8bh17niblTNk3mx4Xg87vrg90okrZvfQQpVfbr/',NULL,'client_credentials,password,refresh_token','provisioning,fulluser,auth,impersonate',1800,'{"xid":"urn:com.mheducation.openlearning:integration.external.lti_roster:prod.us-east-1"}');
INSERT INTO account (user_name, password, active) SELECT client_id, client_secret, 1 FROM oauth_client_details WHERE client_id = 'OLLNRClient';

--changeset anand_joshi:4 context:dev
INSERT INTO oauth_client_details (client_id,client_secret,web_server_redirect_uri,authorized_grant_types,scope,access_token_validity,additional_information) VALUES ('OLLNRClient','$6$rounds=5000$K.e0aViqIIGRba7h$w.u0rluAMwSMrUahs4jzuEn.QqXeuWOpTUW4lcpCN8lDdPVeqEL411xAgWjaQMusVP8zLplCrZFOHTyYZ1KK31',NULL,'client_credentials,password,refresh_token','provisioning,fulluser,auth,impersonate',1800,'{"xid":"urn:com.mheducation.openlearning:integration.external.lti_roster:dev.us-east-1"}');
INSERT INTO account (user_name, password, active) SELECT client_id, client_secret, 1 FROM oauth_client_details WHERE client_id = 'OLLNRClient';

--changeset anand_joshi:5 context:demo
INSERT INTO oauth_client_details (client_id,client_secret,web_server_redirect_uri,authorized_grant_types,scope,access_token_validity,additional_information) VALUES ('OLLNRClient','$6$rounds=5000$dVVnI8hNCHOKkbpf$hK0pbfPkAhIVcpPYIuH1rUbWslaytGgdb4yZEUsvp8waWIAFneHl9NFu9zxQkFM9FxlwWo3CzgltT63gyQdwo.',NULL,'client_credentials,password,refresh_token','provisioning,fulluser,auth,impersonate',1800,'{"xid":"urn:com.mheducation.openlearning:integration.external.lti_roster:demo.us-east-1"}');
INSERT INTO account (user_name, password, active) SELECT client_id, client_secret, 1 FROM oauth_client_details WHERE client_id = 'OLLNRClient';

--changeset anand_joshi:6 context:qalv
INSERT INTO oauth_client_details (client_id,client_secret,web_server_redirect_uri,authorized_grant_types,scope,access_token_validity,additional_information) VALUES ('OLLNRClient','$6$rounds=5000$neJmBOwkU3Lqirr.$GY1exoQjUtarTi2NSfSZzc2fe6NmZgKH9T22MvL7DrgyeiweuAb3zDDr8LupUnJlpjUoWDoDLH8ztrkDLUmFG0',NULL,'client_credentials,password,refresh_token','provisioning,fulluser,auth,impersonate',1800,'{"xid":"urn:com.mheducation.openlearning:integration.external.lti_roster:qalv.us-east-1"}');
INSERT INTO account (user_name, password, active) SELECT client_id, client_secret, 1 FROM oauth_client_details WHERE client_id = 'OLLNRClient';

--changeset anand_joshi:7 context:local
INSERT INTO oauth_client_details (client_id,client_secret,web_server_redirect_uri,authorized_grant_types,scope,access_token_validity,additional_information) VALUES ('OLLNRClient','$6$rounds=5000$K.e0aViqIIGRba7h$w.u0rluAMwSMrUahs4jzuEn.QqXeuWOpTUW4lcpCN8lDdPVeqEL411xAgWjaQMusVP8zLplCrZFOHTyYZ1KK31',NULL,'client_credentials,password,refresh_token','provisioning,fulluser,auth,impersonate',1800,'{"xid":"urn:com.mheducation.openlearning:integration.external.lti_roster:dev.us-east-1"}');
INSERT INTO account (user_name, password, active) SELECT client_id, client_secret, 1 FROM oauth_client_details WHERE client_id = 'OLLNRClient';
