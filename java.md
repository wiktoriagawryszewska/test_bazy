public class Main {
    public static void main(String[] args) {

        Scanner scanner = new Scanner(System.in);

        if(args.lengh !=3)
        {
            System.out.println("podaj 3 liczby");
            return;

        }

        int liczba1= Integer.parseInt(args[0]);
        int liczba2= Integer.parseInt(args[1]);
        int liczba3= Integer.parseInt(args[2]);

        int najwieksza= liczba1;

        if(liczba2> najwieksza)
        {
            najwieksza= liczba2;
        }
        if(liczba3>najwieksza)
        {
            najwieksza= liczba3;
        }
        System.out.println(najwieksza);



    }
}



public class Main {
    public static void main(String[] args) {

        Scanner scanner = new Scanner(System.in);

        
        System.out.println("podaj liczbe");
        int liczba= scanner.nextInt();
        int odwrocona = 0;
        
        while (liczba>0)
        {
            int cyfra = liczba % 10;
            odwrocona= odwrocona*10+cyfra;
            liczba /=10;
            
        }
        System.out.println(odworconaliczba);
        scanner.close();
        



    }
}

public class Main {
    public static void main(String[] args) {

        int suma=0;
        int liczba=1;
        while(liczba <=50)
        {
            suma+=liczba;
            liczba++;
        }
        
        System.out.println(suma);



    }
}

public class Main {
    public static void main(String[] args) {

       
        for(i=1; i<=100;i++)
        {
            System.out.println(i);
        }



    }
}
