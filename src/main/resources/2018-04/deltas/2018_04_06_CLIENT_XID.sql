--liquibase formatted sql

--changeset konstantin_mosounov:1 context:local
update oauth_client_details set additional_information = '{"xid":"urn:com.mheducation.openlearning:enterprise.portal:local.us-east-1"}' where client_id = 'ProductPortal';
update oauth_client_details set additional_information = '{"xid":"urn:com.mheducation.openlearning:content.complext.deliver.rubric:local.us-east-1"}' where client_id = 'ProductRubric';
update oauth_client_details set additional_information = '{"xid":"urn:com.mheducation.openlearning:lms.planner:local.us-east-1"}' where client_id = 'ProductPlanner';
update oauth_client_details set additional_information = '{"xid":"urn:com.mheducation.openlearning:content.content_tags.deliver:local.us-east-1"}' where client_id = 'MetadataAPIClient';
update oauth_client_details set additional_information = '{"xid":"urn:com.mheducation.openlearning:content.ped_tags.deliver:local.us-east-1"}' where client_id = 'StandardsClient';
update oauth_client_details set additional_information = '{"xid":"urn:com.mheducation.openlearning:content.courseware.deliver:local.us-east-1"}' where client_id = 'CourseDeliveryClient';
update oauth_client_details set additional_information = '{"xid":"urn:com.mheducation.openlearning:content.courseware.author:local.us-east-1"}' where client_id = 'CourseAssembly';
update oauth_client_details set additional_information = '{"xid":"urn:com.mheducation.openlearning:enterprise.backbone:local.us-east-1"}' where client_id = 'Myna';

--changeset konstantin_mosounov:2 context:dev
update oauth_client_details set additional_information = '{"xid":"urn:com.mheducation.openlearning:enterprise.portal:dev.us-east-1"}' where client_id = 'ProductPortal';
update oauth_client_details set additional_information = '{"xid":"urn:com.mheducation.openlearning:content.complext.deliver.rubric:dev.us-east-1"}' where client_id = 'ProductRubric';
update oauth_client_details set additional_information = '{"xid":"urn:com.mheducation.openlearning:lms.planner:dev.us-east-1"}' where client_id = 'ProductPlanner';
update oauth_client_details set additional_information = '{"xid":"urn:com.mheducation.openlearning:content.content_tags.deliver:dev.us-east-1"}' where client_id = 'MetadataAPIClient';
update oauth_client_details set additional_information = '{"xid":"urn:com.mheducation.openlearning:content.ped_tags.deliver:dev.us-east-1"}' where client_id = 'StandardsClient';
update oauth_client_details set additional_information = '{"xid":"urn:com.mheducation.openlearning:content.courseware.deliver:dev.us-east-1"}' where client_id = 'CourseDeliveryClient';
update oauth_client_details set additional_information = '{"xid":"urn:com.mheducation.openlearning:content.courseware.author:dev.us-east-1"}' where client_id = 'CourseAssembly';
update oauth_client_details set additional_information = '{"xid":"urn:com.mheducation.openlearning:enterprise.backbone:dev.us-east-1"}' where client_id = 'Myna';

--changeset konstantin_mosounov:3 context:qastg
update oauth_client_details set additional_information = '{"xid":"urn:com.mheducation.openlearning:enterprise.portal:qastg.us-east-1"}' where client_id = 'ProductPortal';
update oauth_client_details set additional_information = '{"xid":"urn:com.mheducation.openlearning:content.complext.deliver.rubric:qastg.us-east-1"}' where client_id = 'ProductRubric';
update oauth_client_details set additional_information = '{"xid":"urn:com.mheducation.openlearning:lms.planner:qastg.us-east-1"}' where client_id = 'ProductPlanner';
update oauth_client_details set additional_information = '{"xid":"urn:com.mheducation.openlearning:content.content_tags.deliver:qastg.us-east-1"}' where client_id = 'MetadataAPIClient';
update oauth_client_details set additional_information = '{"xid":"urn:com.mheducation.openlearning:content.ped_tags.deliver:qastg.us-east-1"}' where client_id = 'StandardsClient';
update oauth_client_details set additional_information = '{"xid":"urn:com.mheducation.openlearning:content.courseware.deliver:qastg.us-east-1"}' where client_id = 'CourseDeliveryClient';
update oauth_client_details set additional_information = '{"xid":"urn:com.mheducation.openlearning:content.courseware.author:qastg.us-east-1"}' where client_id = 'CourseAssembly';
update oauth_client_details set additional_information = '{"xid":"urn:com.mheducation.openlearning:enterprise.backbone:qastg.us-east-1"}' where client_id = 'Myna';

