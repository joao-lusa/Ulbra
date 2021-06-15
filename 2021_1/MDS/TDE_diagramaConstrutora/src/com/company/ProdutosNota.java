package com.company;

public class ProdutosNota {
    private int Id;
    private int IdNf;
    private int IdProduto;
    private Produtos Produto;
    private int QtdProduto;

    public ProdutosNota(int id,
                        int idNf,
                        int idProduto,
                        Produtos produto,
                        int qtdProduto) {
        this.Id = id;
        this.IdNf = idNf;
        this.IdProduto = idProduto;
        this.Produto = produto;
        this.QtdProduto = qtdProduto;
    }

    public int getId() {
        return Id;
    }

    public void setId(int id) {
        Id = id;
    }

    public int getIdNf() {
        return IdNf;
    }

    public void setIdNf(int idNf) {
        IdNf = idNf;
    }

    public int getIdProduto() {
        return IdProduto;
    }

    public void setIdProduto(int idProduto) {
        IdProduto = idProduto;
    }

    public Produtos getProduto() {
        return Produto;
    }

    public void setProduto(Produtos produto) {
        Produto = produto;
    }

    public int getQtdProduto() {
        return QtdProduto;
    }

    public void setQtdProduto(int qtdProduto) {
        QtdProduto = qtdProduto;
    }
}
