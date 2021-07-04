package com.example.myhttp;

import java.io.Serializable;

public class Stocks implements Serializable {

    private String nName;
    private String nLocation;
    private Double nPoints;
    private Double nVariation;


    public Stocks(String nName, String nLocation, double nPoints, double nVariation) {
        this.nName = nName;
        this.nLocation = nLocation;
        this.nPoints = nPoints;
        this.nVariation = nVariation;
    }


    public String getName() {
        return nName;
    }

    public String getLocation() {
        return nLocation;
    }

    public String getPoints() {
            return nPoints.toString();
    }

    public String getVariation() {
        return nVariation.toString() + "%";
    }
}
