using System.Collections.Generic;

namespace myApp
{
    public class Imovel
    {
        public int Id { get; private set; }
        public TipoImovel TipoImovel { get; private set; }
        public Cliente Cliente { get; private set; }
        public string TipoTransacao { get; private set; }
        public decimal Valor { get; set; }

        public List<ImovelFoto> fotos { get; private set; }
        public List<ImovelCaracteristica> caracteristicas { get; private set; }

        // public Imovel(int id, string TipoTransacao, decimal valor)
        // {
        //     this.Id = id;
        //     this.TipoTransacao = TipoTransacao;
        //     this.Valor= valor;
        // }

        public Imovel(  int id, 
                        TipoImovel tipoImovel, 
                        Cliente cliente, 
                        string TipoTransacao, 
                        decimal valor,
                        List<ImovelFoto> fotos,
                        List<ImovelCaracteristica> caracteristicas)
        {
            this.Id = id;
            this.TipoImovel = tipoImovel;
            this.Cliente= cliente;
            this.TipoTransacao = TipoTransacao;
            this.Valor= valor;
            this.fotos = fotos;
            this.caracteristicas = caracteristicas;
        }

        public List<Imovel> Get(int valor)
        {
            return null;
            
        }

        public List<Imovel> Get(int valor, Cliente cliente)
        {
            return null;
            
        }



    }
}