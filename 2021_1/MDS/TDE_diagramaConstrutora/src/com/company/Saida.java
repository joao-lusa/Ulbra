package com.company;

import java.util.Date;

public class Saida extends MovimentosEstoque{
    private Funcionario Funcionarioo;
    private int IdFuncionario;
    private Date DataDevolucao;

    public Saida(int id,
                 Date dataMovimento,
                 String comentario,
                 int centroDeCustoId,
                 Almoxarife almoxarif,
                 int idAlmoxarife,
                 Funcionario funcionarioo,
                 int idFuncionario,
                 Date dataDevolucao) {
        super(id, dataMovimento, comentario, centroDeCustoId, almoxarif, idAlmoxarife);
        this.Funcionarioo = funcionarioo;
        this.IdFuncionario = idFuncionario;
        this.DataDevolucao = dataDevolucao;
    }

    public Funcionario getFuncionarioo() {
        return Funcionarioo;
    }

    public void setFuncionarioo(Funcionario funcionarioo) {
        Funcionarioo = funcionarioo;
    }

    public int getIdFuncionario() {
        return IdFuncionario;
    }

    public void setIdFuncionario(int idFuncionario) {
        IdFuncionario = idFuncionario;
    }

    public Date getDataDevolucao() {
        return DataDevolucao;
    }

    public void setDataDevolucao(Date dataDevolucao) {
        DataDevolucao = dataDevolucao;
    }
}
