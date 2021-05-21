import java.util.Random;

public class Matriz {
    private static int tam = 100;
    private int[][] matriz = new int[tam][tam];
    private int[][] matrizTeste = new int[9][9];

    int padrao = 0;



    public void preencheMatriz(){
        for (int c = 0; c < tam; ++c) {
            for (int l = 0; l < tam; ++l) {
                matriz[l][c] = new Random().nextInt(2);
            }
        }
    }

    public void mostrarMatriz(){
        System.out.println("Matriz ↴");
        for (int l = 0; l < tam; ++l) {
            for (int c = 0; c < tam; ++c) {
                System.out.print(matriz[c][l] + " ");
            }
            System.out.println();
        }
    }

    public void procuraPadrao(){
        System.out.println("Padrão Procurado: \n1 1\n1 0");
        for (int l = 0; l < tam; ++l) {
            for (int c = 0; c < tam -1; ++c) {
                if (l<(tam -1)){
                    if (matriz[c][l] == 1 && matriz[c + 1][l] == 1 && matriz[c][l+1]==1 && matriz[c+1][l+1]==0){
                        padrao++;
                        System.out.print("Foi encontrado o padrão na linha: "+(l+1)+" e na coluna: "+(c+1)+" || ");
                    }
                }
            }
        }
        if (padrao >0) {
            System.out.println("\nQuantidade de vezes encontrado: " + padrao);
        }else{
            System.out.println("\n :( Não foi possivel achar um padrão!! :(" );
        }
    }

    public void mostrarTeste(){
        // Matriz usado como exemplo pelo professor
        matrizTeste= new int[][]{{0, 0, 0, 0, 0, 0, 1, 1, 1},
                {0, 1, 0, 0, 0, 0, 1, 0, 1},
                {1, 1, 1, 0, 0, 0, 1, 1, 1},
                {0, 1, 0, 0, 0, 0, 0, 0, 0},
                {0, 1, 1, 0, 1, 0, 1, 0, 0},
                {0, 1, 1, 0, 0, 1, 0, 0, 1},
                {0, 1, 1, 0, 1, 0, 1, 0, 1},
                {1, 0, 0, 0, 0, 0, 0, 0, 1},
                {0, 0, 0, 0, 0, 0, 0, 0, 0}};
        System.out.println("Matriz -> ");
        for (int l = 0; l < matrizTeste.length; ++l) {
            for (int c = 0; c < matrizTeste.length; ++c) {
                System.out.print(matrizTeste[c][l] + " ");
            }
            System.out.println();
        }
    }

    private void methodToTime() {
    }

    public void padraoTeste(){
        padrao=0;
        System.out.println("Padrão Procurado: \n1 1\n1 0");
        long startTime = System.nanoTime();
        long startSecond = System.currentTimeMillis();
        methodToTime();
        for (int l = 0; l <9; ++l) {
            for (int c = 0; c < 8; ++c) {
                if (l<8){
                    if (matrizTeste[c][l] == 1 && matrizTeste[c + 1][l] == 1 && matrizTeste[c][l+1]==1 && matrizTeste[c+1][l+1]==0){
                        padrao++;
                        System.out.println("Foi encontrado o padrão na linha:  "+(l+1)+"e na coluna: "+(c+1));
                    }
                }
            }
        }
        long endTime = System.nanoTime();
        long duration = (endTime - startTime);

        long endSecond = System.currentTimeMillis();
        long durationSecond = (endSecond - startSecond);

        System.out.println("Quantidade de vezes encontrado: "+padrao+"\nTempo total em nanoTime: "+duration+ "\nE a duração em segundos foi de:"+durationSecond);
    }

}
