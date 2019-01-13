--liquibase formatted sql

--changeset anand_joshi:1 context:local
INSERT INTO oauth_client_details (client_id,client_secret,web_server_redirect_uri,authorized_grant_types,scope,access_token_validity) VALUES ('mms','$6$rounds=5000$R.DwNDr9aSc21Hgg$pdGwmK/a5MAXHXWWLO9KeZvNxiTavWLmIrt924ctNiMDjRfYkecfvbMR/S/kA1KCqxFj1FfhLkLNICyVQZEA./',NULL,'client_credentials,password,refresh_token','provisioning,fulluser,auth,impersonate',1800);
INSERT INTO account (user_name, password, active) SELECT client_id, client_secret, 1 FROM oauth_client_details WHERE client_id = 'mms';

INSERT INTO oauth_client_details (client_id,client_secret,web_server_redirect_uri,authorized_grant_types,scope,access_token_validity) VALUES ('aleks','$6$rounds=5000$ZY/VNIuWaVcCXjGF$J26zrraylsaONYXC75dBLWEo.wpm4JKoVYSZpNLFROl/rdGjRbCNaEh1q05S1AgcLTVjOhK4pmkS.rHoxyQqA0',NULL,'client_credentials,password,refresh_token','provisioning,fulluser,auth,impersonate',1800);
INSERT INTO account (user_name, password, active) SELECT client_id, client_secret, 1 FROM oauth_client_details WHERE client_id = 'aleks';

--changeset anand_joshi:2 context:dev
INSERT INTO oauth_client_details (client_id,client_secret,web_server_redirect_uri,authorized_grant_types,scope,access_token_validity) VALUES ('mms','$6$rounds=5000$R.DwNDr9aSc21Hgg$pdGwmK/a5MAXHXWWLO9KeZvNxiTavWLmIrt924ctNiMDjRfYkecfvbMR/S/kA1KCqxFj1FfhLkLNICyVQZEA./',NULL,'client_credentials,password,refresh_token','provisioning,fulluser,auth,impersonate',1800);
INSERT INTO account (user_name, password, active) SELECT client_id, client_secret, 1 FROM oauth_client_details WHERE client_id = 'mms';

INSERT INTO oauth_client_details (client_id,client_secret,web_server_redirect_uri,authorized_grant_types,scope,access_token_validity) VALUES ('aleks','$6$rounds=5000$ZY/VNIuWaVcCXjGF$J26zrraylsaONYXC75dBLWEo.wpm4JKoVYSZpNLFROl/rdGjRbCNaEh1q05S1AgcLTVjOhK4pmkS.rHoxyQqA0',NULL,'client_credentials,password,refresh_token','provisioning,fulluser,auth,impersonate',1800);
INSERT INTO account (user_name, password, active) SELECT client_id, client_secret, 1 FROM oauth_client_details WHERE client_id = 'aleks';


--changeset anand_joshi:3 context:qastg
INSERT INTO oauth_client_details (client_id,client_secret,web_server_redirect_uri,authorized_grant_types,scope,access_token_validity) VALUES ('mms','$6$rounds=5000$E2olYuPIdY1a9fd.$7et4mjvunZNxKd9lFz6/5P9Pv5q9oSK0ZwCG0XqM4E6Ppf5gerHbLlFmij68WcacJd.JNoae8AqmN4TbdFv5i1',NULL,'client_credentials,password,refresh_token','provisioning,fulluser,auth,impersonate',1800);
INSERT INTO account (user_name, password, active) SELECT client_id, client_secret, 1 FROM oauth_client_details WHERE client_id = 'mms';

INSERT INTO oauth_client_details (client_id,client_secret,web_server_redirect_uri,authorized_grant_types,scope,access_token_validity) VALUES ('aleks','$6$rounds=5000$C6eZkP4Nb7eapVnH$nese3PyGm1knNzQdMaDdSLubE.LO7U56owpmXjaB7psiRd018W6XiuEQse7vmZy4HY5su.cYWq/v9S0cI.eR40',NULL,'client_credentials,password,refresh_token','provisioning,fulluser,auth,impersonate',1800);
INSERT INTO account (user_name, password, active) SELECT client_id, client_secret, 1 FROM oauth_client_details WHERE client_id = 'aleks';

--changeset anand_joshi:4 context:pqa
INSERT INTO oauth_client_details (client_id,client_secret,web_server_redirect_uri,authorized_grant_types,scope,access_token_validity) VALUES ('mms','$6$rounds=5000$OjlCGLn9rpPI5gux$goiw/eu7IaLQc45pwIRqzMtKr2DanuD56LzWmUPRAXpDqJFWWasQHyjRIuChpbfTcC2bHQQR7m05SwpGt5g13.',NULL,'client_credentials,password,refresh_token','provisioning,fulluser,auth,impersonate',1800);
INSERT INTO account (user_name, password, active) SELECT client_id, client_secret, 1 FROM oauth_client_details WHERE client_id = 'mms';

