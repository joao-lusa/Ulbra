namespace compras
{
    public class Pessoa
    {
        public string Nome {get; private set;}
        public string Endereco {get; private set;}
        public string Telefone {get; private set;}
        public string Bairro {get; private set;}
        public long CEP {get; private set;}
        public string Cidade {get; private set;}
        public string Estado {get; private set;} 
          
         public Pessoa(string Nome, string Endereco, string Telefone, string Bairro, long CEP, string Cidade, string Estado )
        {
            this.Nome = Nome;
            this.Endereco = Endereco;
            this.Telefone = Telefone;
            this.Bairro = Bairro;
            this.CEP = CEP;
            this.Cidade = Cidade;
            this.Estado = Estado;            

        }
    }
   
}