--liquibase formatted sql

--changeset anand_joshi:1 context:local
INSERT INTO oauth_client_details (client_id,client_secret,web_server_redirect_uri,authorized_grant_types,scope,access_token_validity) VALUES ('essupport','$6$rounds=5000$oGZq9rHC1./mK8TN$/.AYiiqCOTGggW0KFLW/qmI3v679FEuUvYh12J67rjSxVC7uQWJsLAX7nF9S07nbE9M9QZwG5wIOv/yIcVNhM0',NULL,'client_credentials,password,refresh_token','provisioning,fulluser,auth,impersonate',86400);
INSERT INTO account (user_name, password, active) SELECT client_id, client_secret, 1 FROM oauth_client_details WHERE client_id = 'essupport';

--changeset anand_joshi:2 context:dev
INSERT INTO oauth_client_details (client_id,client_secret,web_server_redirect_uri,authorized_grant_types,scope,access_token_validity) VALUES ('essupport','$6$rounds=5000$7S50WV3AibzlE3bB$UbJ6hLReNxT.j/h/AK69AYkwTm.mQ2pZDueeSZN.UO511hYLCL.8gnDsvnGsprn/UnaoIoD7lWH0O.uFYDy9i0',NULL,'client_credentials,password,refresh_token','provisioning,fulluser,auth,impersonate',86400);
INSERT INTO account (user_name, password, active) SELECT client_id, client_secret, 1 FROM oauth_client_details WHERE client_id = 'essupport';

--changeset anand_joshi:3 context:qastg
INSERT INTO oauth_client_details (client_id,client_secret,web_server_redirect_uri,authorized_grant_types,scope,access_token_validity) VALUES ('essupport','$6$rounds=5000$x7Fd8Ab2bM/IM/1X$RbQm.hfFAK6.9L8tGrciniSsdK.69rbzh/G8ka6vNsINHICaazZM.ZsftCIOdUautkACO49Bf41hvC6cfgM0k/',NULL,'client_credentials,password,refresh_token','provisioning,fulluser,auth,impersonate',86400);
INSERT INTO account (user_name, password, active) SELECT client_id, client_secret, 1 FROM oauth_client_details WHERE client_id = 'essupport';


--changeset anand_joshi:4 context:pqa
INSERT INTO oauth_client_details (client_id,client_secret,web_server_redirect_uri,authorized_grant_types,scope,access_token_validity) VALUES ('essupport','$6$rounds=5000$.r14.MYXZQI.erBE$wK4z5SlQGuSI4ViKflyd43xGbp3u5oQV3/lWzkmOOiH.pTHlk/XQlX.vpU8eia/x2bLEnfeAhf/4eJZEr6Dz1.',NULL,'client_credentials,password,refresh_token','provisioning,fulluser,auth,impersonate',86400);
INSERT INTO account (user_name, password, active) SELECT client_id, client_secret, 1 FROM oauth_client_details WHERE client_id = 'essupport';

--changeset anand_joshi:5 context:qalv
INSERT INTO oauth_client_details (client_id,client_secret,web_server_redirect_uri,authorized_grant_types,scope,access_token_validity) VALUES ('essupport','$6$rounds=5000$Sqze1WDHdT8myxtc$dPYWCTKC4BYmBI4s0vsxZyrIWtNdIeCBaDQt1nN.2zkFXfYzuCbL.uc3chov.PGkrx3YDCOO8me5V9/6BP6SK0',NULL,'client_credentials,password,refresh_token','provisioning,fulluser,auth,impersonate',86400);
INSERT INTO account (user_name, password, active) SELECT client_id, client_secret, 1 FROM oauth_client_details WHERE client_id = 'essupport';

--changeset anand_joshi:6 context:demo
INSERT INTO oauth_client_details (client_id,client_secret,web_server_redirect_uri,authorized_grant_types,scope,access_token_validity) VALUES ('essupport','$6$rounds=5000$6TB4.8YIeZjK1k0i$iITg06oT/mJvjJLh0CPkeGjpJfAxn/wC1tH.zHWZHmNfzSKwqELiE7ImkU3YW1N0qRGWgoc8yhmiyvtWHIoIj1',NULL,'client_credentials,password,refresh_token','provisioning,fulluser,auth,impersonate',86400);
INSERT INTO account (user_name, password, active) SELECT client_id, client_secret, 1 FROM oauth_client_details WHERE client_id = 'essupport';

