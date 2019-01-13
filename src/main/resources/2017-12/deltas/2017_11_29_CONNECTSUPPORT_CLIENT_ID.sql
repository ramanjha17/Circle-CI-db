--liquibase formatted sql

--changeset anand_joshi:1 context:local
INSERT INTO oauth_client_details (client_id,client_secret,web_server_redirect_uri,authorized_grant_types,scope,access_token_validity) VALUES ('connectsupport','$6$rounds=5000$.r1DM5QnZ/zSYH4v$9mB8T9cW9tm5iTYWBM.hE8f5dJ1Zkxa630zEmLOzAbvQZDjvh67EiHOc8FFamwYUlvdr6JtZVqSbgiv1aSTOg.',NULL,'client_credentials,password,refresh_token','provisioning,fulluser,auth,impersonate',1800);
INSERT INTO account (user_name, password, active) SELECT client_id, client_secret, 1 FROM oauth_client_details WHERE client_id = 'connectsupport';

--changeset anand_joshi:2 context:dev
INSERT INTO oauth_client_details (client_id,client_secret,web_server_redirect_uri,authorized_grant_types,scope,access_token_validity) VALUES ('connectsupport','$6$rounds=5000$.r1DM5QnZ/zSYH4v$9mB8T9cW9tm5iTYWBM.hE8f5dJ1Zkxa630zEmLOzAbvQZDjvh67EiHOc8FFamwYUlvdr6JtZVqSbgiv1aSTOg.',NULL,'client_credentials,password,refresh_token','provisioning,fulluser,auth,impersonate',1800);
INSERT INTO account (user_name, password, active) SELECT client_id, client_secret, 1 FROM oauth_client_details WHERE client_id = 'connectsupport';

--changeset anand_joshi:3 context:qastg
INSERT INTO oauth_client_details (client_id,client_secret,web_server_redirect_uri,authorized_grant_types,scope,access_token_validity) VALUES ('connectsupport','$6$rounds=5000$2Xiq88OfU1LBwKsJ$Q5yuvB0PngBA7tOJTruacJkqnMqqxVcJVdXINMhouvZOgrWfaZjohEkbEXaXeU2eBy4rN15wVrgklt9WfvL0N.',NULL,'client_credentials,password,refresh_token','provisioning,fulluser,auth,impersonate',1800);
INSERT INTO account (user_name, password, active) SELECT client_id, client_secret, 1 FROM oauth_client_details WHERE client_id = 'connectsupport';

--changeset anand_joshi:4 context:pqa
INSERT INTO oauth_client_details (client_id,client_secret,web_server_redirect_uri,authorized_grant_types,scope,access_token_validity) VALUES ('connectsupport','$6$rounds=5000$f5DgBodzBPpF4cxN$qz9HCKgErcUJey5jcdkyEpLnZrf2OU1J34O9ITIIGO2VkZVwFBeTgewgv5cbAejJYXmuvmwDfkuGdYtgFiXVk.',NULL,'client_credentials,password,refresh_token','provisioning,fulluser,auth,impersonate',1800);
INSERT INTO account (user_name, password, active) SELECT client_id, client_secret, 1 FROM oauth_client_details WHERE client_id = 'connectsupport';

--changeset anand_joshi:5 context:qalv
INSERT INTO oauth_client_details (client_id,client_secret,web_server_redirect_uri,authorized_grant_types,scope,access_token_validity) VALUES ('connectsupport','$6$rounds=5000$1KwAnhSuwOx29la/$/xXk1.3UMkmfpEEVrf6V2Ektv6aa8FjGOlY8WEP3Yc0R2tMTVY9pSQ8O9/eN0talXLIn2oVyPwX2Nf3RtPY6Q1',NULL,'client_credentials,password,refresh_token','provisioning,fulluser,auth,impersonate',1800);
INSERT INTO account (user_name, password, active) SELECT client_id, client_secret, 1 FROM oauth_client_details WHERE client_id = 'connectsupport';

--changeset anand_joshi:6 context:demo
INSERT INTO oauth_client_details (client_id,client_secret,web_server_redirect_uri,authorized_grant_types,scope,access_token_validity) VALUES ('connectsupport','$6$rounds=5000$h94nV3YF2d9d9cYD$kwFNvBpmikcry4ihcWO.nNJqiYTglV5FC06KN5eDZ9foD5gjJAD7.NFTOdg1MOdWwxgBdNhQ3lDRq0N7vxh140',NULL,'client_credentials,password,refresh_token','provisioning,fulluser,auth,impersonate',1800);
INSERT INTO account (user_name, password, active) SELECT client_id, client_secret, 1 FROM oauth_client_details WHERE client_id = 'connectsupport';

--changeset anand_joshi:7 context:prod
INSERT INTO oauth_client_details (client_id,client_secret,web_server_redirect_uri,authorized_grant_types,scope,access_token_validity) VALUES ('connectsupport','$6$rounds=5000$129r9tB7rdG8.QWt$6HBdpCqyMMQou843OUNrrSIGH4aKR0MQdY7PiEu/4Dd00eNKFzh4Pdt1OKtOyr0fEF/LZnFEg88M18nPyWH4f0',NULL,'client_credentials,password,refresh_token','provisioning,fulluser,auth,impersonate',1800);
INSERT INTO account (user_name, password, active) SELECT client_id, client_secret, 1 FROM oauth_client_details WHERE client_id = 'connectsupport';
