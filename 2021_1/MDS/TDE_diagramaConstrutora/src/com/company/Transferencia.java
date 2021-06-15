package com.company;

import java.util.Date;

public class Transferencia extends MovimentosEstoque{
    private CentroDeCusto CentroDeCustoDestino;
    private int IdCentroDeCustoDestino;
    private Almoxarife AlmoxarifeDestino;
    private int IdAlmoxarifeDestino;

    public Transferencia(int id,
                         Date dataMovimento,
                         String comentario,
                         int centroDeCustoId,
                         Almoxarife almoxarif,
                         int idAlmoxarife,
                         CentroDeCusto centroDeCustoDestino,
                         int idCentroDeCustoDestino,
                         Almoxarife almoxarifeDestino,
                         int idAlmoxarifeDestino) {
        super(id, dataMovimento, comentario, centroDeCustoId, almoxarif, idAlmoxarife);
        this.CentroDeCustoDestino = centroDeCustoDestino;
        this.IdCentroDeCustoDestino = idCentroDeCustoDestino;
        this.AlmoxarifeDestino = almoxarifeDestino;
        this.IdAlmoxarifeDestino = idAlmoxarifeDestino;
    }

    public CentroDeCusto getCentroDeCustoDestino() {
        return CentroDeCustoDestino;
    }

    public void setCentroDeCustoDestino(CentroDeCusto centroDeCustoDestino) {
        CentroDeCustoDestino = centroDeCustoDestino;
    }

    public int getIdCentroDeCustoDestino() {
        return IdCentroDeCustoDestino;
    }

    public void setIdCentroDeCustoDestino(int idCentroDeCustoDestino) {
        IdCentroDeCustoDestino = idCentroDeCustoDestino;
    }

    public Almoxarife getAlmoxarifeDestino() {
        return AlmoxarifeDestino;
    }

    public void setAlmoxarifeDestino(Almoxarife almoxarifeDestino) {
        AlmoxarifeDestino = almoxarifeDestino;
    }

    public int getIdAlmoxarifeDestino() {
        return IdAlmoxarifeDestino;
    }

    public void setIdAlmoxarifeDestino(int idAlmoxarifeDestino) {
        IdAlmoxarifeDestino = idAlmoxarifeDestino;
    }
}
