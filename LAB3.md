# lab3,zadanie część 1
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
