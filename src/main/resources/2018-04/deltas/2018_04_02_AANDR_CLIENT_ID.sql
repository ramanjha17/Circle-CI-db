--liquibase formatted sql
--changeset anand_joshi:1 context:qastg
INSERT INTO oauth_client_details (client_id,client_secret,web_server_redirect_uri,authorized_grant_types,scope,access_token_validity) VALUES ('ARClient','$6$rounds=5000$JmTF40.qCIAGhGse$3JtwK/4kLzyW/wLr5BrE1Ga5LxigMQLvE2XwjxlMby6nQV10tzHbD/sei1d9AX222M/6AVa2PZyYl5JGy0QxY.',NULL,'client_credentials,password,refresh_token','provisioning,fulluser,auth,impersonate',1800);
INSERT INTO account (user_name, password, active) SELECT client_id, client_secret, 1 FROM oauth_client_details WHERE client_id = 'ARClient';

--changeset anand_joshi:2 context:pqa
INSERT INTO oauth_client_details (client_id,client_secret,web_server_redirect_uri,authorized_grant_types,scope,access_token_validity) VALUES ('ARClient','$6$rounds=5000$sJflhgW0U1Xcmor8$FFQ3ptNm4MP6bqJaQnO9uFAzQ8S6kCN9WyLjUL1nFh2OUMr0X50xpO4FTacjrS1IFpC0Wk4XnBejirg9W6CzE/',NULL,'client_credentials,password,refresh_token','provisioning,fulluser,auth,impersonate',1800);
INSERT INTO account (user_name, password, active) SELECT client_id, client_secret, 1 FROM oauth_client_details WHERE client_id = 'ARClient';

--changeset anand_joshi:3 context:prod
INSERT INTO oauth_client_details (client_id,client_secret,web_server_redirect_uri,authorized_grant_types,scope,access_token_validity) VALUES ('ARClient','$6$rounds=5000$e1gkJKHJdlaAgfnB$Mwg19tWhE3xJl4fdxOfB39R2a.gUoL43h02Z/UCuwRe55Ucp1IO342UDJ1mCSgLK4yFkLtuLhgNdNWyLu6NjL0',NULL,'client_credentials,password,refresh_token','provisioning,fulluser,auth,impersonate',1800);
INSERT INTO account (user_name, password, active) SELECT client_id, client_secret, 1 FROM oauth_client_details WHERE client_id = 'ARClient';

--changeset anand_joshi:4 context:dev
INSERT INTO oauth_client_details (client_id,client_secret,web_server_redirect_uri,authorized_grant_types,scope,access_token_validity) VALUES ('ARClient','$6$rounds=5000$3OJvmaUBwUVH.mMl$xLEJN9Rnsp3MRtrV0JVXF/6ylesIaRBlbdFEVr3QCPSaMlc10LxhDqCZhHyrfpU06WU.lBqSlswdswJ08Kgj8/',NULL,'client_credentials,password,refresh_token','provisioning,fulluser,auth,impersonate',1800);
INSERT INTO account (user_name, password, active) SELECT client_id, client_secret, 1 FROM oauth_client_details WHERE client_id = 'ARClient';

--changeset anand_joshi:5 context:demo
INSERT INTO oauth_client_details (client_id,client_secret,web_server_redirect_uri,authorized_grant_types,scope,access_token_validity) VALUES ('ARClient','$6$rounds=5000$x8MuJlhCfHVVce9X$St6hus3AcpNDClnnER/yW/xlRHMMGQUcUvBtxCZKGDb1/JstozxP.gdVR7ToROxGKno0JxNc6cmu7ChtMAZAg/',NULL,'client_credentials,password,refresh_token','provisioning,fulluser,auth,impersonate',1800);
INSERT INTO account (user_name, password, active) SELECT client_id, client_secret, 1 FROM oauth_client_details WHERE client_id = 'ARClient';

--changeset anand_joshi:6 context:qalv
INSERT INTO oauth_client_details (client_id,client_secret,web_server_redirect_uri,authorized_grant_types,scope,access_token_validity) VALUES ('ARClient','$6$rounds=5000$LHM/LWZKvzQ3Dc2k$2SxXXCoQDBb26hT3o/N4qfITKCqASG/LKzI.ThjTvyfJYKUFcqnigJNBui0owhuQtVtiAa7f.N21Epr1se1th/',NULL,'client_credentials,password,refresh_token','provisioning,fulluser,auth,impersonate',1800);
INSERT INTO account (user_name, password, active) SELECT client_id, client_secret, 1 FROM oauth_client_details WHERE client_id = 'ARClient';

--changeset anand_joshi:7 context:local
INSERT INTO oauth_client_details (client_id,client_secret,web_server_redirect_uri,authorized_grant_types,scope,access_token_validity) VALUES ('ARClient','$6$rounds=5000$3OJvmaUBwUVH.mMl$xLEJN9Rnsp3MRtrV0JVXF/6ylesIaRBlbdFEVr3QCPSaMlc10LxhDqCZhHyrfpU06WU.lBqSlswdswJ08Kgj8/',NULL,'client_credentials,password,refresh_token','provisioning,fulluser,auth,impersonate',1800);
INSERT INTO account (user_name, password, active) SELECT client_id, client_secret, 1 FROM oauth_client_details WHERE client_id = 'ARClient';
