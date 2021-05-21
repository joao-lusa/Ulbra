namespace myApp
{
    public class ImovelCaracteristica
    {
        public Imovel Imovel { get; private set; }
        public string descricao { get; set; }


        public ImovelCaracteristica(Imovel imovel, string descricao)
        {
            this.Imovel = imovel;
            this.descricao = descricao;            
        }
    }
}