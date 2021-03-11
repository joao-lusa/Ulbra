import java.util.Scanner;

public class laco4 {

    public static void main(String[] args) {
        Scanner ler = new Scanner(System.in);

        float media = 0;
        int total = 0;
        int numeros = 0;
        int n;



        do {

            System.out.println("\nPara encerrar o programa digite 0.");
            System.out.println("Informe números inteiros: ");
            n = ler.nextInt();

            if (n%3==0 && n!=0) {
                total += n;
                numeros++;
                media = total / numeros;
            }
        }while (n !=0);

        System.out.println("Número 0 informado, programa encerrado!!");
        System.out.println("Média total dos números múltiplos de 3: "+media);
    }
}
