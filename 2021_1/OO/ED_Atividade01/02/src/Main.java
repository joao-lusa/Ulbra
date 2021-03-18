//Leia um conjunto de notas, cuja quantidade seja determinada pelo usuário. Calcule a média de todas elas. Exiba
// o conjunto das notas maiores do que a média calculada. Em seguida, de forma agrupada, exiba o outro conjunto
// de notas (menores do que a média).Utilize vetores

import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner ler = new Scanner(System.in);

        int totalA;
        double totalN = 0;
        double media;

        System.out.println("digite a quantidade de alunos: ");
        totalA = ler.nextInt();

        double notas[] = new double[totalA];

        for (int i = 0; i < notas.length; i++) {

            System.out.println("digite a nota do aluno" + i + 1 + ": ");
            notas[i] = ler.nextDouble();

            totalN += notas[i];
        }
        media = totalN / totalA;

        System.out.println("Lista de notas superiores a média: ");
        for (int i = 0; i < notas.length; i++) {
            if (notas[i] >= media) {
                System.out.println(notas[i]);
            }
        }

        System.out.println("Lista de notas inferiores a média: ");
        for (int i = 0; i < notas.length; i++) {
            if (notas[i] < media) {
                System.out.println(notas[i]);
            }
        }
    }
}
