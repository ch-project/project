CREATE TABLE PLAYER( 
PLAYER_ID number(6) PRIMARY KEY,
NAME VARCHAR2(30) NOT NULL,
TEAM_ID number NOT NULL,
FOREIGN KEY(TEAM_ID) REFERENCES TEAM(TEAM_ID) 
);


insert into item values('id1','1111','이범준','leebj91@naver.com','임시주소');

