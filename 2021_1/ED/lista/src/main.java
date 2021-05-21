public class main {
    public static void main(String[] args) {


        Lista list = new Lista();
        list.exibir();

        Pessoa p= new Pessoa("João", 30);
        list.add(p);
        list.exibir();

        Pessoa p1= new Pessoa("Joãozinho", 30);
        list.add(p1);
        Pessoa p2= new Pessoa("Joãozão", 30);
        list.add(p2);
        Pessoa p3= new Pessoa("Maria", 30);
        list.addFim(p3);
        list.exibir();
    }
}