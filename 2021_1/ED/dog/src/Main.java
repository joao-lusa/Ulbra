import jdk.jshell.spi.ExecutionControl;

import java.util.Scanner;

public class Main {

    public static void main(String[] args) {

        Scanner tc = new Scanner(System.in);

        ListaLigada lista = new ListaLigada();
        //verifica se a lista está vazia
        lista.isEmpty();


        //adicionar cachorros
        Dog cachorro1 = new Dog("pipoca", "spitz", 9);
        lista.adicionar(cachorro1);

        Dog cachorro2 = new Dog("pituca", "cane curso", 5);
        lista.adicionar(cachorro2);

        Dog cachorro3 = new Dog("lucky", "pastor alemão", 4);
        lista.adicionar(cachorro3);

        //adicionar cachorros pela posição
        Dog cachorro4 = new Dog("baruck ", "vira lata ", 10);
        lista.adicionar(2, cachorro4);

        //iforma o tamanho da lista
        System.out.println("\ntem: " + lista.getTamanho() + " cachorros");
        //mostra o total de itens na lista
        System.out.println("\nos cachorros são: ");
        lista.list();

        //verifica se a lista está vazia
        lista.isEmpty();

        //mostra o primeiro cachorro e o ultimo
        System.out.println("\nprimeiro cachorro: " + lista.getPrimeiro().getNome());
        System.out.println("\núltimo cachorro: " + lista.getUltimo().getNome());

        System.out.printf("-----------------------------------");
        //remove um cachorro pela posição
        lista.remover(2);
        //remove um cachorro pelo nome
        lista.remover("lucky");
        System.out.printf("\nverificar se removeu os itens");
        lista.list();

        //tamanho da lista
        lista.size();

        //verifica se a lista está vazia
        lista.isEmpty();

        //retorna a posiçao em que o cachorro está
        //System.out.printf("retorna a posiçao em que o cachorro está");
        //System.out.println(lista.indexOf(cachorro1));
        System.out.println("Informe o nome do cachorro: ");
        String n= tc.next();

        Dog c= new Dog(n);

        System.out.println(lista.indexOf(c));

        //Dupla: João Lucas Pereira Rafael e João Vitor Dalagnol da Silva

    }
}