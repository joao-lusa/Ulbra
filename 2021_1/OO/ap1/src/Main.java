public class Main {
    public static void main(String[] args) {
        System.out.println("Matriz Random: ");
        Matriz matriz = new Matriz();
        matriz.preencheMatriz();
        matriz.mostrarMatriz();
        matriz.procuraPadrao();
        System.out.println("\nMatriz preenchida com o exemplo: ");
        matriz.mostrarTeste();
        matriz.padraoTeste();

    }

}

