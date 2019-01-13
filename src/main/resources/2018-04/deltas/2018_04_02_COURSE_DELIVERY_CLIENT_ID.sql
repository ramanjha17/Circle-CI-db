--liquibase formatted sql

--changeset anand_joshi:1 context:qastg
INSERT INTO oauth_client_details (client_id,client_secret,web_server_redirect_uri,authorized_grant_types,scope,access_token_validity) VALUES ('CourseDeliveryClient','$6$rounds=5000$o0nxaXCqrrt0z293$A7ic76.jmC89SW8dIvKjSqxoEqeqbrFLTsvX4lyUTjD7jeuxvHm4JAX05jLAzC8d8O3pIIddOa3raSAa6Pe6g0',NULL,'client_credentials,password,refresh_token','provisioning,fulluser,auth,impersonate',1800);
INSERT INTO account (user_name, password, active) SELECT client_id, client_secret, 1 FROM oauth_client_details WHERE client_id = 'CourseDeliveryClient';

--changeset anand_joshi:2 context:pqa
INSERT INTO oauth_client_details (client_id,client_secret,web_server_redirect_uri,authorized_grant_types,scope,access_token_validity) VALUES ('CourseDeliveryClient','$6$rounds=5000$Jk55nuiuF8GLFKjW$2Vl2rrgPQilSQRkKavW8enuzO1whVMYAiRkj.CJN1zbl0RIrmN.h5/3Z8rPALCqUdhdxQt0Y.kkfF50a/DzL20',NULL,'client_credentials,password,refresh_token','provisioning,fulluser,auth,impersonate',1800);
INSERT INTO account (user_name, password, active) SELECT client_id, client_secret, 1 FROM oauth_client_details WHERE client_id = 'CourseDeliveryClient';

--changeset anand_joshi:3 context:prod
INSERT INTO oauth_client_details (client_id,client_secret,web_server_redirect_uri,authorized_grant_types,scope,access_token_validity) VALUES ('CourseDeliveryClient','$6$rounds=5000$BLYTyBaZL5hc7F/Y$Hxm8VcEd0yIqqRNwrg0XN1vpul3LYdr8K7MVuJCceJTBfsr13VVcESZXrgFb/tWPLRASFeHOjVn157dYC9QBF.',NULL,'client_credentials,password,refresh_token','provisioning,fulluser,auth,impersonate',1800);
INSERT INTO account (user_name, password, active) SELECT client_id, client_secret, 1 FROM oauth_client_details WHERE client_id = 'CourseDeliveryClient';

--changeset anand_joshi:4 context:dev
INSERT INTO oauth_client_details (client_id,client_secret,web_server_redirect_uri,authorized_grant_types,scope,access_token_validity) VALUES ('CourseDeliveryClient','$6$rounds=5000$w37N1MxUCdCcaS45$XIRlVC8POHu1FHanOdPSZ6OJg8TnoFFmSFrPB5DXwrtgRGA4uuj73Gatx3AqLMoQ1AewGIV7sCAxcT8uubxyI0',NULL,'client_credentials,password,refresh_token','provisioning,fulluser,auth,impersonate',1800);
INSERT INTO account (user_name, password, active) SELECT client_id, client_secret, 1 FROM oauth_client_details WHERE client_id = 'CourseDeliveryClient';

--changeset anand_joshi:5 context:demo
INSERT INTO oauth_client_details (client_id,client_secret,web_server_redirect_uri,authorized_grant_types,scope,access_token_validity) VALUES ('CourseDeliveryClient','$6$rounds=5000$XCnCVoKUh6TZxUyq$jL1fO5r7fVxVsIH5td59LrLut.Bj0AIQrok.LDJgUZbO56tJUVmILAxuU8UYosSM5V8bBw9fhuc1Uo61iHlri1',NULL,'client_credentials,password,refresh_token','provisioning,fulluser,auth,impersonate',1800);
INSERT INTO account (user_name, password, active) SELECT client_id, client_secret, 1 FROM oauth_client_details WHERE client_id = 'CourseDeliveryClient';

--changeset anand_joshi:6 context:qalv
INSERT INTO oauth_client_details (client_id,client_secret,web_server_redirect_uri,authorized_grant_types,scope,access_token_validity) VALUES ('CourseDeliveryClient','$6$rounds=5000$yn.AcgkqNV36ahDA$B3bMwy9iC72JBh0/a5KWDka6zZASzWa.ho0/6eP9ML8t8wq67LsKdILfXmZ1HsLwPw4WIVIcdP0TcOmLPi6aT0',NULL,'client_credentials,password,refresh_token','provisioning,fulluser,auth,impersonate',1800);
INSERT INTO account (user_name, password, active) SELECT client_id, client_secret, 1 FROM oauth_client_details WHERE client_id = 'CourseDeliveryClient';

--changeset anand_joshi:7 context:local
INSERT INTO oauth_client_details (client_id,client_secret,web_server_redirect_uri,authorized_grant_types,scope,access_token_validity) VALUES ('CourseDeliveryClient','$6$rounds=5000$w37N1MxUCdCcaS45$XIRlVC8POHu1FHanOdPSZ6OJg8TnoFFmSFrPB5DXwrtgRGA4uuj73Gatx3AqLMoQ1AewGIV7sCAxcT8uubxyI0',NULL,'client_credentials,password,refresh_token','provisioning,fulluser,auth,impersonate',1800);
INSERT INTO account (user_name, password, active) SELECT client_id, client_secret, 1 FROM oauth_client_details WHERE client_id = 'CourseDeliveryClient';
