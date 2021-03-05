
/*************************************************************************

Código feito por João Vitor Dalangol da Silva e João Lucas Pereira Rafael.

**************************************************************************/

import java.util.Scanner;

public class Main {
    public static void main(String[] args) {

        ContaCorrente c1 = new ContaCorrente();
        ContaCorrente c2 = new ContaCorrente();

        String continua;

        do {
            Scanner lerEscolha = new Scanner(System.in);
            System.out.print("\nEscolha uma operação:" +
                    "\n1 - Saque" +
                    "\n2 - Depósito" +
                    "\n3 - Transferência" +
                    "\n4 - Extrato" +
                    "\n ---> ");
            int escolhaOperacao = lerEscolha.nextInt();

            switch (escolhaOperacao) {
                case 1: //saque
                    c1.lerDados();
                    Scanner lerSaque = new Scanner(System.in);
                    System.out.print("Digite o valor desejado para saque: ");
                    double valorSaque = lerSaque.nextDouble();

                    c1.saque(valorSaque);
                    c1.getSaldo();

                break;

                case 2: //depósito
                    c1.lerDados();
                    Scanner lerDeposito = new Scanner(System.in);
                    System.out.print("Digite o valor do depósito: ");
                    double valorDeposito = lerDeposito.nextDouble();

                    c1.deposito(valorDeposito);

                    c1.getSaldo();

                break;

                case 3: //transferência
                    c1.lerDados();
                    c2.lerDados();
                    Scanner lerOperacoes = new Scanner(System.in);
                    System.out.print("\nDigite o valor da transferência: ");
                    double ops = lerOperacoes.nextDouble();

                    if (c1.titular.cpf.equals(c2.titular.cpf)) {
                        System.out.println("Operação não realizada! Os CPFs dos titulares são iguais.");
                    } else {
                        if (!c1.deposito(ops)) {
                            System.out.println("Não foi possível!");
                        }
                        if (!c1.saque(ops)) {
                            System.out.println("Não foi possível!");
                        }
                        if (c1.transferencia(ops, c2)) {
                            System.out.println("Transferência realizada!");
                        }
                        c1.getSaldo();
                        c2.getSaldo();
                    }
                break;

                case 4:
                    c1.lerDados();
                    c1.getSaldo();
                break;

                default:
                    System.out.println("\nEntrada inválida!\n");
                break;
            }

            Scanner res = new Scanner(System.in);
            System.out.print("Deseja continuar com operações? S/N ->");
            continua = res.next();

        } while (continua.equals("S") || continua.equals("s"));

    }
}
