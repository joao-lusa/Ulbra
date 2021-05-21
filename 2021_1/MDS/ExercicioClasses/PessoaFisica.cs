namespace ExercicioClasses
{
    public class PessoaFisica : Pessoa
    {
        public string CPF { get; set; }
        public string RG { get; set; }
        
        public PessoaFisica(string CPF, 
                            string RG,
                            string nome,    
                            string email
        ):base(nome,email)
        {
            this.CPF = CPF;
            this.RG = RG;
        }
    }
}