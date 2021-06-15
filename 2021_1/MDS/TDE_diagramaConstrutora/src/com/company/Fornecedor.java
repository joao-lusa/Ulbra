package com.company;

public class Fornecedor {
    private int Id;
    private  String Nome;
    private String Cnpj;
    private String Endereco;
    private int Numero;
    private String Bairro;
    private String Cidade;
    private int Cep;
    private int InscricaoEstadual;

    public Fornecedor(int id,
                      String nome,
                      String cnpj,
                      String endereco,
                      int numero,
                      String bairro,
                      String cidade,
                      int cep,
                      int inscricaoEstadual) {
        this.Id = id;
        this.Nome = nome;
        this.Cnpj = cnpj;
        this.Endereco = endereco;
        this.Numero = numero;
        this.Bairro = bairro;
        this.Cidade = cidade;
        this.Cep = cep;
        this.InscricaoEstadual = inscricaoEstadual;
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

    public String getCnpj() {
        return Cnpj;
    }

    public void setCnpj(String cnpj) {
        Cnpj = cnpj;
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

    public int getInscricaoEstadual() {
        return InscricaoEstadual;
    }

    public void setInscricaoEstadual(int inscricaoEstadual) {
        InscricaoEstadual = inscricaoEstadual;
    }
}
