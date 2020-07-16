	create table board_guest(
	num NUMBER PRIMARY KEY,
	writer VARCHAR2(50) NOT NULL,
	title VARCHAR2(100) NOT NULL,
	content CLOB,
	regdate DATE
	);