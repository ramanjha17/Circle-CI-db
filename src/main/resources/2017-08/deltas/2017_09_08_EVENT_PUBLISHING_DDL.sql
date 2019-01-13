--liquibase formatted sql

--changeset anand_joshi:1
CREATE TABLE IF NOT EXISTS event_message (
  event_id VARCHAR(255) NOT NULL,
  channel VARCHAR(10) NOT NULL,
  destination VARCHAR(256),
  converter VARCHAR(50) NOT NULL,
  message TEXT NOT NULL,
  message_id VARCHAR(255),
  created_date TIMESTAMP NOT NULL,
  lock_id VARCHAR(255),
  locked_until TIMESTAMP,
  PRIMARY KEY(event_id, channel, converter)
);

CREATE INDEX IDX_EVENT_MESSAGE_LOCK_ID ON event_message(lock_id);
CREATE INDEX IDX_EVENT_MESSAGE_MESSAGE_ID ON event_message(message_id);

CREATE TABLE IF NOT EXISTS event_audit (
  id VARCHAR(255) PRIMARY KEY,
  type VARCHAR(50) NOT NULL,
  created_date TIMESTAMP NOT NULL,
  principal VARCHAR(256) NOT NULL,
  entity_type VARCHAR(50) NOT NULL,
  entity_id VARCHAR(256)
);