INSERT INTO oauth_client_details (client_id,client_secret,web_server_redirect_uri,authorized_grant_types,scope,access_token_validity) VALUES ('aleks','$6$rounds=5000$AL4cOyHyINnK6v65$VG7QeTkMqMNrHFphHBn8mck1X7TR770EBFjpfJ3XonFQTwzjsYy.7tOKkRmVOonut1bLWwNlgzOHz4ZicxKjg/',NULL,'client_credentials,password,refresh_token','provisioning,fulluser,auth,impersonate',1800);
INSERT INTO account (user_name, password, active) SELECT client_id, client_secret, 1 FROM oauth_client_details WHERE client_id = 'aleks';

--changeset anand_joshi:5 context:qalv
INSERT INTO oauth_client_details (client_id,client_secret,web_server_redirect_uri,authorized_grant_types,scope,access_token_validity) VALUES ('mms','$6$rounds=5000$V2xiK12cVCCx2lKk$62nxW7xH6bWRurhM/Xp/2vgP899y6mfva..98riyWyQ95Qao5MxFe2025OixqpL/OLyal9E.BcZQguJr2W3cB.',NULL,'client_credentials,password,refresh_token','provisioning,fulluser,auth,impersonate',1800);
INSERT INTO account (user_name, password, active) SELECT client_id, client_secret, 1 FROM oauth_client_details WHERE client_id = 'mms';

INSERT INTO oauth_client_details (client_id,client_secret,web_server_redirect_uri,authorized_grant_types,scope,access_token_validity) VALUES ('aleks','$6$rounds=5000$klpMF.V8QiDWBcNe$SNIzVNUi4ZhSIfxE7VYeJWAp3cvHWOJP2sGr5WFO.7fpLOV7BqV2HTlfV9alqax1vpbLg.8J2QvH.iKR1Kn.A1',NULL,'client_credentials,password,refresh_token','provisioning,fulluser,auth,impersonate',1800);
INSERT INTO account (user_name, password, active) SELECT client_id, client_secret, 1 FROM oauth_client_details WHERE client_id = 'aleks';

--changeset anand_joshi:6 context:demo
INSERT INTO oauth_client_details (client_id,client_secret,web_server_redirect_uri,authorized_grant_types,scope,access_token_validity) VALUES ('mms','$6$rounds=5000$ACk/SLeey2N3dPid$QVSfuALDI5kg0FpCvWhOA8.7V/yXkdPeuThTh9ZLYwYizjvFtq79MBPMJUtZOi4L9sXOVfMr7QRReO7taej6J0',NULL,'client_credentials,password,refresh_token','provisioning,fulluser,auth,impersonate',1800);
INSERT INTO account (user_name, password, active) SELECT client_id, client_secret, 1 FROM oauth_client_details WHERE client_id = 'mms';

INSERT INTO oauth_client_details (client_id,client_secret,web_server_redirect_uri,authorized_grant_types,scope,access_token_validity) VALUES ('aleks','$6$rounds=5000$2ZPyYVUIpJ3uyJlj$taTtuIcZRXFZgtsgGc95RYvJ1juhTio5ndhGdKtwJcY6qAx9sZmZk077C7laGTT8uMA1wz5aaVtGvJoFMXssm/',NULL,'client_credentials,password,refresh_token','provisioning,fulluser,auth,impersonate',1800);
INSERT INTO account (user_name, password, active) SELECT client_id, client_secret, 1 FROM oauth_client_details WHERE client_id = 'aleks';

--changeset anand_joshi:7 context:prod
INSERT INTO oauth_client_details (client_id,client_secret,web_server_redirect_uri,authorized_grant_types,scope,access_token_validity) VALUES ('mms','$6$rounds=5000$jABN1BkBwwnTWanE$U4KFpNddixLs80OgyaP.rI69Sa0VkRvnTOoVXjx1Ebw1RTkmxNYVUEnDrjE5j2gnJ8nL0QRtPgJYFEq1zMdvL0',NULL,'client_credentials,password,refresh_token','provisioning,fulluser,auth,impersonate',1800);
INSERT INTO account (user_name, password, active) SELECT client_id, client_secret, 1 FROM oauth_client_details WHERE client_id = 'mms';

INSERT INTO oauth_client_details (client_id,client_secret,web_server_redirect_uri,authorized_grant_types,scope,access_token_validity) VALUES ('aleks','$6$rounds=5000$TyuvaNwWclWJN0Si$j6FlaZKE0PHq6mqwhyozk1lwcRANSOYd5veB.RFVW5CMIrm6Npwq6.DhL6aGi7CWIlykkQC3pOJXr3Jlsbg5N0',NULL,'client_credentials,password,refresh_token','provisioning,fulluser,auth,impersonate',1800);
INSERT INTO account (user_name, password, active) SELECT client_id, client_secret, 1 FROM oauth_client_details WHERE client_id = 'aleks';
