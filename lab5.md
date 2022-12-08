# lab5, zadanie 1
```sql
CREATE TABLE kreatura AS SELECT * FROM wikingowie.kreatura;

CREATE TABLE zasob AS SELECT * FROM wikingowie.zasob;
 
CREATE TABLE ekwipunek AS SELECT * FROM wikingowie.ekwipunek;

```

# lab5, zadanie 2
```sql
SELECT * FROM kreatura
WHERE nazwa != 'wiedzma' 
AND udzwig >= 50;

SELECT * FROM postac WHERE waga BETWEEN 2 AND 5;

SELECT * FROM kreatura 
WHERE waga BETWEEN 30 AND 70
AND nazwa LIKE 'or%';
```

# lab5, zadanie 3
```sql
SELECT dataUr,
--MONTH(dataUr)
--YEAR(dataUr)
--DAY(dataUr)
FROM kreatura
WHERE MONTH(dataUr) IN(7,8);

SELECT typ FROM zasob where rodzaj IS NULL;

SELECT *
FROM zasob
WHERE rodzaj IS NOT NULL
ORDER BY waga; 

SELECT * FROM kreatura 
ORDER BY dataUr
DESC LIMIT 5;

```

# lab5, zadanie 4
```sql
SELECT DISTINCT rodzaj FROM zasob
WHERE rodzaj IS NOT NULL;

SELECT CONCAT(nazwa,'-',rodzaj)
FROM kreatura
WHERE rodzaj LIKE 'wi%';

SELECT nazwa, ilosc*waga FROM zasob
WHERE dataPozyskania BETWEEN 2000 AND 2007;


```
# lab5, zadanie 5
```sql
SELECT nazwa
		,(ilosc*waga)*0,7 AS waga_netto
        ,(ilosc*waga)*0,3 AS odpadki
        FROM zasob;

SELECT * FROM zasob WHERE rodzaj = NULL;

SELECT distinct(rodzaj)  FROM zasob where nazwa LIKE 'Ba%'
OR nazwa LIKE 'os%';  
```
