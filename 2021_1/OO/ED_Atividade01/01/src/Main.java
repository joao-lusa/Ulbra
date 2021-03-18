import java.util.Scanner;

public class Main {
    //Escreva uma classe que Leia 5 nomes e notas de uma turma, calcula e exibe a média das notas da turma e em seguida
    // exibe a relação de nomes cuja nota é superior a esta média. Utilize vetores para armazenar as notas.
    public static void main(String[] args) {

        Scanner ler = new Scanner(System.in);

        String aluno[] = new String[5];
        double nota[] = new double[5];
        double notasTotal = 0;
        double media;

        for (int i = 0; i <4; i++) {
            System.out.println("digite o nome do aulo: ");
            aluno[i]= ler.next();
            System.out.println("digite a nota do auno: ");
            nota[i] = ler.nextDouble();

            notasTotal+=nota[i];
        }

        media=notasTotal/5;
        for (int i = 0; i <4; i++) {
            if(nota[i]>=media){
                System.out.println("aluno: "+aluno[i]+"nota: "+nota[i]);
            }
        }
    }
}

