namespace myApp
{
    public class Cliente
    {
        
        public int Id {get;private set;}
        public string Nome {get;private set;}        

        public string CPF { get; private set; }

        public Cliente(int id, string nome, string CPF)
        {
            this.Id = id;
            this.Nome =nome;
            this.CPF = CPF;
             
        }
    }     
}