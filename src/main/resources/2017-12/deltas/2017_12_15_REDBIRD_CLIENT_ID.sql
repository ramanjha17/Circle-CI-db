--liquibase formatted sql

--changeset anand_joshi:1 context:local
INSERT INTO oauth_client_details (client_id,client_secret,web_server_redirect_uri,authorized_grant_types,scope,access_token_validity) VALUES ('redbird','$6$rounds=5000$QbhhHUR7h6ryqFfy$ktfT9PhMyjzg/xE4.A2Q0Wkx8kMuSrMpVNTYGsah8NC2Rgdy0nHVQj5QGkeFbqJMvNGw3R32Jj8a//vzh3d1f1',NULL,'client_credentials,password,refresh_token','provisioning,fulluser,auth,impersonate',1800);
INSERT INTO account (user_name, password, active) SELECT client_id, client_secret, 1 FROM oauth_client_details WHERE client_id = 'redbird';

--changeset anand_joshi:2 context:dev
INSERT INTO oauth_client_details (client_id,client_secret,web_server_redirect_uri,authorized_grant_types,scope,access_token_validity) VALUES ('redbird','$6$rounds=5000$QbhhHUR7h6ryqFfy$ktfT9PhMyjzg/xE4.A2Q0Wkx8kMuSrMpVNTYGsah8NC2Rgdy0nHVQj5QGkeFbqJMvNGw3R32Jj8a//vzh3d1f1',NULL,'client_credentials,password,refresh_token','provisioning,fulluser,auth,impersonate',1800);
INSERT INTO account (user_name, password, active) SELECT client_id, client_secret, 1 FROM oauth_client_details WHERE client_id = 'redbird';

--changeset anand_joshi:3 context:qastg
INSERT INTO oauth_client_details (client_id,client_secret,web_server_redirect_uri,authorized_grant_types,scope,access_token_validity) VALUES ('redbird','$6$rounds=5000$18VvNh0NQvWZzMZ7$rP0Rsb1tWFqTYc33Sg.ilVgleZdLF6yoEjWFg9.Bpjcr0atuovYXRfhFVgdcvuLxg.PybicDz/sR1gDzOtO6l0',NULL,'client_credentials,password,refresh_token','provisioning,fulluser,auth,impersonate',1800);
INSERT INTO account (user_name, password, active) SELECT client_id, client_secret, 1 FROM oauth_client_details WHERE client_id = 'redbird';

--changeset anand_joshi:4 context:pqa
INSERT INTO oauth_client_details (client_id,client_secret,web_server_redirect_uri,authorized_grant_types,scope,access_token_validity) VALUES ('redbird','$6$rounds=5000$pZAo4vSzRS2oZ9.A$Wt9g5NyAJYyktJ8GQxYzEdvoKjMLx9CDg0S3kArVZiIytxsmQdHBjczs.aUWFHqk8iZtkK/bjQ.ieFkXRmi9y0',NULL,'client_credentials,password,refresh_token','provisioning,fulluser,auth,impersonate',1800);
INSERT INTO account (user_name, password, active) SELECT client_id, client_secret, 1 FROM oauth_client_details WHERE client_id = 'redbird';

--changeset anand_joshi:5 context:qalv
INSERT INTO oauth_client_details (client_id,client_secret,web_server_redirect_uri,authorized_grant_types,scope,access_token_validity) VALUES ('redbird','$6$rounds=5000$fFAULFwe0g4QxJU7$wqRqwIHKqdb.wN4zPR.q7vCALGwXOh40SNnDsl4T3eB6IzuUw4HkoV9eNbL6sG29QP7d0gYbk/2IkeES0Kviq1',NULL,'client_credentials,password,refresh_token','provisioning,fulluser,auth,impersonate',1800);
INSERT INTO account (user_name, password, active) SELECT client_id, client_secret, 1 FROM oauth_client_details WHERE client_id = 'redbird';

--changeset anand_joshi:6 context:demo
INSERT INTO oauth_client_details (client_id,client_secret,web_server_redirect_uri,authorized_grant_types,scope,access_token_validity) VALUES ('redbird','$6$rounds=5000$ytwIANBoI98WSGLB$bmrthL2WB0.b2GuOC73Yb2HEAeiL48RejL3bmGwywyeQTBXUsAiEXHZX4aVQGI0isXO9rj4HA75Sc7Q3XcCXS/',NULL,'client_credentials,password,refresh_token','provisioning,fulluser,auth,impersonate',1800);
INSERT INTO account (user_name, password, active) SELECT client_id, client_secret, 1 FROM oauth_client_details WHERE client_id = 'redbird';

--changeset anand_joshi:7 context:prod
INSERT INTO oauth_client_details (client_id,client_secret,web_server_redirect_uri,authorized_grant_types,scope,access_token_validity) VALUES ('redbird','$6$rounds=5000$oPIr7/jz4dJg0g9N$4KPQiGC1jXI/sr3dJPz7g8DPWzkniXeUu3F33v1BAOPpVBws7hiG8DDYheBoez/ViZs7mHqnYSYMuONBSCl6u1',NULL,'client_credentials,password,refresh_token','provisioning,fulluser,auth,impersonate',1800);
INSERT INTO account (user_name, password, active) SELECT client_id, client_secret, 1 FROM oauth_client_details WHERE client_id = 'redbird';
