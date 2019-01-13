--liquibase formatted sql
--changeset anand_joshi:1 context:pqa
INSERT INTO oauth_client_details (client_id,client_secret,web_server_redirect_uri,authorized_grant_types,scope,access_token_validity, additional_information) VALUES ('RedShelf','$6$rounds=5000$Wn/Hgv.4FJ2woGX8$sPtH5rpbcXF4SFHJ71ciNK9SIyVVBgxc7yb7NHMz/Lh/MnhI1ZiVbVgw16gPgfL2p34OON/6rUmASXD1xN3gJ.',NULL,'client_credentials,password,refresh_token','provisioning,fulluser,auth,impersonate',1800, '{"xid":"urn:com.redbirdlearning:external.tools.deliver.redshelf:pqa.us-east-1"}');
INSERT INTO account (user_name, password, active) SELECT client_id, client_secret, 1 FROM oauth_client_details WHERE client_id = 'RedShelf';

--changeset anand_joshi:2 context:demo
INSERT INTO oauth_client_details (client_id,client_secret,web_server_redirect_uri,authorized_grant_types,scope,access_token_validity, additional_information) VALUES ('RedShelf','$6$rounds=5000$XPhYwz8PAfcZJMqq$heXlJ9FMvYCDmjp1HY/zzD8nEFWk5tgkUBIcZLIhBUvV9ylq5UkVPpW/aFp5R/KKVwUdB0oiUoQsB7Sof5O/k.',NULL,'client_credentials,password,refresh_token','provisioning,fulluser,auth,impersonate',1800, '{"xid":"urn:com.redbirdlearning:external.tools.deliver.redshelf:demo.us-east-1"}');
INSERT INTO account (user_name, password, active) SELECT client_id, client_secret, 1 FROM oauth_client_details WHERE client_id = 'RedShelf';

--changeset anand_joshi:3 context:qalv
INSERT INTO oauth_client_details (client_id,client_secret,web_server_redirect_uri,authorized_grant_types,scope,access_token_validity, additional_information) VALUES ('RedShelf','$6$rounds=5000$/EFUUEbNqgJbqP3/$mnXwPglTCuPhMVzRAGYG/AXPfU1AIgZeuoftYie9tbTMPvVRag7vlD9MOay7d8yy1hzvLzStSavu3RkslSNuX/',NULL,'client_credentials,password,refresh_token','provisioning,fulluser,auth,impersonate',1800, '{"xid":"urn:com.redbirdlearning:external.tools.deliver.redshelf:qalv.us-east-1"}');
INSERT INTO account (user_name, password, active) SELECT client_id, client_secret, 1 FROM oauth_client_details WHERE client_id = 'RedShelf';