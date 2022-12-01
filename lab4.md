# lab 4, Zadanie 1
```sql
select * from postac;
delete from postac where id_postaci= 6;
select * from postac;
delete from postac where id_postaci= 7;

alter table przetwory drop foreign key przetwory_ibfk_1;
alter table walizka drop foreign key walizka_ibfk_1;
alter table przetwory drop foreign key przetwory_ibfk_2;
alter table izba drop foreign key izba_ibfk_1;

alter table postac change id_postaci id_postaci int;
set foreign_key_checks = 0;
alter table postac drop primary key;

```

# lab4, zadanie2

```sql
alter table postac add pesel char(11) first;
alter table postac add primary key(pesel);
update postac set pesel = '64335466789' + id_postaci;


alter table postac modify rodzaj enum('ptak','wiking','kobieta','syreny'); 

insert into ... values
```


# lab4, zadanie 3
```sql
update postac set statek='Statek Bjorna' where nazwa LIKE '%a%';

update statek set max_ladownosc=max_ladownosc * 0.7 where...;

alter table postac add check(wiek <= 1000);

```

# lab4, Zadanie 4
```sql
alter table postac modify rodzaj enum('ptak','wiking','kobieta','syreny','waz');
select * from postac;
insert into postac values('34567895432','9','Loko','waz','1987-12-09','40', null,null);

CREATE TABLE marynarz AS
  SELECT *
  FROM postac
  WHERE nazwa_statku IS NOT NULL;
 
ALTER TABLE marynarz 
ADD PRIMARY KEY (pesel);

ALTER TABLE marynarz
ADD FOREIGN KEY (nazwa_statku) REFERENCES statek(nazwa);
```
# lab4, zadanie 5
```sql
UPDATE marynarz
SET nazwa_statku = NULL

DELETE FROM postac WHERE rodzaj = 'wiking' LIMIT 1;

DELETE FROM statek;

DROP TABLE statek;

CREATE TABLE zwierz (
id_zwierz INT(20) AUTO_INCREMENT,
nazwa VARCHAR(200),
wiek INT(20),
PRIMARY KEY(`id_zwierz`));

INSERT INTO zwierz(id_zwierz, nazwa, wiek) 
SELECT id_postaci, nazwa, wiek
FROM postac
WHERE rodzaj NOT IN ('wiking','kobieta');

```
