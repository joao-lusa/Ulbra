import java.util.Objects;
import java.util.Scanner;
import meuPacote.ValidaCPF;

public class Cliente{

    String cpf;

    String nome;
    int idade;
    String data_nascimento;

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Cliente cliente = (Cliente) o;
        return Objects.equals(cpf, cliente.cpf);
    }

    @Override
    public int hashCode() {
        return Objects.hash(cpf);
    }

    public void ler(){
        Scanner tc = new Scanner(System.in);

        do{
            System.out.print("\nDigite o CPF: ");
            cpf = tc.next();
            System.out.print("Resultado: ");

            if (ValidaCPF.isCPF(cpf)) {
                System.out.printf("%s\n", ValidaCPF.imprimeCPF(cpf));
            } else {
                System.out.print("Erro, CPF invalido !!!\n");
            }

        }while (!ValidaCPF.isCPF(cpf));

        System.out.print("\nDigite nome: ");
        this.nome = tc.nextLine();

        System.out.print("\nDigite sua idade: ");
        this.idade=tc.nextInt();

        System.out.print("\nDigite sua data de nascimento: ");
        this.data_nascimento=tc.next();
    }

    @Override
    public String toString() {
        return "cpf='" + cpf + '\'' +
                ", nome='" + nome + '\'' +
                ", idade=" + idade +
                ", data_nascimento='" + data_nascimento + '\'';
    }

}
