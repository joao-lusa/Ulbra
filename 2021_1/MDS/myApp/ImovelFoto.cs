namespace myApp
{
    public class ImovelFoto
    {
        public Imovel Imovel { get; private set; }
        public string Caminho { get; set; }
        public string Nome { get; set; }


        public ImovelFoto(Imovel imovel, string caminho, string nome)
        {
            this.Imovel = imovel;
            this.Caminho = caminho;
            this.Nome = nome;
        }
    }
}