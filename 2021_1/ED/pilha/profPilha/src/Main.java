public class Main {
    public static void main(String[] args) {
        Pilha MinhaPilha = new Pilha(10);

        System.out.println(MinhaPilha.show());
        MinhaPilha.push(10);
        MinhaPilha.push(30);
        MinhaPilha.listar();
        System.out.println(MinhaPilha.show());



    }
}
