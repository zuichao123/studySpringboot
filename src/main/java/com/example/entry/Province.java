package com.example.entry;

public class Province {
    private String provinceID;
    private String provinceNanme;

    public String getProvinceID() {
        return provinceID;
    }

    public void setProvinceID(String provinceID) {
        this.provinceID = provinceID;
    }

    @Override
    public String toString() {
        return "Province{" +
                "provinceID='" + provinceID + '\'' +
                ", provinceNanme='" + provinceNanme + '\'' +
                '}';
    }
}
