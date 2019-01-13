--liquibase formatted sql
--changeset anand_joshi:1 context:qastg
INSERT INTO oauth_client_details (client_id,client_secret,web_server_redirect_uri,authorized_grant_types,scope,access_token_validity) VALUES ('CourseAssembly','$6$rounds=5000$a4lHu33UjmHAVh6m$I/fVGN4tyfjf9Cyt7Rij/3nmzfCZtz/sua3wFnY8CcZdQu3imtdRsktmtMKNb8Pmw0JZfkLjpojO.9vf2cZRM1',NULL,'client_credentials,password,refresh_token','provisioning,fulluser,auth,impersonate',1800);
INSERT INTO account (user_name, password, active) SELECT client_id, client_secret, 1 FROM oauth_client_details WHERE client_id = 'CourseAssembly';

--changeset anand_joshi:2 context:pqa
INSERT INTO oauth_client_details (client_id,client_secret,web_server_redirect_uri,authorized_grant_types,scope,access_token_validity) VALUES ('CourseAssembly','$6$rounds=5000$pZwM/1h25BLuSCvE$WP159h79/kuyu63V2bC9Bi0mhV33SurKRdfQmeyxfcdnDP5S1b5QWGoPLK3LRMfDFxz203tnfC/2xZtD6MWCW/',NULL,'client_credentials,password,refresh_token','provisioning,fulluser,auth,impersonate',1800);
INSERT INTO account (user_name, password, active) SELECT client_id, client_secret, 1 FROM oauth_client_details WHERE client_id = 'CourseAssembly';

--changeset anand_joshi:3 context:prod
INSERT INTO oauth_client_details (client_id,client_secret,web_server_redirect_uri,authorized_grant_types,scope,access_token_validity) VALUES ('CourseAssembly','$6$rounds=5000$DEKpleYbxIuIVZiT$IENiobyy4cXrRlLe/sYwThgY9lbY864vRKR6gD.nIwnjgt4vgNf7Ci0lAyxBKAfA80WpdioOH2C5Qz.Qd7Kds0',NULL,'client_credentials,password,refresh_token','provisioning,fulluser,auth,impersonate',1800);
INSERT INTO account (user_name, password, active) SELECT client_id, client_secret, 1 FROM oauth_client_details WHERE client_id = 'CourseAssembly';

--changeset anand_joshi:4 context:dev
INSERT INTO oauth_client_details (client_id,client_secret,web_server_redirect_uri,authorized_grant_types,scope,access_token_validity) VALUES ('CourseAssembly','$6$rounds=5000$BLVtJnJu4GpUAVIA$BTjXH5pyYcv.u3W1ZVoV8dFmX/ZIGeH7t6dpSMloSRXa5wEOqaQb8h7T0GZzlw6xeJyNgUNV/ohGbFrfeOn/5.',NULL,'client_credentials,password,refresh_token','provisioning,fulluser,auth,impersonate',1800);
INSERT INTO account (user_name, password, active) SELECT client_id, client_secret, 1 FROM oauth_client_details WHERE client_id = 'CourseAssembly';

--changeset anand_joshi:5 context:demo
INSERT INTO oauth_client_details (client_id,client_secret,web_server_redirect_uri,authorized_grant_types,scope,access_token_validity) VALUES ('CourseAssembly','$6$rounds=5000$pRRinzkN3mNnhJan$GczB1Z1DUn/IAREAEddU0zxb7KD4SaabsC3CcuJDvFKlUXEeGk8.T5MyChUlwg9cpP2K/SSh8ioXv6ZO3cBh0/',NULL,'client_credentials,password,refresh_token','provisioning,fulluser,auth,impersonate',1800);
INSERT INTO account (user_name, password, active) SELECT client_id, client_secret, 1 FROM oauth_client_details WHERE client_id = 'CourseAssembly';

--changeset anand_joshi:6 context:qalv
INSERT INTO oauth_client_details (client_id,client_secret,web_server_redirect_uri,authorized_grant_types,scope,access_token_validity) VALUES ('CourseAssembly','$6$rounds=5000$cglCK19FmJm6DonL$yRtWeESrJi.OwJr3d91N4rzo/gVW/4SL90x2tH/iC0/phpIIjTwliP3LbzirllwZaILeD4t0S8shXohNVw7e61',NULL,'client_credentials,password,refresh_token','provisioning,fulluser,auth,impersonate',1800);
INSERT INTO account (user_name, password, active) SELECT client_id, client_secret, 1 FROM oauth_client_details WHERE client_id = 'CourseAssembly';

--changeset anand_joshi:7 context:local
INSERT INTO oauth_client_details (client_id,client_secret,web_server_redirect_uri,authorized_grant_types,scope,access_token_validity) VALUES ('CourseAssembly','$6$rounds=5000$BLVtJnJu4GpUAVIA$BTjXH5pyYcv.u3W1ZVoV8dFmX/ZIGeH7t6dpSMloSRXa5wEOqaQb8h7T0GZzlw6xeJyNgUNV/ohGbFrfeOn/5.',NULL,'client_credentials,password,refresh_token','provisioning,fulluser,auth,impersonate',1800);
INSERT INTO account (user_name, password, active) SELECT client_id, client_secret, 1 FROM oauth_client_details WHERE client_id = 'CourseAssembly';
