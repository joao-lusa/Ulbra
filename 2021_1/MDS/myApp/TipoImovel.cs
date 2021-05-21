namespace myApp
{
    public class TipoImovel
    {
        public int Id { get; private set; }
        public string Descricao {get; private set;}

        public TipoImovel(int id, string descricao)
        {
            this.Id = id;
            this.Descricao = descricao;
        }
    }
}