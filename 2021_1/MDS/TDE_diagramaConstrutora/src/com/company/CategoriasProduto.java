package com.company;

public class CategoriasProduto {
    private int Id;
    private String Nome;

    public CategoriasProduto(int id,
                             String nome) {
        this.Id = id;
        this.Nome = nome;
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
}
