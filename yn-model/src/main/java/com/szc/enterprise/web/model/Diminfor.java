package com.szc.enterprise.web.model;

public class Diminfor {
    private Integer probeid;

    private String platform;

    private String city;

    private String provider;

    public Integer getProbeid() {
        return probeid;
    }

    public void setProbeid(Integer probeid) {
        this.probeid = probeid;
    }

    public String getPlatform() {
        return platform;
    }

    public void setPlatform(String platform) {
        this.platform = platform == null ? null : platform.trim();
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city == null ? null : city.trim();
    }

    public String getProvider() {
        return provider;
    }

    public void setProvider(String provider) {
        this.provider = provider == null ? null : provider.trim();
    }
}