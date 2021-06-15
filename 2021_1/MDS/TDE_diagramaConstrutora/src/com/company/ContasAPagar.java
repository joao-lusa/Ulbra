package com.company;

import java.util.Date;

public class ContasAPagar {
    private int Id;
    private String CodigoDocumento;
    private Date DataDocumento;
    private Date DataVencimento;
    private String TipoCobranca;
    private int BancoCobranca;
    private double Valor;
    private String NotaFiscal;
    private Fornecedor Distribuidora;
    private int IdDistribuidora;

    public ContasAPagar(int id,
                        String codigoDocumento,
                        Date dataDocumento,
                        Date dataVencimento,
                        String tipoCobranca,
                        int bancoCobranca,
                        double valor,
                        String notaFiscal,
                        Fornecedor distribuidora,
                        int idDistribuidora) {
        this.Id = id;
        this.CodigoDocumento = codigoDocumento;
        this.DataDocumento = dataDocumento;
        this.DataVencimento = dataVencimento;
        this.TipoCobranca = tipoCobranca;
        this.BancoCobranca = bancoCobranca;
        this.Valor = valor;
        this.NotaFiscal = notaFiscal;
        this.Distribuidora = distribuidora;
        this.IdDistribuidora = idDistribuidora;
    }

    public int getId() {
        return Id;
    }

    public void setId(int id) {
        Id = id;
    }

    public String getCodigoDocumento() {
        return CodigoDocumento;
    }

    public void setCodigoDocumento(String codigoDocumento) {
        CodigoDocumento = codigoDocumento;
    }

    public Date getDataDocumento() {
        return DataDocumento;
    }

    public void setDataDocumento(Date dataDocumento) {
        DataDocumento = dataDocumento;
    }

    public Date getDataVencimento() {
        return DataVencimento;
    }

    public void setDataVencimento(Date dataVencimento) {
        DataVencimento = dataVencimento;
    }

    public String getTipoCobranca() {
        return TipoCobranca;
    }

    public void setTipoCobranca(String tipoCobranca) {
        TipoCobranca = tipoCobranca;
    }

    public int getBancoCobranca() {
        return BancoCobranca;
    }

    public void setBancoCobranca(int bancoCobranca) {
        BancoCobranca = bancoCobranca;
    }

    public double getValor() {
        return Valor;
    }

    public void setValor(double valor) {
        Valor = valor;
    }

    public String getNotaFiscal() {
        return NotaFiscal;
    }

    public void setNotaFiscal(String notaFiscal) {
        NotaFiscal = notaFiscal;
    }

    public Fornecedor getDistribuidora() {
        return Distribuidora;
    }

    public void setDistribuidora(Fornecedor distribuidora) {
        Distribuidora = distribuidora;
    }

    public int getIdDistribuidora() {
        return IdDistribuidora;
    }

    public void setIdDistribuidora(int idDistribuidora) {
        IdDistribuidora = idDistribuidora;
    }
}
