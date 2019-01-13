--liquibase formatted sql

--changeset pawan_pangty:1
replace into oauth_client_details(client_id, client_secret, scope, authorized_grant_types, authorities, access_token_validity, refresh_token_validity) values('idm-admin', '$6$rounds=5000$kR2g9kpuQRGHLkRy$T.Gcdz5QOSSsu2Ur.JC5hO1dP.YUvlzne4uXt59PheNSZWOvHInA8JZMqj/QQr.EuBfFufBDQ9j1DeK1fZB6l0', 'openid', 'client_credentials,password', 'ACTUATOR', 300, 300);

--changeset pawan_pangty:2
replace into account(user_name, password, active) values('idm-admin', '$6$rounds=5000$kR2g9kpuQRGHLkRy$T.Gcdz5QOSSsu2Ur.JC5hO1dP.YUvlzne4uXt59PheNSZWOvHInA8JZMqj/QQr.EuBfFufBDQ9j1DeK1fZB6l0', 1);
