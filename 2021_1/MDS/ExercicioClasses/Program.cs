using System;

namespace ExercicioClasses
{
    class Program
    {
        static ICarrinho _carrinho;
        static void Main(string[] args, ICarrinho carrinho)
        {
            Pessoa objJao = 
                new PessoaFisica("3890218","3213213","Joao","joao@gmail");
            

            Console.WriteLine("Hello World!");
        }
    }
}
