create table member (
	memberId varchar2(20) ,
	memberPass varchar2(20),
	memberName varchar2(20),
	memberEmail varchar2(40),
	memberAddress varchar2(60)
);

create table mathome (
	doh varchar2(20),
	si varchar2(20),
	gu varchar2(20),
	matname varchar2(40)
);


insert into member values('id1','1111','이범준','leebj91@naver.com','임시주소');
insert into mathome values('서울시','서울시','강남구','새마을식당') 