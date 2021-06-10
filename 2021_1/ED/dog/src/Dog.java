public class Dog {
    String nome;
    String raca;
    int idade;
    Dog proximo;

    public Dog(String nome, String raca, int idade) {
        this.nome = nome;
        this.raca = raca;
        this.idade = idade;
    }

    public String getRaca() {
        return raca;
    }

    public void setRaca(String raca) {
        this.raca = raca;
    }

    public int getIdade() {
        return idade;
    }

    public void setIdade(int idade) {
        this.idade = idade;
    }

    public Dog(String novoDog){
        this.nome = novoDog;
    }


    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public Dog getProximo() {
        return proximo;
    }

    public void setProximo(Dog proximo) {
        this.proximo = proximo;
    }
    public void mostrar(){
        System.out.println("\nnome: "+nome);
        System.out.println("idade: "+idade);
        System.out.println("raça: "+raca);
    }


}

