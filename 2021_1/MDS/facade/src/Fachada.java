//classe esta em agrega��o com as outras dua classes
public class Fachada {
	private ClienteDoBanco cliente;
	private ContaBancaria conta;

	//contrutor que instancia os objetos
	public Fachada() {
		this.cliente = new ClienteDoBanco();
		this.conta = new ContaBancaria();
	}
	//executa uma serie de a��es aonde o usuaria visualiza
	public void fazerDeposito(int quantidade, ClienteDoBanco cliente, ContaBancaria conta){
		System.out.printf("Ol�, o benefici�rio de seu dep�sito � o(a) cliente %s\n",cliente.obterNomeDoCliente());
		System.out.printf("Voc� escolheu a conta %s\n", conta.obterNumConta());
		System.out.printf("O saldo desta conta �: %d\n", conta.obterSaldo());
		System.out.printf("Voc� est� depositando R$ %s\n", quantidade);
		conta.setSaldo(conta.getSaldo() + quantidade);
		System.out.printf("Depositado R$ %d na conta de %s\n",quantidade, cliente.obterNomeDoCliente());
		System.out.printf("O saldo desta conta �: R$ %s\n", conta.obterSaldo());
	}

	public ClienteDoBanco getCliente() {
		return cliente;
	}

	public void setCliente(ClienteDoBanco cliente) {
		this.cliente = cliente;
	}

	public ContaBancaria getConta() {
		return conta;
	}

	public void setConta(ContaBancaria conta) {
		this.conta = conta;
	}
}
