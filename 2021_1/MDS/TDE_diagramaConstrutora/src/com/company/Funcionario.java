package com.company;

public class Funcionario {
    private int Id;
    private String Nome;
    private String Cpf;
    private String Telefone;
    private Cargo Carg;
    private int IdCargo;

    public Funcionario(int id,
                       String nome,
                       String cpf,
                       String telefone,
                       Cargo carg,
                       int idCargo) {
        this.Id = id;
        this.Nome = nome;
        this.Cpf = cpf;
        this.Telefone = telefone;
        this.Carg = carg;
        this.IdCargo = idCargo;
    }

    public int getId() {
        return Id;
    }

    public void setId(int id) {
        Id = id;
    }

    public String getNome() {
        return Nome;
    }

    public void setNome(String nome) {
        Nome = nome;
    }

    public String getCpf() {
        return Cpf;
    }

    public void setCpf(String cpf) {
        Cpf = cpf;
    }

    public String getTelefone() {
        return Telefone;
    }

    public void setTelefone(String telefone) {
        Telefone = telefone;
    }

    public Cargo getCarg() {
        return Carg;
    }

    public void setCarg(Cargo carg) {
        Carg = carg;
    }

    public int getIdCargo() {
        return IdCargo;
    }

    public void setIdCargo(int idCargo) {
        IdCargo = idCargo;
    }
}
