# baza podataka za nogometni_klub_zavrsni
# C:\xampp\mysql\bin\mysql -uroot --default_character_set=utf8 < C:\Users\Katica\Documents\EdunovaPP25\www\nogometniklubovi.hr\nogometni_klub_zavrsni.sql

#grant all privileges
#on nogometni_klub_zavrsni.*
#to 'nogometniklubovi'@'localhost'
#identified by 'nogometniklubovi';

drop database if exists nogometni_klub_zavrsni;
create database nogometni_klub_zavrsni;
use nogometni_klub_zavrsni;

create table igrac(
    sifra           int not null primary key auto_increment,
    ime             varchar (50) not null,
    prezime         varchar (50) not null,
    email           varchar (50),
    datum_rodenja   date,
    pozicija        varchar (20),
    klub            int not null
);

create table trener(
    sifra           int not null primary key auto_increment,
    ime             varchar (50) not null,
    prezime         varchar (50) not null,
    email           varchar (50),
    datum_rodenja   date,
    klub            int not null
);

create table stadion(
    sifra               int not null primary key auto_increment,
    naziv               varchar (30) not null,
    klub                int,
    godina_izgradnje    int,
    kapacitet           int,
    mjesto              varchar (50)
);

create table klub(
    sifra               int not null primary key auto_increment,
    naziv               varchar (40) not null,
    igrac               int,
    trener              int not null,
    godina_osnutka      int,
    vlasnik             varchar (50),
    liga                varchar (40),
    sponzor             varchar (30),
    vrijednost_kluba    decimal (18,2),
    stadion             int not null
);

create table operater(
    sifra   int not null primary key auto_increment,
    email   varchar(50) not null,
    lozinka varchar(100) not null,
    ime     varchar(50) not null,
    prezime varchar(50) not null,
    uloga   varchar(20) not null
);

# admin a 
insert into operater(email,lozinka,ime,prezime,uloga)
values
('admin@nogometniklubovi.hr','$2a$12$m/4JkxSsNySL3T0wOcdHEOvXJl/mrCKRGumBPHfzq6uTJUpbd4x6K',
'Klub','Administrator','admin');

# definiranje vanjskih ključeva

alter table klub add foreign key (igrac) references igrac (sifra);
alter table klub add foreign key (trener) references trener (sifra);
alter table klub add foreign key (stadion) references stadion (sifra);

# unos podataka


insert into stadion (sifra,naziv,klub,godina_izgradnje,
kapacitet,mjesto)
values (1,'Etihad stadium',1,2002,55000,'Manchester');

insert into klub (sifra,naziv,igrac,trener,godina_osnutka,
vlasnik,liga,sponzor,vrijednost_kluba,stadion)
values (1,'Manchester City',1,1,1880,
'City Football Group','Premier league','Puma',1200000000,1);

insert into klub (sifra,naziv,igrac,trener,godina_osnutka,
vlasnik,liga,sponzor,vrijednost_kluba,stadion)
values (2,'Manchester City',2,1,1880,
'City Football Group','Premier league','Puma',1200000000,1);

insert into klub (sifra,naziv,igrac,trener,godina_osnutka,
vlasnik,liga,sponzor,vrijednost_kluba,stadion)
values (3,'Manchester City',3,1,1880,
'City Football Group','Premier league','Puma',1200000000,1);

insert into klub (sifra,naziv,igrac,trener,godina_osnutka,
vlasnik,liga,sponzor,vrijednost_kluba,stadion)
values (4,'Manchester City',4,1,1880,
'City Football Group','Premier league','Puma',1200000000,1);

insert into klub (sifra,naziv,igrac,trener,godina_osnutka,
vlasnik,liga,sponzor,vrijednost_kluba,stadion)
values (5,'Manchester City',5,1,1880,
'City Football Group','Premier league','Puma',1200000000,1);

insert into klub (sifra,naziv,igrac,trener,godina_osnutka,
vlasnik,liga,sponzor,vrijednost_kluba,stadion)
values (6,'Manchester City',6,1,1880,
'City Football Group','Premier league','Puma',1200000000,1);

insert into klub (sifra,naziv,igrac,trener,godina_osnutka,
vlasnik,liga,sponzor,vrijednost_kluba,stadion)
values (7,'Manchester City',7,1,1880,
'City Football Group','Premier league','Puma',1200000000,1);

insert into klub (sifra,naziv,igrac,trener,godina_osnutka,
vlasnik,liga,sponzor,vrijednost_kluba,stadion)
values (8,'Manchester City',8,1,1880,
'City Football Group','Premier league','Puma',1200000000,1);

insert into klub (sifra,naziv,igrac,trener,godina_osnutka,
vlasnik,liga,sponzor,vrijednost_kluba,stadion)
values (9,'Manchester City',9,1,1880,
'City Football Group','Premier league','Puma',1200000000,1);

insert into klub (sifra,naziv,igrac,trener,godina_osnutka,
vlasnik,liga,sponzor,vrijednost_kluba,stadion)
values (10,'Manchester City',10,1,1880,
'City Football Group','Premier league','Puma',1200000000,1);

insert into klub (sifra,naziv,igrac,trener,godina_osnutka,
vlasnik,liga,sponzor,vrijednost_kluba,stadion)
values (11,'Manchester City',11,1,1880,
'City Football Group','Premier league','Puma',1200000000,1);

