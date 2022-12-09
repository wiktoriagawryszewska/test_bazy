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
# 3 zlaczanie tabel
  #zlaczanie wewnetrzne czesc wspolna
  SELECT* FROM kreatura AS k, ekwipunek e
  WHERE k.idKreatury = e.idKreatury;
  # teraz inner join
  
  SELECT * FROM kreatura k 
  INNER JOIN ekwipunek e
  ON k.idKreatury = e.idKreatury
  INNER JOIN zasob z ON e.idZasobu = z.idZasobu;
  
  #b
  SELECT * FROM kreatura;
  SELECT * FROM kreatura k
  INNER JOIN nazwa n 
  ON n.idKreatury = k.idKreatur;
  
  #c
  SELECT * FROM kreatura k
  LEFT JOIN ekwipunek e 
  ON k.idKreatury=e.idKreatury
  WHERE e.idKreatury IS NOT NULL;
  
  SELECT * FROM kreatura WHERE idKreatury NOT IN
  (SELECT DISTINCT idKreatury FROM ekwipunek 
  WHERE idKreatury IS NOT NULL );
  
  #4
  SELECT * FROM postac;
  SELECT nazwa 
  FROM postac 
  WHERE rodzaj = 'wiking' 
  AND YEAR(data_ur) BETWEEN 1671  and 1679;
