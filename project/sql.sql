create database prodb;

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
	matname varchar2(40),
	description varchar2(2000)
);


insert into member values('id1','1111','이범준','leebj91@naver.com','임시주소');

insert into mathome values('서울시','서울시','강남구','새마을식당','맛있다');
insert into mathome values('경기도','고양시','덕양구','국수전문점','설명2');
insert into mathome values('강원도','ㅁㅁ시','ㄹㄹ구','고깃집','설명3');
insert into mathome values('전라도','ㄴㄴ시','ㅎㅎ구','국밥집','설명4');
insert into mathome values('제주도','ㅇㅇ시','ㅅㅅ구','일식집','설명5');