insert into igrac (sifra,ime,prezime,email,datum_rodenja,pozicija,klub)
values
(1,'Ederson','Moraes','ederson.moraes@gmail.com','1993-08-17','golman',1),
(2,'Kyle','Walker','kyle.walker@gmail.com','1990-05-28','desni bek',1),
(3,'Ruben','Dias','ruben.dias@gmail.com','1997-05-14','stoper',1),
(4,'John','Stones','john.stones@gmail.com','1994-05-28','stoper',1),
(5,'Joao','Cancelo','joao.cancelo@gmail.com','1994-05-27','lijevi bek',1),
(6,'Ilkay','Gundogan','ilkay.gundogan@gmail.com','1990-11-24','vezni',1),
(7,'Kevin','de Bruyne','kevin.debruyne@gmail.com','1991-06-28','vezni',1),
(8,'Rodri','Hernandez','rodri.hernandez@gmail.com','1996-06-22','vezni',1),
(9,'Bernando','Silva','bernando.silva@gmail.com','1994-08-10','vezni',1),
(10,'Riyad','Mahrez','riyad.mahrez@gmail.com','1991-02-21','napadač',1),
(11,'Gabriel','Jesus','gabriel.jesus@gmail.com','1997-04-03','napadač',1);

insert into trener (sifra,ime,prezime,email,
datum_rodenja,klub)
values (1,'Pep','Guardiola','pep.guardiola@gmail.com',
'1971-01-18',1);

insert into stadion (sifra,naziv,klub,godina_izgradnje,
kapacitet,mjesto)
values (2,'Gradski vrt',2,1980,17060,'Osijek');

insert into klub (sifra,naziv,igrac,trener,godina_osnutka,
vlasnik,liga,sponzor,vrijednost_kluba,stadion)
values (12,'Nk Osijek',12,2,1947,
'Osijek','Hrvatska liga','2Rule',36000000,2);

insert into klub (sifra,naziv,igrac,trener,godina_osnutka,
vlasnik,liga,sponzor,vrijednost_kluba,stadion)
values (13,'Nk Osijek',13,2,1947,
'Osijek','Hrvatska liga','2Rule',36000000,2);

insert into klub (sifra,naziv,igrac,trener,godina_osnutka,
vlasnik,liga,sponzor,vrijednost_kluba,stadion)
values (14,'Nk Osijek',14,2,1947,
'Osijek','Hrvatska liga','2Rule',36000000,2);

insert into klub (sifra,naziv,igrac,trener,godina_osnutka,
vlasnik,liga,sponzor,vrijednost_kluba,stadion)
values (15,'Nk Osijek',15,2,1947,
'Osijek','Hrvatska liga','2Rule',36000000,2);

insert into klub (sifra,naziv,igrac,trener,godina_osnutka,
vlasnik,liga,sponzor,vrijednost_kluba,stadion)
values (16,'Nk Osijek',16,2,1947,
'Osijek','Hrvatska liga','2Rule',36000000,2);

insert into klub (sifra,naziv,igrac,trener,godina_osnutka,
vlasnik,liga,sponzor,vrijednost_kluba,stadion)
values (17,'Nk Osijek',17,2,1947,
'Osijek','Hrvatska liga','2Rule',36000000,2);

insert into klub (sifra,naziv,igrac,trener,godina_osnutka,
vlasnik,liga,sponzor,vrijednost_kluba,stadion)
values (18,'Nk Osijek',18,2,1947,
'Osijek','Hrvatska liga','2Rule',36000000,2);

insert into klub (sifra,naziv,igrac,trener,godina_osnutka,
vlasnik,liga,sponzor,vrijednost_kluba,stadion)
values (19,'Nk Osijek',19,2,1947,
'Osijek','Hrvatska liga','2Rule',36000000,2);

insert into klub (sifra,naziv,igrac,trener,godina_osnutka,
vlasnik,liga,sponzor,vrijednost_kluba,stadion)
values (20,'Nk Osijek',20,2,1947,
'Osijek','Hrvatska liga','2Rule',36000000,2);

insert into klub (sifra,naziv,igrac,trener,godina_osnutka,
vlasnik,liga,sponzor,vrijednost_kluba,stadion)
values (21,'Nk Osijek',21,2,1947,
'Osijek','Hrvatska liga','2Rule',36000000,2);

insert into klub (sifra,naziv,igrac,trener,godina_osnutka,
vlasnik,liga,sponzor,vrijednost_kluba,stadion)
values (22,'Nk Osijek',22,2,1947,
'Osijek','Hrvatska liga','2Rule',36000000,2);

insert into igrac (sifra,ime,prezime,email,datum_rodenja,pozicija,klub)
values
(12,'Ivica','Ivušić','ivica.ivusic@gmail.com','1995-02-01','golman',12),
(13,'Mihael','Žaper','mihael.zaper@gmail.com','1998-08-11','stoper',13),
(14,'Yevgen','Cheberko','yevgen.cheberko@gmail.com','1998-01-23','stoper',14),
(15,'Mile','Škorić','mile.skoric@gmail.com','1991-06-19','stoper',15),
(16,'Marin','Leovac','marin.leovac@gmail.com','1988-08-07','lijevo krilo',16),
(17,'Vedran','Jugović','vedran.jugovic@gmail.com','1989-07-31','vezni',17),
(18,'Darko','Nejašmić','darko.nejasmic@gmail.com','1999-01-25','vezni',18),
(19,'Šime','Gržan','sime.grzan@gmail.com','1993-11-30','desno krilo',19),
(20,'Mijo','Caktaš','mijo.caktas@gmail.com','1992-05-08','vezni',20),
(21,'Ramon','Mierez','ramon.mierez@gmail.com','1997-05-13','napadač',21),
(22,'Antonio','Mance','antonio.mance@gmail.com','1995-08-07','napadač',22);

insert into trener (sifra,ime,prezime,email,
datum_rodenja,klub)
values (2,'Rene','Poms','rene.poms@gmail.com',
'1975-07-05',12);