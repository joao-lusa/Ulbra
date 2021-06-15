package com.company;

public class Produtos {
    private int Id;
    private String Nome;
    private CategoriasProduto Categoria;
    private int CategoriaId;
    private boolean Devolve;
    private double Valor;

    public Produtos(int id,
                    String nome,
                    CategoriasProduto categoria,
                    int categoriaId,
                    boolean devolve,
                    double valor) {
        this.Id = id;
        this.Nome = nome;
        this.Categoria = categoria;
        this.CategoriaId = categoriaId;
        this.Devolve = devolve;
        this.Valor = valor;
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

    public CategoriasProduto getCategoria() {
        return Categoria;
    }

    public void setCategoria(CategoriasProduto categoria) {
        Categoria = categoria;
    }

    public int getCategoriaId() {
        return CategoriaId;
    }

    public void setCategoriaId(int categoriaId) {
        CategoriaId = categoriaId;
    }

    public boolean isDevolve() {
        return Devolve;
    }

    public void setDevolve(boolean devolve) {
        Devolve = devolve;
    }

    public double getValor() {
        return Valor;
    }

    public void setValor(double valor) {
        Valor = valor;
    }
}
