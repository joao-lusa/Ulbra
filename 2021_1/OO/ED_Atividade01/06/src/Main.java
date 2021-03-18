//Crie um vetor capaz de armazenar 50 números inteiros. Em seguida faça o seu preenchimento automático de forma randômica.
// Em seguida exiba os valores deste vetor.

import java.util.Random;

public class Main {

    public static void main(String[] args) {

        int[] vet = new int[50];
        Random random = new Random();

        for (int i = 0; i < 50; i++) {
            vet[i] = random.nextInt(50);
            System.out.println(vet[i]);
        }
    }
}
