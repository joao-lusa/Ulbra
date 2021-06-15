package com.company;

import java.util.Date;

public abstract class MovimentosEstoque {
    private int Id;
    private Date DataMovimento;
    private String Comentario;
    private int CentroDeCustoId;
    private Almoxarife Almoxarif;
    private int IdAlmoxarife;

    public MovimentosEstoque(int id,
                             Date dataMovimento,
                             String comentario,
                             int centroDeCustoId,
                             Almoxarife almoxarif,
                             int idAlmoxarife) {
        this.Id = id;
        this.DataMovimento = dataMovimento;
        this.Comentario = comentario;
        this.CentroDeCustoId = centroDeCustoId;
        this.Almoxarif = almoxarif;
        this.IdAlmoxarife = idAlmoxarife;
    }

    public int getId() {
        return Id;
    }

    public void setId(int id) {
        Id = id;
    }

    public Date getDataMovimento() {
        return DataMovimento;
    }

    public void setDataMovimento(Date dataMovimento) {
        DataMovimento = dataMovimento;
    }

    public String getComentario() {
        return Comentario;
    }

    public void setComentario(String comentario) {
        Comentario = comentario;
    }

    public int getCentroDeCustoId() {
        return CentroDeCustoId;
    }

    public void setCentroDeCustoId(int centroDeCustoId) {
        CentroDeCustoId = centroDeCustoId;
    }

    public Almoxarife getAlmoxarif() {
        return Almoxarif;
    }

    public void setAlmoxarif(Almoxarife almoxarif) {
        Almoxarif = almoxarif;
    }

    public int getIdAlmoxarife() {
        return IdAlmoxarife;
    }

    public void setIdAlmoxarife(int idAlmoxarife) {
        IdAlmoxarife = idAlmoxarife;
    }
}
