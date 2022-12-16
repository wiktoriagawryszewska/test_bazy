#2
select u.id_uczestnika, group_conact(k.nazwa separator '/' )
from wyprawa w
left join uczestnicy u on w.id_wyprawy = u.id_wyprawy
left join kreatura k on k.idKreatury = u.id_uczestnika
group by w.id_wyprawy;

