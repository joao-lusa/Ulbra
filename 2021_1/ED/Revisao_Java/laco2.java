import java.util.Scanner;

public class laco2 {
    public static void main(String[] args) {

        Scanner x = new Scanner(System.in);

        float media;
        int total=0;
        int pessoas=0;

        do {

            System.out.println("Informe a idade para calcular a média:");
            int idade = x.nextInt();

            total += idade;
            pessoas++;
            media = total/pessoas;

        }while (media < 20 && pessoas < 10);

        System.out.println("Média superior a 20, ou passou de 10 pessoas");
        System.out.println("Número total de pessoas: " +pessoas);
        System.out.println("Média total: " +media);
    }
}
