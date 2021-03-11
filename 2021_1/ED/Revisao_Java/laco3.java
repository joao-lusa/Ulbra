import java.util.Scanner;

public class laco3 {

    public static void main(String[] args) {
        Scanner ler = new Scanner(System.in);

        float media;
        int total=0;
        int numeros=0;
        int n;

        do {

            System.out.println("Informe números inteiros: ");
            n = ler.nextInt();

            total += n;
            numeros++;
            media = total/numeros;

        }while (n !=99);

        System.out.println("Número 99 informado, programa encerrado!!");
        System.out.println("Soma dos valores lidos: "+total);
        System.out.println("Média total dos números: "+media);
    }
}
