package com.szc.enterprise.web.model;

import java.util.Date;

public class ReportUserbehavior {
    private Date timestamp;

    private String platform;

    private String location;

    private String provider;

    private Long liveusercount;

    private Double liveuserrate;

    private Long vodusercount;

    private Double voduserrate;

    private Long backusercount;

    private Double backuserrate;

    private Double liveviewsec;

    private Double vodviewsec;

    private Double totalviewsec;

    private Double avgviewsec;

    private Double useronlinesec;

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

    public Long getLiveusercount() {
        return liveusercount;
    }

    public void setLiveusercount(Long liveusercount) {
        this.liveusercount = liveusercount;
    }

    public Double getLiveuserrate() {
        return liveuserrate;
    }

    public void setLiveuserrate(Double liveuserrate) {
        this.liveuserrate = liveuserrate;
    }

    public Long getVodusercount() {
        return vodusercount;
    }

    public void setVodusercount(Long vodusercount) {
        this.vodusercount = vodusercount;
    }

    public Double getVoduserrate() {
        return voduserrate;
    }

    public void setVoduserrate(Double voduserrate) {
        this.voduserrate = voduserrate;
    }

    public Long getBackusercount() {
        return backusercount;
    }

    public void setBackusercount(Long backusercount) {
        this.backusercount = backusercount;
    }

    public Double getBackuserrate() {
        return backuserrate;
    }

    public void setBackuserrate(Double backuserrate) {
        this.backuserrate = backuserrate;
    }

    public Double getLiveviewsec() {
        return liveviewsec;
    }

    public void setLiveviewsec(Double liveviewsec) {
        this.liveviewsec = liveviewsec;
    }

    public Double getVodviewsec() {
        return vodviewsec;
    }

    public void setVodviewsec(Double vodviewsec) {
        this.vodviewsec = vodviewsec;
    }

    public Double getTotalviewsec() {
        return totalviewsec;
    }

    public void setTotalviewsec(Double totalviewsec) {
        this.totalviewsec = totalviewsec;
    }

    public Double getAvgviewsec() {
        return avgviewsec;
    }

    public void setAvgviewsec(Double avgviewsec) {
        this.avgviewsec = avgviewsec;
    }

    public Double getUseronlinesec() {
        return useronlinesec;
    }

    public void setUseronlinesec(Double useronlinesec) {
        this.useronlinesec = useronlinesec;
    }
}