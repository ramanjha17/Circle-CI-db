--liquibase formatted sql
--changeset anand_joshi:1 context:qastg
INSERT INTO oauth_client_details (client_id,client_secret,web_server_redirect_uri,authorized_grant_types,scope,access_token_validity,additional_information) VALUES ('EnterpriseProductClient','$6$rounds=5000$jLGtfngaPXKVO5KD$msu9ULtpG.rqjD0s1idY7ulRyKcaT9FAu986GamCX2j8ogEoZo0vhqMhDuTtQk/tF.iYHyV33th1Sdj2OLE2P/',NULL,'client_credentials,password,refresh_token','provisioning,fulluser,auth,impersonate',1800,'{"xid":"urn:com.mheducation.com:enterprise.product:qastg.us-east-1"}');
INSERT INTO account (user_name, password, active) SELECT client_id, client_secret, 1 FROM oauth_client_details WHERE client_id = 'EnterpriseProductClient';


--changeset anand_joshi:2 context:pqa
INSERT INTO oauth_client_details (client_id,client_secret,web_server_redirect_uri,authorized_grant_types,scope,access_token_validity,additional_information) VALUES ('EnterpriseProductClient','$6$rounds=5000$WeZpU9egculfN7q8$mX7WmeawzOmD62HrOI/FlmdvS/shWy3JsP.k7rPw7GPduBNLOWENBRH68zLGmWp1QH4HlN3hvQyV4nS/YvBC90',NULL,'client_credentials,password,refresh_token','provisioning,fulluser,auth,impersonate',1800,'{"xid":"urn:com.mheducation.com:enterprise.product:pqa.us-east-1"}');
INSERT INTO account (user_name, password, active) SELECT client_id, client_secret, 1 FROM oauth_client_details WHERE client_id = 'EnterpriseProductClient';


--changeset anand_joshi:3 context:prod
INSERT INTO oauth_client_details (client_id,client_secret,web_server_redirect_uri,authorized_grant_types,scope,access_token_validity,additional_information) VALUES ('EnterpriseProductClient','$6$rounds=5000$r6cGjEOxNY0nHkqg$.S4QnOyp1l/aRanxafLVybTmm5xdP.nPDGkmdjR81pUp4USzGIGrijZdcptbcuRs0NPCsKgdQp5Hqn0ubBwJ..',NULL,'client_credentials,password,refresh_token','provisioning,fulluser,auth,impersonate',1800,'{"xid":"urn:com.mheducation.com:enterprise.product:prod.us-east-1"}');
INSERT INTO account (user_name, password, active) SELECT client_id, client_secret, 1 FROM oauth_client_details WHERE client_id = 'EnterpriseProductClient';


--changeset anand_joshi:4 context:dev
INSERT INTO oauth_client_details (client_id,client_secret,web_server_redirect_uri,authorized_grant_types,scope,access_token_validity,additional_information) VALUES ('EnterpriseProductClient','$6$rounds=5000$lSRE5XL/ViV8MEPc$1PuZ0ZoWZgYYprNpfauk.B/RCUNtuBYzSw4flJNcZsjN7c.6L3tL2sas0dFCpbtW5AQhQjljpq5DnP4rFsUju.',NULL,'client_credentials,password,refresh_token','provisioning,fulluser,auth,impersonate',1800,'{"xid":"urn:com.mheducation.com:enterprise.product:dev.us-east-1"}');
INSERT INTO account (user_name, password, active) SELECT client_id, client_secret, 1 FROM oauth_client_details WHERE client_id = 'EnterpriseProductClient';


--changeset anand_joshi:5 context:demo
INSERT INTO oauth_client_details (client_id,client_secret,web_server_redirect_uri,authorized_grant_types,scope,access_token_validity,additional_information) VALUES ('EnterpriseProductClient','$6$rounds=5000$MhPlCpMGCcJ8asOq$hTQCAT0cD0XuOhp51u4M8ehvsRXfzJfhGu2.dzoPbhTT/Bp1AeSnmVMIGp/4djXZTUg0rSwwSFYKs8kuxY8J//',NULL,'client_credentials,password,refresh_token','provisioning,fulluser,auth,impersonate',1800,'{"xid":"urn:com.mheducation.com:enterprise.product:demo.us-east-1"}');
INSERT INTO account (user_name, password, active) SELECT client_id, client_secret, 1 FROM oauth_client_details WHERE client_id = 'EnterpriseProductClient';


--changeset anand_joshi:6 context:qalv
INSERT INTO oauth_client_details (client_id,client_secret,web_server_redirect_uri,authorized_grant_types,scope,access_token_validity,additional_information) VALUES ('EnterpriseProductClient','$6$rounds=5000$ulnF2tT44I84k5Bl$eVmgEhDhN0AweTnVdr4NuUE7ZWfjlLQDVh7/cz5JVinMDxzshUQJaIZhvWiI2eaAqYKeoT5sPuPOgxQQfbhS6/',NULL,'client_credentials,password,refresh_token','provisioning,fulluser,auth,impersonate',1800,'{"xid":"urn:com.mheducation.com:enterprise.product:qalv.us-east-1"}');
INSERT INTO account (user_name, password, active) SELECT client_id, client_secret, 1 FROM oauth_client_details WHERE client_id = 'EnterpriseProductClient';

--changeset anand_joshi:7 context:local
INSERT INTO oauth_client_details (client_id,client_secret,web_server_redirect_uri,authorized_grant_types,scope,access_token_validity,additional_information) VALUES ('EnterpriseProductClient','$6$rounds=5000$lSRE5XL/ViV8MEPc$1PuZ0ZoWZgYYprNpfauk.B/RCUNtuBYzSw4flJNcZsjN7c.6L3tL2sas0dFCpbtW5AQhQjljpq5DnP4rFsUju.',NULL,'client_credentials,password,refresh_token','provisioning,fulluser,auth,impersonate',1800,'{"xid":"urn:com.mheducation.com:enterprise.product:dev.us-east-1"}');
INSERT INTO account (user_name, password, active) SELECT client_id, client_secret, 1 FROM oauth_client_details WHERE client_id = 'EnterpriseProductClient';
