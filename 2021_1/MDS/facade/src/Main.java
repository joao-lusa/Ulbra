
public class Main {

	public static void main(String[] args) {
		//objestos declarados
		ClienteDoBanco cliente = new ClienteDoBanco("Joao Lucas Perereira Rafael");
		ContaBancaria conta = new ContaBancaria("1365-9");

		Fachada facade = new Fachada();
		facade.fazerDeposito(150, cliente, conta);
	}
}
