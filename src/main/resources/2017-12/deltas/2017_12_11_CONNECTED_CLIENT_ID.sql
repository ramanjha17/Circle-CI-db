--liquibase formatted sql

--changeset anand_joshi:1 context:local
INSERT INTO oauth_client_details (client_id,client_secret,web_server_redirect_uri,authorized_grant_types,scope,access_token_validity) VALUES ('connected','$6$rounds=5000$4u31moGRaLvh9Xhl$p8Tmm6/TKHLJs05fhW24jTqoQZ93IuWHORB/mv8pI14OPCyzQgFg5zJs55NHrYPSFfEvdOo04jjSfb/9AfmIo/',NULL,'client_credentials,password,refresh_token','provisioning,fulluser,auth,impersonate',1800);
INSERT INTO account (user_name, password, active) SELECT client_id, client_secret, 1 FROM oauth_client_details WHERE client_id = 'connected';

--changeset anand_joshi:2 context:dev
INSERT INTO oauth_client_details (client_id,client_secret,web_server_redirect_uri,authorized_grant_types,scope,access_token_validity) VALUES ('connected','$6$rounds=5000$4u31moGRaLvh9Xhl$p8Tmm6/TKHLJs05fhW24jTqoQZ93IuWHORB/mv8pI14OPCyzQgFg5zJs55NHrYPSFfEvdOo04jjSfb/9AfmIo/',NULL,'client_credentials,password,refresh_token','provisioning,fulluser,auth,impersonate',1800);
INSERT INTO account (user_name, password, active) SELECT client_id, client_secret, 1 FROM oauth_client_details WHERE client_id = 'connected';

--changeset anand_joshi:3 context:qastg
INSERT INTO oauth_client_details (client_id,client_secret,web_server_redirect_uri,authorized_grant_types,scope,access_token_validity) VALUES ('connected','$6$rounds=5000$9eUqKHQp.d7d8MZz$spj4cp.P7USQmhQUl4jdSzjqfsf/OmZ2PTVrPnz5XwSjw0oTKq1oBFSFa7coM2r/3K0hrYPm6Fu.QGXBnrMH5.',NULL,'client_credentials,password,refresh_token','provisioning,fulluser,auth,impersonate',1800);
INSERT INTO account (user_name, password, active) SELECT client_id, client_secret, 1 FROM oauth_client_details WHERE client_id = 'connected';

--changeset anand_joshi:4 context:pqa
INSERT INTO oauth_client_details (client_id,client_secret,web_server_redirect_uri,authorized_grant_types,scope,access_token_validity) VALUES ('connected','$6$rounds=5000$zEwVZA19gDwAYDRu$AcTzFuXihNDvdTErwFiOHfExBfgAqkWIeJMoMxjyIEUQwPXtwPUkTMeR/GKlzCvsOcUnDnpIFOr.7vNBXG2tj1',NULL,'client_credentials,password,refresh_token','provisioning,fulluser,auth,impersonate',1800);
INSERT INTO account (user_name, password, active) SELECT client_id, client_secret, 1 FROM oauth_client_details WHERE client_id = 'connected';

--changeset anand_joshi:5 context:qalv
INSERT INTO oauth_client_details (client_id,client_secret,web_server_redirect_uri,authorized_grant_types,scope,access_token_validity) VALUES ('connected','$6$rounds=5000$5u1NM1RSHdMwYbDw$N0FGAIeXVKclc72wVJdvBzMD.6PsFhxt/1.vTHfHZ.NOHdIeF69RKRb.Qanq9kUMGLTf7QTICTi.9Giqftli2/',NULL,'client_credentials,password,refresh_token','provisioning,fulluser,auth,impersonate',1800);
INSERT INTO account (user_name, password, active) SELECT client_id, client_secret, 1 FROM oauth_client_details WHERE client_id = 'connected';

--changeset anand_joshi:7 context:demo
INSERT INTO oauth_client_details (client_id,client_secret,web_server_redirect_uri,authorized_grant_types,scope,access_token_validity) VALUES ('connected','$6$rounds=5000$Dp5f4bsC4JZneN95$C9PY3OBAGV83y6ruiS1v6VbqcZRroqGepQsZnqkt7.jeFL9mFuQrx8l6R4SxFftigutnL112TUgl5zTxr5fg/.',NULL,'client_credentials,password,refresh_token','provisioning,fulluser,auth,impersonate',1800);
INSERT INTO account (user_name, password, active) SELECT client_id, client_secret, 1 FROM oauth_client_details WHERE client_id = 'connected';

--changeset anand_joshi:6 context:prod
INSERT INTO oauth_client_details (client_id,client_secret,web_server_redirect_uri,authorized_grant_types,scope,access_token_validity) VALUES ('connected','$6$rounds=5000$WvlZxn1KahO/KKRr$LFg26erFKGRZItbyrAaZ7UqwLOZUbgSTkfoDhCRpP4TL4PwrZhxoU2YyRA0rA6jy3Wx0JdKWzBSfow1DOWaEI0',NULL,'client_credentials,password,refresh_token','provisioning,fulluser,auth,impersonate',1800);
INSERT INTO account (user_name, password, active) SELECT client_id, client_secret, 1 FROM oauth_client_details WHERE client_id = 'connected';
