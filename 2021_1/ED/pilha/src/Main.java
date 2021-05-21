public class Main {
    public static void main(String[] args) {
        Pilha p = new Pilha();

        p.iniciarPilha();
        p.push(10);
        p.push(30);
        p.push(50);

        while (p.isEmpty()== false){
            System.out.println(p.pop());
        }
    }

}
