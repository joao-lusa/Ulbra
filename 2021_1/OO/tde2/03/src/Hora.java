import java.util.Scanner;

public class Hora {
    public int segundos;
    public int minutos;
    public int horas;
    public boolean resultado;

    Scanner tc= new Scanner(System.in);

    public void lerHora(){

        do {
            System.out.println("Informe os segundos: ");
            this.segundos=tc.nextInt();
        }while (this.segundos<0 || this.segundos>=60);

        do {
            System.out.println("Informe os minutos: ");
            this.minutos=tc.nextInt();
        }while (this.minutos<0 || this.minutos>=60);

        do {
            System.out.println("Informe as horas: ");
            this.horas=tc.nextInt();
        }while (this.horas<0 || this.horas>=24);

    }

    public void informarHora(){
        System.out.println(this.horas+":"+this.minutos+":"+this.segundos+" foi válido!");
    }
}
