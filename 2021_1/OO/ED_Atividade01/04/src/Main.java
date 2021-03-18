//Leia um conjunto de valores inteiros e em seguida os exiba-os na ordem inversa do que foram digitados.

import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner tc = new Scanner(System.in);

        int[] vetor = new int[5];

        for(int i = 0; i < vetor.length; i++){
            System.out.println("Digite um número: ");
            vetor[i] = tc.nextInt();
        }

        for(int i = vetor.length-1; i >= 0; i--){
            System.out.println(vetor[i]);
        }
    }
}