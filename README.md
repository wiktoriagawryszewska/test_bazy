
Napisz skrypt, który przy uruchomieniu pobiera przynajmniej 2 parametry – słowa –
jeżeli ich ilość będzie mniejsza od 2 – wyświetla komunikat o błędzie i koniec skryptu
z kodem 11. Jeżeli ilość parametrów będzie równa 2 to skrypt tworzy w katalogu
bieżącym podkatalog o nazwie podanej jako drugi parametr. Jeżeli ilość parametrów
równa 3 oraz pierwsze słowo = „szukaj” to skrypt przeszukuje katalog domowy i
podlicza, ile plików zwykłych on zawiera.
nano costam

#!/bin/bash
if( "$#" -lt 2 )then
echo "za malo parametrow"
exit 11
fi

if( "$#" -eq 0 ) then
mkdir "$2"
echo "utworzono podkatalog o nazwie '$2'"
elif( "$#" -eq 3 ) && ( "$1" = "szukaj") then
iloscplikow=$(find ~ -type f | wc -l)
echo "liczba plikow w katalogu domowym: $iloscplikow"
fi


chmod 755 costam
./costam


