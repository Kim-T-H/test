SET SESSION FOREIGN_KEY_CHECKS=0;

/* Drop Tables */

DROP TABLE IF EXISTS Board;




/* Create Tables */

CREATE TABLE Board
(
	no int(11) NOT NULL,
	bno int(11) NOT NULL,
	name varchar(20) NOT NULL,
	title varchar(100),
	content varchar(4000),
	regdate datetime,
	open boolean,
	PRIMARY KEY (no, bno)
);



