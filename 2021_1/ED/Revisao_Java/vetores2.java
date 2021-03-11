import java.util.Scanner;
import java.util.Arrays;

public class vetores2 {

    public static void main(String[] args) {

        double notas[] = new double[5];
        double notasTotal = 0;
        double media;
        int alunoN = 0;

        Scanner tc = new Scanner(System.in);

        for(int i=0; i<= 4; i++){

            alunoN=i+1;
            System.out.println("Informe a nota do aluno "+alunoN+": ");
            notas[i]+=tc.nextDouble();

            notasTotal+=notas[i];
        }
        media=notasTotal/alunoN;

        //Ordenando as notas
        for(int i=0;i<notas.length;i++) {
            notas[i]=-notas[i];
        }

        Arrays.sort(notas);

        for(int i=0;i<notas.length;i++) {
            notas[i]=-notas[i];
        }

        System.out.print("\nNotas em ordem crescente: ");

        for (int i = 0; i <= 4; i++) {
            if (i<4) {
                System.out.print(notas[i]+", ");
            }else{
                System.out.print(notas[i]);
            }
        }

        System.out.println("\nMedia aritmética das notas: "+media);
    }
}