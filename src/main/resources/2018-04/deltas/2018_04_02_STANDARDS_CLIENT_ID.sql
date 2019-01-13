--liquibase formatted sql
--changeset anand_joshi:1 context:qastg
INSERT INTO oauth_client_details (client_id,client_secret,web_server_redirect_uri,authorized_grant_types,scope,access_token_validity) VALUES ('StandardsClient','$6$rounds=5000$WKz/r/gs.8.0rzVB$iK6vjlV44DT8LctkUte8QqeW1.wEqtMRUQrzAMtMORXcnSC88f75kfmkbTeFRbZhM86E/wo/leS4KMcXIO8tM/',NULL,'client_credentials,password,refresh_token','provisioning,fulluser,auth,impersonate',1800);
INSERT INTO account (user_name, password, active) SELECT client_id, client_secret, 1 FROM oauth_client_details WHERE client_id = 'StandardsClient';

--changeset anand_joshi:2 context:pqa
INSERT INTO oauth_client_details (client_id,client_secret,web_server_redirect_uri,authorized_grant_types,scope,access_token_validity) VALUES ('StandardsClient','$6$rounds=5000$gSlDDOcRm0.bzcDG$j8b6cLpHCO.QfIAdP6pINou/EHhxvVCKPW5yDTUx43obKy/XaYC7aHMAwpndycQ5UiZk.bxFhpATDC.3Z1Rr90',NULL,'client_credentials,password,refresh_token','provisioning,fulluser,auth,impersonate',1800);
INSERT INTO account (user_name, password, active) SELECT client_id, client_secret, 1 FROM oauth_client_details WHERE client_id = 'StandardsClient';

--changeset anand_joshi:3 context:prod
INSERT INTO oauth_client_details (client_id,client_secret,web_server_redirect_uri,authorized_grant_types,scope,access_token_validity) VALUES ('StandardsClient','$6$rounds=5000$1/Pc/B10hvWLl0xn$JQKVCXrL9x8DSE7eHURUtmNncVe9PGdfb5vEbbA3JYi2PUMkJ.GWI1488Uuf73EZzGOdSsPTNTr/RpZJBjA6t.',NULL,'client_credentials,password,refresh_token','provisioning,fulluser,auth,impersonate',1800);
INSERT INTO account (user_name, password, active) SELECT client_id, client_secret, 1 FROM oauth_client_details WHERE client_id = 'StandardsClient';

--changeset anand_joshi:4 context:dev
INSERT INTO oauth_client_details (client_id,client_secret,web_server_redirect_uri,authorized_grant_types,scope,access_token_validity) VALUES ('StandardsClient','$6$rounds=5000$JJu9IkWCauorVF8y$2ljvNyac5Z8PwQfvnvjIIUf5O8xXbbZaYRkZNVvZqWgVrymA1067fbvRMsqKgV4zGtoE2ua2uUzstzbo/T42g/',NULL,'client_credentials,password,refresh_token','provisioning,fulluser,auth,impersonate',1800);
INSERT INTO account (user_name, password, active) SELECT client_id, client_secret, 1 FROM oauth_client_details WHERE client_id = 'StandardsClient';

--changeset anand_joshi:5 context:demo
INSERT INTO oauth_client_details (client_id,client_secret,web_server_redirect_uri,authorized_grant_types,scope,access_token_validity) VALUES ('StandardsClient','$6$rounds=5000$500e0RX4H6mwUQmJ$Lf3LBNoyeInbUinWMICsa5U6MRThlGBasc0PhZPzC3FTf1XqSib2mHlCIlOsUBW5BtF84/ioFOGkxEMpZNjUT1',NULL,'client_credentials,password,refresh_token','provisioning,fulluser,auth,impersonate',1800);
INSERT INTO account (user_name, password, active) SELECT client_id, client_secret, 1 FROM oauth_client_details WHERE client_id = 'StandardsClient';

--changeset anand_joshi:6 context:qalv
INSERT INTO oauth_client_details (client_id,client_secret,web_server_redirect_uri,authorized_grant_types,scope,access_token_validity) VALUES ('StandardsClient','$6$rounds=5000$6m75EM7/yTfc/z2k$bRDU7UFfZjf1iAAYfJZc.OctgRFnMgeTmHMtz/8y1zP0Ys6gHEkgC1usNH7WBgH3VeF8ygktWasuCZalLJ0Mh/',NULL,'client_credentials,password,refresh_token','provisioning,fulluser,auth,impersonate',1800);
INSERT INTO account (user_name, password, active) SELECT client_id, client_secret, 1 FROM oauth_client_details WHERE client_id = 'StandardsClient';

--changeset anand_joshi:7 context:local
INSERT INTO oauth_client_details (client_id,client_secret,web_server_redirect_uri,authorized_grant_types,scope,access_token_validity) VALUES ('StandardsClient','$6$rounds=5000$JJu9IkWCauorVF8y$2ljvNyac5Z8PwQfvnvjIIUf5O8xXbbZaYRkZNVvZqWgVrymA1067fbvRMsqKgV4zGtoE2ua2uUzstzbo/T42g/',NULL,'client_credentials,password,refresh_token','provisioning,fulluser,auth,impersonate',1800);
INSERT INTO account (user_name, password, active) SELECT client_id, client_secret, 1 FROM oauth_client_details WHERE client_id = 'StandardsClient';
