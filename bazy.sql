# lab 4, Zadanie 1
select * from postac;
delete from postac where id_postaci= 6;
select * from postac;
delete from postac where id_postaci= 7;

alter table postac drop primary key;
#problem 1 - atrybut auto_increment
alter table postac change id_postaci id_postaci int;
#lub
#alter table postac modify id_postaci int;
set foreign_key_checks = 0;
#show create table postac;
#klucz w tabeli walizka
#klucze tabeli przetwory
show create table przetwory;
alter table przetwory drop foreign key przetwory_ibfk_1;
show create table walizka;
alter table walizka drop foreign key walizka_ibfk_1;
show create table przetwory;
alter table przetwory drop foreign key przetwory_ibfk_2;
show create table izba;
alter table izba drop foreign key izba_ibfk_1;
#lab4, zadanie2
alter table postac add pesel char(11) first;
alter table postac add primary key(pesel);
update postac set pesel = '64335466789' + id_postaci;
describe postac;
#lab4, zadanie2b
alter table postac modify rodzaj enum('ptak','wiking','kobieta','syreny'); 
insert into
#lab4, zadanie 3
select nazwa from postac where nazwa LIKE '%a%';

#lab4, zadanie3
update postac set statek='Statek Bjorna' where nazwa LIKE '%a%';
#lab4, zadanie3b
update statek set max_ladownosc=max_ladownosc * 0.7 where...;
#lab4, zadanie3c
alter table postac add check(wiek <= 1000);
show create table postac;
#lab4, zadanie4a
#modyfikacja kolumny rodzaj w tabeli postac(dodanie w wartosci waz)
#dodanie weza loko 
alter table postac modify rodzaj enum('ptak','wiking','kobieta','syreny','waz');
select * from postac;
insert into postac values('34567895432','9','Loko','waz','1987-12-09','40', null,null);
#b
#uzycie create z like
create table marynarz like postac;
create table marynarz select * from postac where nazwa_statku != null;
drop table marynarz;
#lub
#uzycie create table... select...
# create table marynarz select * from postac;
#c 
#dodac ewentualnie brakujace klucze glowne i obce
alter table marynarz add foreign key(postac); 

#lab4,zadanie5a
#dokonczyc
