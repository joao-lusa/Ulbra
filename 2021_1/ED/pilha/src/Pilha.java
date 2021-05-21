public class Pilha {

    static private Object[] vet;
    static private int topo;

    public static void iniciarPilha() {
        topo = -1;
        vet = new Object[10];
    }

    public static void push(int valor) {
        if (topo < vet.length - 1) {

            vet[++topo] = valor;
        }
    }

    public static boolean isEmpty() {
        if (topo == -1) {
            return true;
        }
        return false;
    }

    public Object pop(){
        if (isEmpty()){
            return null;
        }
        return vet[topo--];
    }

}