﻿using System;

namespace myApp
{
    class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("Hello World!");
            
            // Console.WriteLine("Digite um nome:");

            // var nome = Console.ReadLine();
            
            // Console.WriteLine($"o nome que o caboclo digitou é { nome }");

            
            TipoImovel objCasa = new TipoImovel(1234, "Casa");
            
            Console.WriteLine("A descricao do tipo do imóvel é " + objCasa.Descricao + " e o id é " + objCasa.Id);


            Cliente objCliente = new Cliente(9999,"Diego da Ceva", "393939393");
            Console.WriteLine("Cliente criado " + objCliente.Nome);

            //var fotos = new List<ImovelFoto>(new ImovelFoto());

            Imovel objImovel = new Imovel,(609,objCasa,objCliente,"VENDA",1000000);
            
            Console.WriteLine("Imovel codigo " + objImovel.Id + " - tipo: " + objImovel.TipoImovel.Descricao + " do cliente: " +objImovel.Cliente.Nome);


            Cachorro dog = new Cachorro();
            dog.Caminha();
            dog.Latir();

            Console.Read();
        
        }
    }
}