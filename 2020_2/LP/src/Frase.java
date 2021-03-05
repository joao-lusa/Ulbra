import java.util.Scanner;

public class Frase{

    public static void main(String[] args){
        Scanner ler = new Scanner(System.in);
        String frase;
        String igual;

        System.out.print("Digite uma frase:");
        frase = ler.nextLine();
        System.out.println("digite uma palavra e até 5 letras:");
        igual = ler.nextLine();
        Boolean palavra = frase.contains(igual);
        if(palavra == true && igual.length() <= 5){
            System.out.print("palavra contém na frase");
        }else{
            System.out.print("palavra não existe na frase ou é muito grande");
        }
    }
}

