--liquibase formatted sql

--changeset konstantin_mosounov:1 context:local
INSERT INTO oauth_client_details (client_id,client_secret,web_server_redirect_uri,authorized_grant_types,scope,access_token_validity) VALUES ('Myna','$6$rounds=5000$HT404UDRBoPNxBdv$NFkG19TvmZ/ZH83NiOrKkA0.WaEA//gI64ttOuaw2V5Gvl4RYC0vmVvos1rF.ib3ByFS6LBqV76D8kI19NyQO.',NULL,'client_credentials,password,refresh_token','provisioning,fulluser,auth,impersonate',1800);
INSERT INTO account (user_name, password, active) SELECT client_id, client_secret, 1 FROM oauth_client_details WHERE client_id = 'Myna';

--changeset konstantin_mosounov:2 context:dev
INSERT INTO oauth_client_details (client_id,client_secret,web_server_redirect_uri,authorized_grant_types,scope,access_token_validity) VALUES ('Myna','$6$rounds=5000$HphmgO2JG4qY/E2X$XgV6ZZmJvJN8rfuaKlVHjByy96uzbEIgHzmL.ayDpfNERMEh9Gpm8Pbr7Hke.41SEJofmYdN8QBC4uZ1dUfLg.',NULL,'client_credentials,password,refresh_token','provisioning,fulluser,auth,impersonate',1800);
INSERT INTO account (user_name, password, active) SELECT client_id, client_secret, 1 FROM oauth_client_details WHERE client_id = 'Myna';

--changeset konstantin_mosounov:3 context:qastg
INSERT INTO oauth_client_details (client_id,client_secret,web_server_redirect_uri,authorized_grant_types,scope,access_token_validity) VALUES ('Myna','$6$rounds=5000$Sb3OmirV/EcgW.If$E66i0/adSbRgyMrkeACD8lQh/LtxsYt64oDQhthaFn2qIfL8uIHFm2bwq9wayd31JIObREwqDT4E/svD7368f0',NULL,'client_credentials,password,refresh_token','provisioning,fulluser,auth,impersonate',1800);
INSERT INTO account (user_name, password, active) SELECT client_id, client_secret, 1 FROM oauth_client_details WHERE client_id = 'Myna';

--changeset konstantin_mosounov:4 context:qalv
INSERT INTO oauth_client_details (client_id,client_secret,web_server_redirect_uri,authorized_grant_types,scope,access_token_validity) VALUES ('Myna','$6$rounds=5000$1HMFqOih.onj7eUv$8GxE52l8VixD58ZGLRQRRfIcOdlGZsmdCfQl/GQnf05HirXZrvsbB403EpcsiA924CFUWH758rCHsQ1bNDxxn0',NULL,'client_credentials,password,refresh_token','provisioning,fulluser,auth,impersonate',1800);
INSERT INTO account (user_name, password, active) SELECT client_id, client_secret, 1 FROM oauth_client_details WHERE client_id = 'Myna';

--changeset konstantin_mosounov:5 context:pqa
INSERT INTO oauth_client_details (client_id,client_secret,web_server_redirect_uri,authorized_grant_types,scope,access_token_validity) VALUES ('Myna','$6$rounds=5000$giNoUzlGWs8cneML$rv3vmID.3S.vZdal7k1OqnuvDnZgCpxaagJRNuqaEIrB2knwrNSMLWYjT8ooWMDNvU0C1G/MuVWsIRjp2MuPE1',NULL,'client_credentials,password,refresh_token','provisioning,fulluser,auth,impersonate',1800);
INSERT INTO account (user_name, password, active) SELECT client_id, client_secret, 1 FROM oauth_client_details WHERE client_id = 'Myna';

--changeset konstantin_mosounov:6 context:demo
INSERT INTO oauth_client_details (client_id,client_secret,web_server_redirect_uri,authorized_grant_types,scope,access_token_validity) VALUES ('Myna','$6$rounds=5000$s5am4pB/pxfXxGtt$UL4JiV4d2h1zVBkIRJErAGj7D.ZDWOEa8VhyJa3K5HpJ7BxLQoLjCs2t9zzP6GTTiQJvzl4CcDnCj9ruK/ZpR1',NULL,'client_credentials,password,refresh_token','provisioning,fulluser,auth,impersonate',1800);
INSERT INTO account (user_name, password, active) SELECT client_id, client_secret, 1 FROM oauth_client_details WHERE client_id = 'Myna';
