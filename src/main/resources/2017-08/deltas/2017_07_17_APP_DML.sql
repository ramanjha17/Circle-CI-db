--liquibase formatted sql

--changeset pawan_pangty:1
insert into account(user_name, password, active) values('test', '$6$rounds=5000$o21o548/rTUas0ZR$OFHOZl5XBNjK1Fm0hSDC5Rfmn0.Y7/IIElXlp51y0EU/rEjoJzBzQ17nqe7MGwB1FOjUBWvzIUpO7tXR09MEr1', 1);
