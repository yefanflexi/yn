package com.szc.enterprise.web.model;

import java.util.Date;

public class ReportProbeper {
    private Date timestamp;

    private String platform;

    private String location;

    private String provider;

    private Double usedcpu;

    private Double usedmem;

    private Double channelchgsec;

    private Double bootupsec;

    private Double vodlatencsec;

    private Double egprspsec;

    public Date getTimestamp() {
        return timestamp;
    }

    public void setTimestamp(Date timestamp) {
        this.timestamp = timestamp;
    }

    public String getPlatform() {
        return platform;
    }

    public void setPlatform(String platform) {
        this.platform = platform == null ? null : platform.trim();
    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location == null ? null : location.trim();
    }

    public String getProvider() {
        return provider;
    }

    public void setProvider(String provider) {
        this.provider = provider == null ? null : provider.trim();
    }

    public Double getUsedcpu() {
        return usedcpu;
    }

    public void setUsedcpu(Double usedcpu) {
        this.usedcpu = usedcpu;
    }

    public Double getUsedmem() {
        return usedmem;
    }

    public void setUsedmem(Double usedmem) {
        this.usedmem = usedmem;
    }

    public Double getChannelchgsec() {
        return channelchgsec;
    }

    public void setChannelchgsec(Double channelchgsec) {
        this.channelchgsec = channelchgsec;
    }

    public Double getBootupsec() {
        return bootupsec;
    }

    public void setBootupsec(Double bootupsec) {
        this.bootupsec = bootupsec;
    }

    public Double getVodlatencsec() {
        return vodlatencsec;
    }

    public void setVodlatencsec(Double vodlatencsec) {
        this.vodlatencsec = vodlatencsec;
    }

    public Double getEgprspsec() {
        return egprspsec;
    }

    public void setEgprspsec(Double egprspsec) {
        this.egprspsec = egprspsec;
    }
}