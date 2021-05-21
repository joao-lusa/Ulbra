namespace ExercicioClasses.Venda
{
    public class Produto
    {
        public int Id {get; set;}
        protected string Descricao {get; set;}
        protected string Valor {get; set;}

        public Produto(int id, string descricao, decimal valor)
        {
            this.Id = id;
            this.Descricao = descricao;
            this.Valor = valor;
        }
    }
}