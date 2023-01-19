# lab2,zadanie część 1
```sql
1
SELECT nazwisko FROM pracownik ORDER BY nazwisko ASC;

2
SELECT imie, nazwisko, pensja 
FROM pracownik 
ORDER BY data_urodzenia > 1979;

3
SELECT * FROM pracownik 
WHERE pensja BETWEEN 3500 AND 5000;

4
SELECT towar 
FROM stan_magazynowy
WHERE ilosc > 10;

5
SELECT * FROM towar 
WHERE nazwa_towaru LIKE 'A%' 
OR nazwa_towaru LIKE 'B%' 
OR nazwa_towaru LIKE 'C%';

6
SELECT DISTINCT * FROM klient
WHERE czy_firma = 0;

7
SELECT * FROM zamowienie
ORDER BY data_zamowienia 
LIMIT 10;

8
SELECT * FROM pracownik
ORDER BY pensja DESC
LIMIT 5;

9
SELECT* FROM towar
WHERE nazwa_towaru NOT LIKE '%a%'
ORDER BY cena_zakupu DESC
LIMIT 10;

10

11
CREATE TABLE towary_powyzej_100 AS
SELECT * FROM towar WHERE cena >= 100;


```
# lab3,zadanie część 1
1
  SELECT p.imie, p.nazwisko, d.nazwa
 FROM pracownik AS p
 JOIN dzial AS d
 ON p.id_pracownika = d.id_pracownika;?
 
 2
 SELECT t.nazwa_towaru, k.nazwa_kategori, s.ilosc
 FROM towar AS t
 JOIN kategoria AS k
 ON t.id_towaru=k.id_towaru
 JOIN stan_magazynowy AS s
 ON k.id_kategori = s.id_kategori; ?
 
 3
 SELECT dzial.nazwa, COUNT(pracownik.id_pracownika) 
 FROM dzial 
 INNER JOIN pracownik 
 ON dzial.id_dzialu=pracownik.dzial 
 GROUP BY dzial.nazwa;
 
 4
 SELECT nazwa_kategori, COUNT(towar.id_towaru) 
 FROM kategoria
 INNER JOIN towar 
 ON kategoria.id_kategori=towar.kategoria 
 GROUP BY id_kategori;
 
 5
 
select nazwa_kategori ,group_concat(nazwa_towaru) 
from kategoria k 
inner join towar t 
on k.id_kategori=t.kategoria 
group by kategoria;

6
select Round(AVG(pensja),'2') 
from pracownik;

7
select AVG(pensja) 
from pracownik 
where YEAR(CURDATE())-YEAR(data_zatrudnienia)>=5;

8
select nazwa_towaru,SUM(ilosc) 
from towar t 
inner join  pozycja_zamowienia p 
on t.id_towaru=p.towar 
group by id_towaru 
order by SUM(ilosc) DESC LIMIT 10;

9
select numer_zamowienia,SUM(ilosc*cena) 
from zamowienie z 
inner join pozycja_zamowienia p 
on z.id_zamowienia=p.zamowienie 
where YEAR(data_zamowienia)=2017 
and Month(data_zamowienia) Between 1 and 3 
group by id_zamowienia;

10
select imie ,nazwisko ,Sum(ilosc*cena) 
from pracownik p 
inner join zamowienie z  
on p.id_pracownika=z.pracownik_id_pracownika 
inner join pozycja_zamowienia pz 
on z.id_zamowienia=pz.zamowienie 
group by id_pracownika  
order by Sum(ilosc*cena); 
 
