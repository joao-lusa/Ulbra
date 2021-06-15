package com.company;

public class ProdutosMovimentosTransferencia {
    private int Id;
    private Produtos Produto;
    private int IdProduto;
    private Transferencia MovimentoEstoqueTransferencia;
    private int IdMovimento;
    private int QtdProduto;

    public ProdutosMovimentosTransferencia(int id,
                                           Produtos produto,
                                           int idProduto,
                                           Transferencia movimentoEstoqueTransferencia,
                                           int idMovimento,
                                           int qtdProduto) {
        this.Id = id;
        this.Produto = produto;
        this.IdProduto = idProduto;
        this.MovimentoEstoqueTransferencia = movimentoEstoqueTransferencia;
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

    public Transferencia getMovimentoEstoqueTransferencia() {
        return MovimentoEstoqueTransferencia;
    }

    public void setMovimentoEstoqueTransferencia(Transferencia movimentoEstoqueTransferencia) {
        MovimentoEstoqueTransferencia = movimentoEstoqueTransferencia;
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
