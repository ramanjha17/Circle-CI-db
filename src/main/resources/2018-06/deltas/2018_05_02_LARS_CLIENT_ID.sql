--liquibase formatted sql
--changeset anand_joshi:1 context:qastg
INSERT INTO oauth_client_details (client_id,client_secret,web_server_redirect_uri,authorized_grant_types,scope,access_token_validity,additional_information) VALUES ('LARSClient','$6$rounds=5000$ar31ZWqlrIL5GkCH$VEwKSPsmihFPuZTysHXpB4KNbzRoABohP50iLZn05vHC1rQ8tIx8FeCfTJ9JpdIp9eZn8EM6W53fTrWykCyLx.',NULL,'client_credentials,password,refresh_token','provisioning,fulluser,auth,impersonate',1800,'{"xid":"urn:com.mheducation.com:integration.internal.lars:qastg.us-east-1"}');
INSERT INTO account (user_name, password, active) SELECT client_id, client_secret, 1 FROM oauth_client_details WHERE client_id = 'LARSClient';

--changeset anand_joshi:2 context:pqa
INSERT INTO oauth_client_details (client_id,client_secret,web_server_redirect_uri,authorized_grant_types,scope,access_token_validity,additional_information) VALUES ('LARSClient','$6$rounds=5000$aOvjVv/MYUMdGoJ9$l/4fdg7/1S7kRGMMnclQ6uNVfoqZ/DmDhqrmUs8cbun4l1CNaiHxx9M9jii.ksD574djUNyMVp0XpkoukQzl71',NULL,'client_credentials,password,refresh_token','provisioning,fulluser,auth,impersonate',1800,'{"xid":"urn:com.mheducation.com:integration.internal.lars:pqa.us-east-1"}');
INSERT INTO account (user_name, password, active) SELECT client_id, client_secret, 1 FROM oauth_client_details WHERE client_id = 'LARSClient';

--changeset anand_joshi:3 context:prod
INSERT INTO oauth_client_details (client_id,client_secret,web_server_redirect_uri,authorized_grant_types,scope,access_token_validity,additional_information) VALUES ('LARSClient','$6$rounds=5000$rCsYlKtZM12zgMQP$2SPFHhmuu6URa1NSFG08/FdqlFWsB4hMNL747VpQO60zDqVNeGM6UaTuRCYhcTzIgJDbfQycXxds9m.YccX4Y1',NULL,'client_credentials,password,refresh_token','provisioning,fulluser,auth,impersonate',1800,'{"xid":"urn:com.mheducation.com:integration.internal.lars:prod.us-east-1"}');
INSERT INTO account (user_name, password, active) SELECT client_id, client_secret, 1 FROM oauth_client_details WHERE client_id = 'LARSClient';

--changeset anand_joshi:4 context:dev
INSERT INTO oauth_client_details (client_id,client_secret,web_server_redirect_uri,authorized_grant_types,scope,access_token_validity,additional_information) VALUES ('LARSClient','$6$rounds=5000$BhP73SV11W.fDN/P$lD7Kefl0xXrhLmttfbzrC5h5C3ypx3XYCOf41GQRnp8anfAyrdvdyn9UUOgaeMTxTNpKCIUnYupoJxigiy2tK/',NULL,'client_credentials,password,refresh_token','provisioning,fulluser,auth,impersonate',1800,'{"xid":"urn:com.mheducation.com:integration.internal.lars:dev.us-east-1"}');
INSERT INTO account (user_name, password, active) SELECT client_id, client_secret, 1 FROM oauth_client_details WHERE client_id = 'LARSClient';

--changeset anand_joshi:5 context:demo
INSERT INTO oauth_client_details (client_id,client_secret,web_server_redirect_uri,authorized_grant_types,scope,access_token_validity,additional_information) VALUES ('LARSClient','$6$rounds=5000$nDzgbQ.UUkpe3320$JUMjwHObDSDVw50IuqgExiOlJakHsawhAEIYI7gBSFuLdV.t557svj8w8y25WcrO.h6kKehn75cb51shVRn5N1',NULL,'client_credentials,password,refresh_token','provisioning,fulluser,auth,impersonate',1800,'{"xid":"urn:com.mheducation.com:integration.internal.lars:demo.us-east-1"}');
INSERT INTO account (user_name, password, active) SELECT client_id, client_secret, 1 FROM oauth_client_details WHERE client_id = 'LARSClient';

--changeset anand_joshi:6 context:qalv
INSERT INTO oauth_client_details (client_id,client_secret,web_server_redirect_uri,authorized_grant_types,scope,access_token_validity,additional_information) VALUES ('LARSClient','$6$rounds=5000$pHY6isG9Be2CZnp7$1fbmb2FLrLiurMV8QZmaAtllny0ces6JY.Uw8xrQMwrmG.pC9o5QnYkNHiFZQlOdBTp5N7IZuQ2iNPMgFJ1Bh/',NULL,'client_credentials,password,refresh_token','provisioning,fulluser,auth,impersonate',1800,'{"xid":"urn:com.mheducation.com:integration.internal.lars:qalv.us-east-1"}');
INSERT INTO account (user_name, password, active) SELECT client_id, client_secret, 1 FROM oauth_client_details WHERE client_id = 'LARSClient';

--changeset anand_joshi:7 context:local
INSERT INTO oauth_client_details (client_id,client_secret,web_server_redirect_uri,authorized_grant_types,scope,access_token_validity,additional_information) VALUES ('LARSClient','$6$rounds=5000$BhP73SV11W.fDN/P$lD7Kefl0xXrhLmttfbzrC5h5C3ypx3XYCOf41GQRnp8anfAyrdvdyn9UUOgaeMTxTNpKCIUnYupoJxigiy2tK/',NULL,'client_credentials,password,refresh_token','provisioning,fulluser,auth,impersonate',1800,'{"xid":"urn:com.mheducation.com:integration.internal.lars:dev.us-east-1"}');
INSERT INTO account (user_name, password, active) SELECT client_id, client_secret, 1 FROM oauth_client_details WHERE client_id = 'LARSClient';

