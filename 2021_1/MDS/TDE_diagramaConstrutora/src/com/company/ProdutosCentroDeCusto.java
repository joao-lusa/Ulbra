package com.company;

public class ProdutosCentroDeCusto {
    private int Id;
    private Produtos Produto;
    private int ProdutoId;
    private CentroDeCusto CentrosDeCusto;
    private int CentroDeCustoId;
    private int Quantidade;

    public ProdutosCentroDeCusto(int id,
                                 Produtos produto,
                                 int produtoId,
                                 CentroDeCusto centrosDeCusto,
                                 int centroDeCustoId,
                                 int quantidade) {
        this.Id = id;
        this.Produto = produto;
        this.ProdutoId = produtoId;
        this.CentrosDeCusto = centrosDeCusto;
        this.CentroDeCustoId = centroDeCustoId;
        this.Quantidade = quantidade;
    }

    public int getId() {
        return Id;
    }

    public void setId(int id) {
        Id = id;
    }

    public Produtos getProduto() {
        return Produto;
    }

    public void setProduto(Produtos produto) {
        Produto = produto;
    }

    public int getProdutoId() {
        return ProdutoId;
    }

    public void setProdutoId(int produtoId) {
        ProdutoId = produtoId;
    }

    public CentroDeCusto getCentrosDeCusto() {
        return CentrosDeCusto;
    }

    public void setCentrosDeCusto(CentroDeCusto centrosDeCusto) {
        CentrosDeCusto = centrosDeCusto;
    }

    public int getCentroDeCustoId() {
        return CentroDeCustoId;
    }

    public void setCentroDeCustoId(int centroDeCustoId) {
        CentroDeCustoId = centroDeCustoId;
    }

    public int getQuantidade() {
        return Quantidade;
    }

    public void setQuantidade(int quantidade) {
        Quantidade = quantidade;
    }
}
