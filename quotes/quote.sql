create table quote
(
id int auto_increment primary key,
msg varchar(500) NOT null
);
insert into quote (id,msg) values (1,"Das ist der erste Eintrag");
insert into quote (id,msg) values (2,"Das ist der zweite Eintrag");
insert into quote (id,msg) values (3,"Das ist der drittte Eintrag");
