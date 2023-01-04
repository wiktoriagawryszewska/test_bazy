#lab7,zadanie1
```sql
DELETE FROM kreatura;

INSERT INTO kreatura
SELECT * FROM wikingowie.kreatura;
CREATE TABLE uczestnicy 
AS (SELECT * FROM wikingowie.uczestnicy);
CREATE TABLE etapy_wyprawy 
AS (SELECT * FROM wikingowie.etapy_wyprawy);
CREATE TABLE sektor
AS (SELECT * FROM wikingowie.sektor);
CREATE TABLE wyprawa
AS (SELECT * FROM wikingowie.wyprawa);




SELECT kreatura.nazwa
FROM kreatura LEFT OUTER JOIN uczestnicy 
ON kreatura.idKReatury = uczestnicy.id_uczestnika
WHERE id_wyprawy IS NULL;


SELECT wyprawa.nazwa, SUM(ekwipunek.ilosc)
FROM wyprawa
INNER JOIN uczestnicy ON wyprawa.id_wyprawy = uczestnicy.id_wyprawy
INNER JOIN ekwipunek ON ekwipunek.idKreatury = uczestnicy.id_uczestnika
GROUP BY wyprawa.nazwa;
```

#lab7,zadanie2
```sql
SELECT wyprawa.nazwa, COUNT(*), GROUP_CONCAT(kreatura.nazwa)
FROM wyprawa
INNER JOIN uczestnicy ON wyprawa.id_wyprawy = uczestnicy.id_wyprawy
INNER JOIN kreatura ON kreatura.idKreatury = uczestnicy.id_uczestnika
GROUP BY wyprawa.nazwa;



SELECT wyprawa.nazwa AS nazwa_wyprawy,etap.idEtapu,sektor.nazwa AS nazwa_sektoru,kreatura.nazwa AS kierownik
FROM wyprawa
INNER JOIN etapy_wyprawy as etap ON etap.idWyprawy = wyprawa.id_wyprawy
INNER JOIN sektor ON sektor.id_sektora = etap.sektor
INNER JOIN kreatura ON wyprawa.kierownik = kreatura.idKreatury
ORDER BY wyprawa.data_rozpoczecia,wyprawa.id_wyprawy,etap.kolejnosc;
```
#lab7,zadanie3
```sql

SELECT sektor.nazwa,ifnull(count(etapy_wyprawy.sektor),0) AS ilosc_odwiedzin 
FROM sektor 
LEFT JOIN etapy_wyprawy ON etapy_wyprawy.sektor=sektor.id_sektora
GROUP BY sektor.id_sektora;


SELECT kreatura.nazwa, 
IF(COUNT(uczestnicy.id_wyprawy)>0,"brał udział w wyprawie","nie brał udziału w wyprawie") AS czyBralUdzial
FROM kreatura
LEFT JOIN uczestnicy 
ON kreatura.idKreatury = uczestnicy.id_uczestnika
GROUP BY kreatura.nazwa;
```
#lab7,zadanie4
```sql
SELECT wyprawa.nazwa, SUM(length(dziennik)) FROM wyprawa
JOIN etapy_wyprawy ON wyprawa.id_wyprawy = etapy_wyprawy.idWyprawy
GROUP BY wyprawa.nazwa
HAVING SUM(length(dziennik))<400;

SELECT wyprawa.nazwa, SUM(zasob.waga*ekwipunek.ilosc)/COUNT(distinct(uczestnicy.id_uczestnika)) 
FROM uczestnicy 
JOIN wyprawa ON (uczestnicy.id_wyprawy=wyprawa.id_wyprawy) 
JOIN kreatura ON (kreatura.idKreatury=uczestnicy.id_uczestnika) 
JOIN ekwipunek ON (ekwipunek.idKreatury=kreatura.idKreatury) 
JOIN zasob ON (ekwipunek.idZasobu=zasob.idZasobu) 
GROUP BY uczestnicy.id_wyprawy 
ORDER BY wyprawa.id_wyprawy;

```
#lab7,zadanie5
```sql
SELECT wyprawa.nazwa,kreatura.nazwa,datediff(data_rozpoczecia,dataUr)
FROM kreatura
JOIN uczestnicy ON uczestnicy.id_uczestnika = kreatura.idKreatury
JOIN wyprawa ON wyprawa.id_wyprawy = uczestnicy.id_wyprawy
JOIN etapy_wyprawy AS etapy ON etapy.idWyprawy = wyprawa.id_wyprawy
WHERE sektor = 7
ORDER BY wyprawa.nazwa
```

