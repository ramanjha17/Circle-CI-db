--liquibase formatted sql

--changeset anand_joshi:1 context:local
insert into oauth_client_details (client_id, resource_ids, client_secret, scope, authorized_grant_types, web_server_redirect_uri, authorities, access_token_validity, refresh_token_validity, additional_information, autoapprove) VALUES ('EnablingServices', null, '$6$rounds=5000$3VoSYYczof7cJB5V$ZmK4HzKwA1qj.oWQjL33y.WNOQfxEgaA43888juoDum7wYhJ3tjVZZMGsqLGg75BYzI3gQ/voMOz5acOlL/xn0', 'provisioning,fulluser,auth', 'client_credentials,password,refresh_token', null, null, 3600, null, null, null);
insert into account (user_name, password, active) SELECT client_id, client_secret, 1 FROM oauth_client_details WHERE client_id = 'EnablingServices';

--changeset anand_joshi:2 context:dev
insert into oauth_client_details (client_id, resource_ids, client_secret, scope, authorized_grant_types, web_server_redirect_uri, authorities, access_token_validity, refresh_token_validity, additional_information, autoapprove) VALUES ('EnablingServices', null, '$6$rounds=5000$3VoSYYczof7cJB5V$ZmK4HzKwA1qj.oWQjL33y.WNOQfxEgaA43888juoDum7wYhJ3tjVZZMGsqLGg75BYzI3gQ/voMOz5acOlL/xn0', 'provisioning,fulluser,auth', 'client_credentials,password,refresh_token', null, null, 3600, null, null, null);
insert into account (user_name, password, active) SELECT client_id, client_secret, 1 FROM oauth_client_details WHERE client_id = 'EnablingServices';

--changeset anand_joshi:3 context:qastg
insert into oauth_client_details (client_id, resource_ids, client_secret, scope, authorized_grant_types, web_server_redirect_uri, authorities, access_token_validity, refresh_token_validity, additional_information, autoapprove) VALUES ('EnablingServices', null, '$6$rounds=5000$Mb0q0rRnMHBrjzgc$/o/ZJs67GGX827i7b7aMJQtsuMh94I3B8TCuyDOVP7Fl0ui5kWUrPFVP636l5TCG4kEp9YeB3lEFJaNvxozBU.', 'provisioning,fulluser,auth', 'client_credentials,password,refresh_token', null, null, 3600, null, null, null);
insert into account (user_name, password, active) SELECT client_id, client_secret, 1 FROM oauth_client_details WHERE client_id = 'EnablingServices';

--changeset anand_joshi:4 context:pqa
insert into oauth_client_details (client_id, resource_ids, client_secret, scope, authorized_grant_types, web_server_redirect_uri, authorities, access_token_validity, refresh_token_validity, additional_information, autoapprove) VALUES ('EnablingServices', null, '$6$rounds=5000$NXH6qU7wgM6wCOlE$CBdBF7sMsgUdMIdVcDRSNmqDnB4Cjh./nHMPngx6/C.MU0Zpmy4hC7SGvl7Vt9FtOM1FJdMSNjQH0EoEaE3jy0', 'provisioning,fulluser,auth', 'client_credentials,password,refresh_token', null, null, 3600, null, null, null);
insert into account (user_name, password, active) SELECT client_id, client_secret, 1 FROM oauth_client_details WHERE client_id = 'EnablingServices';

--changeset anand_joshi:5 context:qalv
insert into oauth_client_details (client_id, resource_ids, client_secret, scope, authorized_grant_types, web_server_redirect_uri, authorities, access_token_validity, refresh_token_validity, additional_information, autoapprove) VALUES ('EnablingServices', null, '$6$rounds=5000$Um24KiG1qUPinbNn$mx4lgszUpKJ9xUFsn5/eMHOovf0X5o4qtxqbM0dPqhRuB9bQqMnm1y9aNoIUgbuqN.Zk.0hAvbVvH1n49r4Rg1', 'provisioning,fulluser,auth', 'client_credentials,password,refresh_token', null, null, 3600, null, null, null);
insert into account (user_name, password, active) SELECT client_id, client_secret, 1 FROM oauth_client_details WHERE client_id = 'EnablingServices';

--changeset anand_joshi:6 context:demo
insert into oauth_client_details (client_id, resource_ids, client_secret, scope, authorized_grant_types, web_server_redirect_uri, authorities, access_token_validity, refresh_token_validity, additional_information, autoapprove) VALUES ('EnablingServices', null, '$6$rounds=5000$yT/WrUjVZoRipeHB$oGHCZaI2pGN56UalELisbyCO5wUJXqDChmeBES31Xe9x7DhVwGdP64tsk8S0lhVMcrOpwOpFttHpvl2HLV102.', 'provisioning,fulluser,auth', 'client_credentials,password,refresh_token', null, null, 3600, null, null, null);
insert into account (user_name, password, active) SELECT client_id, client_secret, 1 FROM oauth_client_details WHERE client_id = 'EnablingServices';

--changeset anand_joshi:7 context:prod
insert into oauth_client_details (client_id, resource_ids, client_secret, scope, authorized_grant_types, web_server_redirect_uri, authorities, access_token_validity, refresh_token_validity, additional_information, autoapprove) VALUES ('EnablingServices', null, '$6$rounds=5000$ZRYiM9Tf1RdEVp57$DWWuwZFz506GeGYkfy4viLaJg8lSz.Kk.n6uNpazUrSR7PX/4gxpaw5M/sdR2uDdEU6AHNFGLzxE49X/ShrDJ1', 'provisioning,fulluser,auth', 'client_credentials,password,refresh_token', null, null, 3600, null, null, null);
insert into account (user_name, password, active) SELECT client_id, client_secret, 1 FROM oauth_client_details WHERE client_id = 'EnablingServices';
