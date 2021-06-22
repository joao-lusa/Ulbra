//classe esta em agregação com as outras dua classes
public class Fachada {
	private ClienteDoBanco cliente;
	private ContaBancaria conta;

	//contrutor que instancia os objetos
	public Fachada() {
		this.cliente = new ClienteDoBanco();
		this.conta = new ContaBancaria();
	}
	//executa uma serie de ações aonde o usuaria visualiza
	public void fazerDeposito(int quantidade, ClienteDoBanco cliente, ContaBancaria conta){
		System.out.printf("Olá, o beneficiário de seu depósito é o(a) cliente %s\n",cliente.obterNomeDoCliente());
		System.out.printf("Você escolheu a conta %s\n", conta.obterNumConta());
		System.out.printf("O saldo desta conta é: %d\n", conta.obterSaldo());
		System.out.printf("Você está depositando R$ %s\n", quantidade);
		conta.setSaldo(conta.getSaldo() + quantidade);
		System.out.printf("Depositado R$ %d na conta de %s\n",quantidade, cliente.obterNomeDoCliente());
		System.out.printf("O saldo desta conta é: R$ %s\n", conta.obterSaldo());
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
