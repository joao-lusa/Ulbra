package com.company;

public class ProdutosMovimentosSaida {
    private int Id;
    private Produtos Produto;
    private int IdProduto;
    private Saida MovimentoEstoqueSaida;
    private int IdMovimento;
    private int QtdProduto;

    public ProdutosMovimentosSaida(int id,
                                   Produtos produto,
                                   int idProduto,
                                   Saida movimentoEstoqueSaida,
                                   int idMovimento,
                                   int qtdProduto) {
        this.Id = id;
        this.Produto = produto;
        this.IdProduto = idProduto;
        this.MovimentoEstoqueSaida = movimentoEstoqueSaida;
        this.IdMovimento = idMovimento;
        this.QtdProduto = qtdProduto;
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

    public int getIdProduto() {
        return IdProduto;
    }

    public void setIdProduto(int idProduto) {
        IdProduto = idProduto;
    }

    public Saida getMovimentoEstoqueSaida() {
        return MovimentoEstoqueSaida;
    }

    public void setMovimentoEstoqueSaida(Saida movimentoEstoqueSaida) {
        MovimentoEstoqueSaida = movimentoEstoqueSaida;
    }

    public int getIdMovimento() {
        return IdMovimento;
    }

    public void setIdMovimento(int idMovimento) {
        IdMovimento = idMovimento;
    }

    public int getQtdProduto() {
        return QtdProduto;
    }

    public void setQtdProduto(int qtdProduto) {
        QtdProduto = qtdProduto;
    }
}
