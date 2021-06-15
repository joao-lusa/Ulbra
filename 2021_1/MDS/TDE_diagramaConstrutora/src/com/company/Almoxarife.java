package com.company;

public class Almoxarife {
    private int Id;
    private String Nome;
    private String Cpf;
    private String Telefone;

    public Almoxarife(int id,
                      String nome,
                      String cpf,
                      String telefone) {
        this.Id = id;
        this.Nome = nome;
        this.Cpf = cpf;
        this.Telefone = telefone;
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
}
