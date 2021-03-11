import java.util.Scanner;

public class laco1 {
    public static void main(String[] args) {

        Scanner ler = new Scanner(System.in);

        float media;
        int total=0;
        int pessoas=0;

        do {

            System.out.println("Informe a idade para calcular a média:");
            int idade = ler.nextInt();

            total += idade;
            pessoas++;
            media = total/pessoas;

        }while (media <20);

        System.out.println("Média superior a 20, programa encerrado!!");
        System.out.println("Número total de pessoas: "+pessoas);
        System.out.println("Média total: "+media);
    }
}