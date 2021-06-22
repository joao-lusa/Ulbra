public class ClienteDoBanco {
	private String nome;

	public String obterNomeDoCliente(){
		return this.nome;
	}

	//construtor a ser utilizado na classe fachada
	public ClienteDoBanco(){}


	//construtor que instancia um objeto no main
	public ClienteDoBanco(String nome){
		this.nome = nome;
	}
}
