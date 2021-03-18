// Crie um vetor capaz de armazenar 50 números inteiros. Em seguida faça o seu preenchimento automático com os números de
// 101 a 150, ou seja, na posição número 0 ponha 101, na posição 1 ponha o número 102, e assim sucessivamente. Em seguida
// exiba os valores deste vetor.

public class Main {
    public static void main(String[] args) {

        int[] vet = new int[50];
        int c = 0;

        for (int i = 101; i < 151; i++) {
            vet[c] = i;
            System.out.println(vet[c]);
            c++;
        }
    }
}

