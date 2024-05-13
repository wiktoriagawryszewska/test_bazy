
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

Utwórz skrypt, który wczytuje parametry i sprawdza czy wartość pierwszego parametru się
powtarza wśród pozostałych, i podlicza – ile razy się powtarza.
nano zadanie4

#!/bin/bash
licznik=0
 for parametr in "$@"; do
 if [ "$parametr" == "$1" ]; then
 licznik=$((licznik +1))
fi
done
echo "liczba powtorzen $licznik"

chmod 755 zadanie4
./zadanie4 

nano zadaie5

#!/bin/bash
nazwa=$0
echo "$nazwa"
if [ "$1" == "$nazwa" ]; then
echo "wyraz rowny nazwie skryptu $nazwa"
else
echo "wyraz nie rowny nazwie skryptu $nazwa"
fi
chmod 755 zadanie5
./zadanie5


nano zadanie6
#!/bin/bash
if [ "$#" -gt 3 ]; then
    echo "$1 $3"
fi

if [ "$1" = "$3" ]; then
    echo "są równe"
else
    echo "nie są równe"
fi

if [ "$#" -le 3 ]; then
    exit 17
fi
chmod 755 zadanie6
./zadanie6 p1 p2 p1


nano zadanie7
#!/bin/bash

if [ "$#" -gt 4 ]; then
    exit 25
fi

if [ "$#" -eq 1 ] && [ "$1" = "drzewo" ]; then
    tree
fi

if [ "$#" -eq 1 ] && [ "$1" = "zwykle" ]; then
    x=$(find . -type f)
    echo "$x"
fi

if [ "$#" -le 4 ]; then
    exit 123
fi

chmod 755 zadanie7
./zadanie7 drzewo
./zadanie7 zwykle

nano zadanie8

#!/bin/bash

who | wc -l

chmod 755 zadanie8
./zadanie8




nano konstrukcje3

#!/bin/bash

teks=$1

case "$teks" in
  lista)
    ls
    echo "Wybrano opcję nr 1"
    ;;

  drzewo|las)
    tree
    echo "Wybrano opcję nr 2"
    ;;

  "gdzie ja jestem")
    pwd
    echo "Inna opcja"
    ;;

  *)
    echo "Inna opcja"
    echo "Twój login: $USER"
    ;;
esac

chmod 755 konstrukcje3
./konstrukcje3 las


nano konstrukcje1

#!/bin/bash

counter=10
until [ $counter -gt 35 ]; do
echo $counter
((counter++))
done

counter=35
until [ $counter -lt 10 ]; do
echo $counter
((counter--))
done

 chmod 755 konstrukcje1
./konstrukcje1


nano konstrukcje2
#!/bin/bash

x=$(find . -type d)

echo "$x"

echo "$x" | wc -l

chmod 755 konstrukcje2
./konstrukcje2




