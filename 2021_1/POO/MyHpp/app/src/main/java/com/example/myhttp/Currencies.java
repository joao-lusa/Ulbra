package com.example.myhttp;

import java.io.Serializable;

public class Currencies implements Serializable {


    private String nName;
    private Double nBuy;
    private Double nSell;
    private Double nVariation;

    public Currencies(String nName, double nBuy, double nSell, double nVariation) {
        this.nName = nName;
        this.nBuy = nBuy;
        this.nSell = nSell;
        this.nVariation = nVariation;
    }

    public String getName() {
        return nName;
    }

    public String getBuy() {
        return "Comprar R$ "+nBuy.toString();
    }

    public String getSell() {
        return "R$ " + nSell + " Vender";

    }

    public String getVariation() {
        return nVariation.toString() + "%";
    }
}
