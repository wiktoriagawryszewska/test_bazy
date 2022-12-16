# lab6, zadanie1
```sql
SELECT AVG(waga)
FROM kreatura
WHERE rodzaj = 'wiking';

 SELECT AVG(waga), COUNT(*)
 FROM kreatura
 GROUP BY rodzaj;
 
SELECT rodzaj,AVG(YEAR(CURDATE())-YEAR(dataUr)) 
AS sredni_wiek 
FROM kreatura 
GROUP BY rodzaj;
 
```
# lab6, zadanie 2

```sql
SELECT rodzaj, SUM(waga)
FROM zasob
GROUP BY rodzaj;

SELECT nazwa, AVG(waga)
FROM zasob
GROUP BY rodzaj
HAVING SUM(waga) > 10 AND AVG(ilosc) >= 4;

SELECT rodzaj, COUNT(DISTINCT(nazwa))
FROM zasob
GROUP BY rodzaj
HAVING MIN(ilosc) > 1;


```
# lab6, zadanie 3 
```sql
select k.idKreatury, k.nazwa, SUM(e.ilosc)
from kreatura k 
left join ekwipunek e 
on k.idKreatury = e.idKreatury
group by k.idKreatury;

SELECT k.idKreatury, k.nazwa, z.nazwa
from kreatura k 
left join ekwipunek e
on e.idKreatury = k.idKreatury
left join zasob z
on z.idZasobu = e.idZasobu;

select k.idKreatury, k.nazwa
from kreatura k
left join ekwipunek e
on e.idKreatury = k.idKreatury
where e.idKreatury is null;
  ```
  # lab6,zadanie4
  ```sql
 SELECT * FROM kreatura;
  SELECT k.nazwa, z.nazwa 
  FROM kreatura k
  join ekwipunek e on k.idKreatury=e.idKreatury
  join zasob z on z.idZasobu=e.idZasobu
  WHERE k.rodzaj = 'wiking' 
  AND YEAR(k.dataUr) BETWEEN 1670  and 1679;
  
  select k.idKreatury, k.nazwa, k.dataUr
from kreatura k
left join ekwipunek e
on k.idKreatury = e.idKreatury
left join zasob z
on e.idZasobu = z.idZasobu
where z.rodzaj = 'jedzenie'
order by k.dataUr DESC limit 5;
```
# lab6, zadanie 5
```sql
select k.rodzaj, avg(z.waga * e.ilosc)
from kreatura k
left join ekwipunek e 
on k.idKreatury = e.idKreatury
left join zasob z
on z.idZasobu = e.idZasobu
where k.rodzaj not in ('malpa' , 'waz')
group by k.rodzaj
having sum(e.ilosc) < 30;

SELECT rodzaj,'Najstarszy' AS wiek , nazwa, dataUr
FROM kreatura
WHERE dataUR in
(SELECT min(dataUr) AS dataUr
FROM kreatura
GROUP BY rodzaj)
UNION ALL
SELECT rodzaj,'Najmlodszy' AS wiek ,nazwa, dataUr
FROM kreatura
WHERE dataUR in
(SELECT max(dataUr) AS dataUr
FROM kreatura
GROUP BY rodzaj)
ORDER BY rodzaj;
```
