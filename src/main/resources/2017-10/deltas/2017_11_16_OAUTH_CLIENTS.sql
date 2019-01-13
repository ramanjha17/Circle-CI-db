--liquibase formatted sql

--changeset konstantin_mosounov:1 context:pqa
INSERT INTO oauth_client_details (client_id,client_secret,web_server_redirect_uri,authorized_grant_types,scope,access_token_validity) VALUES ('ProductRubric','$6$rounds=5000$.niQVoQbEiQWgS9z$68cYEQ.91Tzvj6F/TkK/NU3ORj.lRvakAlpG4baioGh0cBsyErHUUcdY5KOts.AWD3NP876irMdrhgWIFo.Bl/',NULL,'client_credentials,password,refresh_token','provisioning,fulluser,auth,impersonate',1800);
INSERT INTO account (user_name, password, active) SELECT client_id, client_secret, 1 FROM oauth_client_details WHERE client_id = 'ProductRubric';
INSERT INTO oauth_client_details (client_id,client_secret,web_server_redirect_uri,authorized_grant_types,scope,access_token_validity) VALUES ('ProductPlanner','$6$rounds=5000$FhUli/JUf.x5mbR9$WT2t0zYJi5r7X23x9dKztxjmLyNn7.QroLdUyZ5T5ScjlXIsWZmnZmbsx1L0O2MoqxkXng638T2pkbst6kcB31',NULL,'client_credentials,password,refresh_token','provisioning,fulluser,auth,impersonate',1800);
INSERT INTO account (user_name, password, active) SELECT client_id, client_secret, 1 FROM oauth_client_details WHERE client_id = 'ProductPlanner';
INSERT INTO oauth_client_details (client_id,client_secret,web_server_redirect_uri,authorized_grant_types,scope,access_token_validity) VALUES ('AssessAuthoringUI','$6$rounds=5000$Hh2/ta/jul4lQn4p$RZ9SXSKQmnH4Gu1IEaMcXhOx2X.y0BVZS6XU53.RljEHMzLbAHoO8BiVC/7jsnoFdX0OBPXUi3gvyfX/U0r1g.',NULL,'client_credentials,password,refresh_token','provisioning,fulluser,auth,impersonate',1800);
INSERT INTO account (user_name, password, active) SELECT client_id, client_secret, 1 FROM oauth_client_details WHERE client_id = 'AssessAuthoringUI';

--changeset konstantin_mosounov:2 context:demo
INSERT INTO oauth_client_details (client_id,client_secret,web_server_redirect_uri,authorized_grant_types,scope,access_token_validity) VALUES ('ProductRubric','$6$rounds=5000$8PCPxPiawdx3Nkjb$gVuGlT/38ruVz55w0y4nLB1L17GW2syGYrbqOpZQUK3uj9utkL0mWAz4Z2nqq/WRXoEpOhB8KPBlTrI29so7..',NULL,'client_credentials,password,refresh_token','provisioning,fulluser,auth,impersonate',1800);
INSERT INTO account (user_name, password, active) SELECT client_id, client_secret, 1 FROM oauth_client_details WHERE client_id = 'ProductRubric';
INSERT INTO oauth_client_details (client_id,client_secret,web_server_redirect_uri,authorized_grant_types,scope,access_token_validity) VALUES ('ProductPlanner','$6$rounds=5000$wZ42yN5wY0bA90oW$4N2Si0pPVO.UjKsnPGqbxy.VdS6rmE7DTOJtyLTQsWSN/4nVb3VDpA5lrJs2ZLqdqD1LhHlw75p85W8vW411H/',NULL,'client_credentials,password,refresh_token','provisioning,fulluser,auth,impersonate',1800);
INSERT INTO account (user_name, password, active) SELECT client_id, client_secret, 1 FROM oauth_client_details WHERE client_id = 'ProductPlanner';
INSERT INTO oauth_client_details (client_id,client_secret,web_server_redirect_uri,authorized_grant_types,scope,access_token_validity) VALUES ('AssessAuthoringUI','$6$rounds=5000$/nZTYBB9qrBqyhqW$VPNhlytOu3drhcBE.lsYSlEl3OZaSCFDJq99li/7.siaXs/bFg7T9ZCcyscJ4R6m/E.UnXxdE0RzH2/0vwb2E/',NULL,'client_credentials,password,refresh_token','provisioning,fulluser,auth,impersonate',1800);
INSERT INTO account (user_name, password, active) SELECT client_id, client_secret, 1 FROM oauth_client_details WHERE client_id = 'AssessAuthoringUI';

--changeset konstantin_mosounov:3 context:prod
INSERT INTO oauth_client_details (client_id,client_secret,web_server_redirect_uri,authorized_grant_types,scope,access_token_validity) VALUES ('ProductRubric','$6$rounds=5000$/Ap1n4h12l6Rrf.m$zDaaYNVQPvlzzeBADqopeGUnxVmhHymD16Gmf7gjWrApqWgKj0Tvs1Dzwh5N5Vsdgyk0Q3pmVq1Ae0YB3WYVD0',NULL,'client_credentials,password,refresh_token','provisioning,fulluser,auth,impersonate',1800);
INSERT INTO account (user_name, password, active) SELECT client_id, client_secret, 1 FROM oauth_client_details WHERE client_id = 'ProductRubric';
INSERT INTO oauth_client_details (client_id,client_secret,web_server_redirect_uri,authorized_grant_types,scope,access_token_validity) VALUES ('ProductPlanner','$6$rounds=5000$JnL.6ZtE88NR8osK$S6smVvfWTJmBqLDMAHOzdAftUM8/LTPQz0v7DNOzTalthlCYnCy2f3kkzWbWdHwE9WPvcOrrTUKmx.jszMm4x1',NULL,'client_credentials,password,refresh_token','provisioning,fulluser,auth,impersonate',1800);
INSERT INTO account (user_name, password, active) SELECT client_id, client_secret, 1 FROM oauth_client_details WHERE client_id = 'ProductPlanner';
INSERT INTO oauth_client_details (client_id,client_secret,web_server_redirect_uri,authorized_grant_types,scope,access_token_validity) VALUES ('AssessAuthoringUI','$6$rounds=5000$qJlyxFTtWDo0UgQG$sU5EJJ6lx6ZEcTAdYaLz60rQf5oqnT.cQnrk1q5Ik/pjUoFfsKqDtmt77Q6yZyL6HT5FMyzgg4HqH2L/BsYLC.',NULL,'client_credentials,password,refresh_token','provisioning,fulluser,auth,impersonate',1800);
INSERT INTO account (user_name, password, active) SELECT client_id, client_secret, 1 FROM oauth_client_details WHERE client_id = 'AssessAuthoringUI';