package com.company;

public class Cargo {
    private int Id;
    private String Descricao;

    public Cargo(int id,
                 String descricao) {
        this.Id = id;
        this.Descricao = descricao;
    }

    public int getId() {
        return Id;
    }

    public void setId(int id) {
        Id = id;
    }

    public String getDescricao() {
        return Descricao;
    }

    public void setDescricao(String descricao) {
        Descricao = descricao;
    }
}
