package com.szc.enterprise.web.model;

import java.util.Date;

public class ReportQuality {
    private Date timestamp;

    private String platform;

    private String location;

    private String provider;

    private Double authrspsuccrate;

    private Double epgrspavgsec;

    private Double epgrsptimelyrate;

    private Double tvfreezeuserrate;

    private Double liveuserfreezesecrate;

    private Double voduserfreezesecrate;

    private Double mdlostuserrate;

    private Double channelchgsecsuccrate;

    private Double channelchgavgsec;

    private Double vodrsptimelyrate;

    private Double backrsptimelyrate;

    private Double vodrspavgsec;

    private Double backrspavgsec;

    private Double vodfviewlatenctime;

    private Double backfviewlatenctime;

    private Double tvlivecutrate;

    private Long livecutseccount;

    private Long freezecount;

    private Long vodfreezecount;

    private Long backfreezecount;

    private Long livefreezecount;

    private Double vodfreezesec;

    private Double backfreezesec;

    private Double livefreezesec;

    private Double netwoklostrate;

    private Double networkavgsec;

    private Double totalusermoscount;

    private Double vodusermoscount;

    private Double backusermoscount;

    private Double liveusermoscount;

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

    public Double getAuthrspsuccrate() {
        return authrspsuccrate;
    }

    public void setAuthrspsuccrate(Double authrspsuccrate) {
        this.authrspsuccrate = authrspsuccrate;
    }

    public Double getEpgrspavgsec() {
        return epgrspavgsec;
    }

    public void setEpgrspavgsec(Double epgrspavgsec) {
        this.epgrspavgsec = epgrspavgsec;
    }

    public Double getEpgrsptimelyrate() {
        return epgrsptimelyrate;
    }

    public void setEpgrsptimelyrate(Double epgrsptimelyrate) {
        this.epgrsptimelyrate = epgrsptimelyrate;
    }

    public Double getTvfreezeuserrate() {
        return tvfreezeuserrate;
    }

    public void setTvfreezeuserrate(Double tvfreezeuserrate) {
        this.tvfreezeuserrate = tvfreezeuserrate;
    }

    public Double getLiveuserfreezesecrate() {
        return liveuserfreezesecrate;
    }

    public void setLiveuserfreezesecrate(Double liveuserfreezesecrate) {
        this.liveuserfreezesecrate = liveuserfreezesecrate;
    }

    public Double getVoduserfreezesecrate() {
        return voduserfreezesecrate;
    }

    public void setVoduserfreezesecrate(Double voduserfreezesecrate) {
        this.voduserfreezesecrate = voduserfreezesecrate;
    }

    public Double getMdlostuserrate() {
        return mdlostuserrate;
    }

    public void setMdlostuserrate(Double mdlostuserrate) {
        this.mdlostuserrate = mdlostuserrate;
    }

    public Double getChannelchgsecsuccrate() {
        return channelchgsecsuccrate;
    }

    public void setChannelchgsecsuccrate(Double channelchgsecsuccrate) {
        this.channelchgsecsuccrate = channelchgsecsuccrate;
    }

    public Double getChannelchgavgsec() {
        return channelchgavgsec;
    }

    public void setChannelchgavgsec(Double channelchgavgsec) {
        this.channelchgavgsec = channelchgavgsec;
    }

    public Double getVodrsptimelyrate() {
        return vodrsptimelyrate;
    }

    public void setVodrsptimelyrate(Double vodrsptimelyrate) {
        this.vodrsptimelyrate = vodrsptimelyrate;
    }

    public Double getBackrsptimelyrate() {
        return backrsptimelyrate;
    }

    public void setBackrsptimelyrate(Double backrsptimelyrate) {
        this.backrsptimelyrate = backrsptimelyrate;
    }

    public Double getVodrspavgsec() {
        return vodrspavgsec;
    }

    public void setVodrspavgsec(Double vodrspavgsec) {
        this.vodrspavgsec = vodrspavgsec;
    }

    public Double getBackrspavgsec() {
        return backrspavgsec;
    }

    public void setBackrspavgsec(Double backrspavgsec) {
        this.backrspavgsec = backrspavgsec;
    }

    public Double getVodfviewlatenctime() {
        return vodfviewlatenctime;
    }

    public void setVodfviewlatenctime(Double vodfviewlatenctime) {
        this.vodfviewlatenctime = vodfviewlatenctime;
    }

    public Double getBackfviewlatenctime() {
        return backfviewlatenctime;
    }

    public void setBackfviewlatenctime(Double backfviewlatenctime) {
        this.backfviewlatenctime = backfviewlatenctime;
    }

    public Double getTvlivecutrate() {
        return tvlivecutrate;
    }

    public void setTvlivecutrate(Double tvlivecutrate) {
        this.tvlivecutrate = tvlivecutrate;
    }

    public Long getLivecutseccount() {
        return livecutseccount;
    }

    public void setLivecutseccount(Long livecutseccount) {
        this.livecutseccount = livecutseccount;
    }

    public Long getFreezecount() {
        return freezecount;
    }

    public void setFreezecount(Long freezecount) {
        this.freezecount = freezecount;
    }

    public Long getVodfreezecount() {
        return vodfreezecount;
    }

    public void setVodfreezecount(Long vodfreezecount) {
        this.vodfreezecount = vodfreezecount;
    }

    public Long getBackfreezecount() {
        return backfreezecount;
    }

    public void setBackfreezecount(Long backfreezecount) {
        this.backfreezecount = backfreezecount;
    }

    public Long getLivefreezecount() {
        return livefreezecount;
    }

    public void setLivefreezecount(Long livefreezecount) {
        this.livefreezecount = livefreezecount;
    }

    public Double getVodfreezesec() {
        return vodfreezesec;
    }

    public void setVodfreezesec(Double vodfreezesec) {
        this.vodfreezesec = vodfreezesec;
    }

    public Double getBackfreezesec() {
        return backfreezesec;
    }

    public void setBackfreezesec(Double backfreezesec) {
        this.backfreezesec = backfreezesec;
    }

    public Double getLivefreezesec() {
        return livefreezesec;
    }

    public void setLivefreezesec(Double livefreezesec) {
        this.livefreezesec = livefreezesec;
    }

    public Double getNetwoklostrate() {
        return netwoklostrate;
    }

    public void setNetwoklostrate(Double netwoklostrate) {
        this.netwoklostrate = netwoklostrate;
    }

    public Double getNetworkavgsec() {
        return networkavgsec;
    }

    public void setNetworkavgsec(Double networkavgsec) {
        this.networkavgsec = networkavgsec;
    }

    public Double getTotalusermoscount() {
        return totalusermoscount;
    }

    public void setTotalusermoscount(Double totalusermoscount) {
        this.totalusermoscount = totalusermoscount;
    }

    public Double getVodusermoscount() {
        return vodusermoscount;
    }

    public void setVodusermoscount(Double vodusermoscount) {
        this.vodusermoscount = vodusermoscount;
    }

    public Double getBackusermoscount() {
        return backusermoscount;
    }

    public void setBackusermoscount(Double backusermoscount) {
        this.backusermoscount = backusermoscount;
    }

    public Double getLiveusermoscount() {
        return liveusermoscount;
    }

    public void setLiveusermoscount(Double liveusermoscount) {
        this.liveusermoscount = liveusermoscount;
    }
}