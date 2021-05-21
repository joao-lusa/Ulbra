namespace ExercicioClasses
{
    public abstract class Pessoa
    {
      public int Id {get; set;}
      protected string Nome {get; set;}
      protected string Email {get; set;}

      public Pessoa(int id, string nome, string email)
      {
        this.Id = id;
        this.Nome = nome;
        this.Email = Email;
      }

    public Pessoa Get()
    {
        return null;
    }

    }
}