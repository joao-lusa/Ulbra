public class ContaBancaria {
	private String conta;
	private int saldo;

	//pega o saldo e acrescenta no valor
	public int depositar(int valor){
		return this.setSaldo(this.getSaldo() + valor);
	}

	//metodos usados na classe fachada
	public String obterNumConta(){
		return this.conta;
	}

	public int obterSaldo(){
		return this.getSaldo();
	}

	public ContaBancaria(){}

	//este será usado no main
	public ContaBancaria(String conta){
		this.conta = conta;
	}

	public int getSaldo() {
		return saldo;
	}

	public int setSaldo(int saldo) {
		this.saldo = saldo;
		return saldo;
	}
}
