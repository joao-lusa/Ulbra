public class Main {
    public static void main(String[] args) {
        Fila fila = new Fila();

        fila.inserir(1);
        fila.inserir(2);
        fila.inserir(3);
        fila.inserir(4);

        while (! fila.isEmpty()){
            int x = fila.retirar();
            System.out.println("retirei o elemento"+ x);
        }
    }
}
