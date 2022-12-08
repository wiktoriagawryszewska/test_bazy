# lab6, zadanie1
```sql
SELECT AVG(waga)
FROM kreatura
WHERE rodzaj = 'wiking';

 SELECT AVG(waga), COUNT(*)
 FROM kreatura
 GROUP BY rodzaj;
 
 SELECT AVG(YEAR(CURDATE())-YEAR(dataUr) ,rodzaj 
AS 'sredni wiek' 
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
