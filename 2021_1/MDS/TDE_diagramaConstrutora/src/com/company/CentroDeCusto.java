package com.company;

public class CentroDeCusto {
    private int Id;
    private String Nome;
    private String Endereco;
    private int Numero;
    private String Bairro;
    private String Cidade;
    private int Cep;
    private char Logradouro;
    private String StatusObra;

    public CentroDeCusto(int id,
                         String nome,
                         String endereco,
                         int numero,
                         String bairro,
                         String cidade,
                         int cep,
                         char logradouro,
                         String statusObra) {
        this.Id = id;
        this.Nome = nome;
        this.Endereco = endereco;
        this.Numero = numero;
        this.Bairro = bairro;
        this.Cidade = cidade;
        this.Cep = cep;
        this.Logradouro = logradouro;
        this.StatusObra = statusObra;
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

    public String getEndereco() {
        return Endereco;
    }

    public void setEndereco(String endereco) {
        Endereco = endereco;
    }

    public int getNumero() {
        return Numero;
    }

    public void setNumero(int numero) {
        Numero = numero;
    }

    public String getBairro() {
        return Bairro;
    }

    public void setBairro(String bairro) {
        Bairro = bairro;
    }

    public String getCidade() {
        return Cidade;
    }

    public void setCidade(String cidade) {
        Cidade = cidade;
    }

    public int getCep() {
        return Cep;
    }

    public void setCep(int cep) {
        Cep = cep;
    }

    public char getLogradouro() {
        return Logradouro;
    }

    public void setLogradouro(char logradouro) {
        Logradouro = logradouro;
    }

    public String getStatusObra() {
        return StatusObra;
    }

    public void setStatusObra(String statusObra) {
        StatusObra = statusObra;
    }
}