--changeset konstantin_mosounov:4 context:qalv
update oauth_client_details set additional_information = '{"xid":"urn:com.mheducation.openlearning:enterprise.portal:qalv.us-east-1"}' where client_id = 'ProductPortal';
update oauth_client_details set additional_information = '{"xid":"urn:com.mheducation.openlearning:content.complext.deliver.rubric:qalv.us-east-1"}' where client_id = 'ProductRubric';
update oauth_client_details set additional_information = '{"xid":"urn:com.mheducation.openlearning:lms.planner:qalv.us-east-1"}' where client_id = 'ProductPlanner';
update oauth_client_details set additional_information = '{"xid":"urn:com.mheducation.openlearning:content.content_tags.deliver:qalv.us-east-1"}' where client_id = 'MetadataAPIClient';
update oauth_client_details set additional_information = '{"xid":"urn:com.mheducation.openlearning:content.ped_tags.deliver:qalv.us-east-1"}' where client_id = 'StandardsClient';
update oauth_client_details set additional_information = '{"xid":"urn:com.mheducation.openlearning:content.courseware.deliver:qalv.us-east-1"}' where client_id = 'CourseDeliveryClient';
update oauth_client_details set additional_information = '{"xid":"urn:com.mheducation.openlearning:content.courseware.author:qalv.us-east-1"}' where client_id = 'CourseAssembly';
update oauth_client_details set additional_information = '{"xid":"urn:com.mheducation.openlearning:enterprise.backbone:qalv.us-east-1"}' where client_id = 'Myna';

--changeset konstantin_mosounov:5 context:pqa
update oauth_client_details set additional_information = '{"xid":"urn:com.mheducation.openlearning:enterprise.portal:pqa.us-east-1"}' where client_id = 'ProductPortal';
update oauth_client_details set additional_information = '{"xid":"urn:com.mheducation.openlearning:content.complext.deliver.rubric:pqa.us-east-1"}' where client_id = 'ProductRubric';
update oauth_client_details set additional_information = '{"xid":"urn:com.mheducation.openlearning:lms.planner:pqa.us-east-1"}' where client_id = 'ProductPlanner';
update oauth_client_details set additional_information = '{"xid":"urn:com.mheducation.openlearning:content.content_tags.deliver:pqa.us-east-1"}' where client_id = 'MetadataAPIClient';
update oauth_client_details set additional_information = '{"xid":"urn:com.mheducation.openlearning:content.ped_tags.deliver:pqa.us-east-1"}' where client_id = 'StandardsClient';
update oauth_client_details set additional_information = '{"xid":"urn:com.mheducation.openlearning:content.courseware.deliver:pqa.us-east-1"}' where client_id = 'CourseDeliveryClient';
update oauth_client_details set additional_information = '{"xid":"urn:com.mheducation.openlearning:content.courseware.author:pqa.us-east-1"}' where client_id = 'CourseAssembly';
update oauth_client_details set additional_information = '{"xid":"urn:com.mheducation.openlearning:enterprise.backbone:pqa.us-east-1"}' where client_id = 'Myna';

--changeset konstantin_mosounov:6 context:demo
update oauth_client_details set additional_information = '{"xid":"urn:com.mheducation.openlearning:enterprise.portal:demo.us-east-1"}' where client_id = 'ProductPortal';
update oauth_client_details set additional_information = '{"xid":"urn:com.mheducation.openlearning:content.complext.deliver.rubric:demo.us-east-1"}' where client_id = 'ProductRubric';
update oauth_client_details set additional_information = '{"xid":"urn:com.mheducation.openlearning:lms.planner:demo.us-east-1"}' where client_id = 'ProductPlanner';
update oauth_client_details set additional_information = '{"xid":"urn:com.mheducation.openlearning:content.content_tags.deliver:demo.us-east-1"}' where client_id = 'MetadataAPIClient';
update oauth_client_details set additional_information = '{"xid":"urn:com.mheducation.openlearning:content.ped_tags.deliver:demo.us-east-1"}' where client_id = 'StandardsClient';
update oauth_client_details set additional_information = '{"xid":"urn:com.mheducation.openlearning:content.courseware.deliver:demo.us-east-1"}' where client_id = 'CourseDeliveryClient';
update oauth_client_details set additional_information = '{"xid":"urn:com.mheducation.openlearning:content.courseware.author:demo.us-east-1"}' where client_id = 'CourseAssembly';
update oauth_client_details set additional_information = '{"xid":"urn:com.mheducation.openlearning:enterprise.backbone:demo.us-east-1"}' where client_id = 'Myna';

--changeset konstantin_mosounov:7 context:prod
update oauth_client_details set additional_information = '{"xid":"urn:com.mheducation.openlearning:enterprise.portal:prod.us-east-1"}' where client_id = 'ProductPortal';
update oauth_client_details set additional_information = '{"xid":"urn:com.mheducation.openlearning:content.complext.deliver.rubric:prod.us-east-1"}' where client_id = 'ProductRubric';
update oauth_client_details set additional_information = '{"xid":"urn:com.mheducation.openlearning:lms.planner:prod.us-east-1"}' where client_id = 'ProductPlanner';
update oauth_client_details set additional_information = '{"xid":"urn:com.mheducation.openlearning:content.content_tags.deliver:prod.us-east-1"}' where client_id = 'MetadataAPIClient';
update oauth_client_details set additional_information = '{"xid":"urn:com.mheducation.openlearning:content.ped_tags.deliver:prod.us-east-1"}' where client_id = 'StandardsClient';
update oauth_client_details set additional_information = '{"xid":"urn:com.mheducation.openlearning:content.courseware.deliver:prod.us-east-1"}' where client_id = 'CourseDeliveryClient';
update oauth_client_details set additional_information = '{"xid":"urn:com.mheducation.openlearning:content.courseware.author:prod.us-east-1"}' where client_id = 'CourseAssembly';
update oauth_client_details set additional_information = '{"xid":"urn:com.mheducation.openlearning:enterprise.backbone:prod.us-east-1"}' where client_id = 'Myna';
