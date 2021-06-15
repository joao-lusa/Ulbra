package com.company;

import java.util.Date;

public class NfEntrada {
    private int Id;
    private Date DataEmissao;
    private Date DataEntrada;
    private String NotaFiscal;
    private int Cfop;
    private int QtdTotalProdutos;
    private int Volumes;
    private int IdFornecedor;
    private int IdCentroDeCusto;
    private ProdutosNota Produtos;
    private Fornecedor Distribidora;

    public NfEntrada(int id,
                     Date dataEmissao,
                     Date dataEntrada,
                     String notaFiscal,
                     int cfop,
                     int qtdTotalProdutos,
                     int volumes,
                     int idFornecedor,
                     int idCentroDeCusto,
                     ProdutosNota produtos,
                     Fornecedor distribidora) {
        this.Id = id;
        this.DataEmissao = dataEmissao;
        this.DataEntrada = dataEntrada;
        this.NotaFiscal = notaFiscal;
        this.Cfop = cfop;
        this.QtdTotalProdutos = qtdTotalProdutos;
        this.Volumes = volumes;
        this.IdFornecedor = idFornecedor;
        this.IdCentroDeCusto = idCentroDeCusto;
        this.Produtos = produtos;
        this.Distribidora = distribidora;
    }

    public int getId() {
        return Id;
    }

    public void setId(int id) {
        Id = id;
    }

    public Date getDataEmissao() {
        return DataEmissao;
    }

    public void setDataEmissao(Date dataEmissao) {
        DataEmissao = dataEmissao;
    }

    public Date getDataEntrada() {
        return DataEntrada;
    }

    public void setDataEntrada(Date dataEntrada) {
        DataEntrada = dataEntrada;
    }

    public String getNotaFiscal() {
        return NotaFiscal;
    }

    public void setNotaFiscal(String notaFiscal) {
        NotaFiscal = notaFiscal;
    }

    public int getCfop() {
        return Cfop;
    }

    public void setCfop(int cfop) {
        Cfop = cfop;
    }

    public int getQtdTotalProdutos() {
        return QtdTotalProdutos;
    }

    public void setQtdTotalProdutos(int qtdTotalProdutos) {
        QtdTotalProdutos = qtdTotalProdutos;
    }

    public int getVolumes() {
        return Volumes;
    }

    public void setVolumes(int volumes) {
        Volumes = volumes;
    }

    public int getIdFornecedor() {
        return IdFornecedor;
    }

    public void setIdFornecedor(int idFornecedor) {
        IdFornecedor = idFornecedor;
    }

    public int getIdCentroDeCusto() {
        return IdCentroDeCusto;
    }

    public void setIdCentroDeCusto(int idCentroDeCusto) {
        IdCentroDeCusto = idCentroDeCusto;
    }

    public ProdutosNota getProdutos() {
        return Produtos;
    }

    public void setProdutos(ProdutosNota produtos) {
        Produtos = produtos;
    }

    public Fornecedor getDistribidora() {
        return Distribidora;
    }

    public void setDistribidora(Fornecedor distribidora) {
        Distribidora = distribidora;
    }
}

