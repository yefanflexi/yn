package com.szc.enterprise.web.model;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class ReportProbeperExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    protected Integer limitStart;

    protected Integer limitEnd;
    
    private String platform_all;
    private String location_all;
    private String provider_all;
    
    private String platform;
    private String location;
    private String provider;

    public String getPlatform() {
		return platform;
	}

	public void setPlatform(String platform) {
		this.platform = platform;
	}

	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}

	public String getProvider() {
		return provider;
	}

	public void setProvider(String provider) {
		this.provider = provider;
	}

	public String getPlatform_all() {
		return platform_all;
	}

	public void setPlatform_all(String platform_all) {
		this.platform_all = platform_all;
	}

	public String getLocation_all() {
		return location_all;
	}

	public void setLocation_all(String location_all) {
		this.location_all = location_all;
	}

	public String getProvider_all() {
		return provider_all;
	}

	public void setProvider_all(String provider_all) {
		this.provider_all = provider_all;
	}

	public ReportProbeperExample() {
        oredCriteria = new ArrayList<Criteria>();
    }

    public void setOrderByClause(String orderByClause) {
        this.orderByClause = orderByClause;
    }

    public String getOrderByClause() {
        return orderByClause;
    }

    public void setDistinct(boolean distinct) {
        this.distinct = distinct;
    }

    public boolean isDistinct() {
        return distinct;
    }

    public List<Criteria> getOredCriteria() {
        return oredCriteria;
    }

    public void or(Criteria criteria) {
        oredCriteria.add(criteria);
    }

    public Criteria or() {
        Criteria criteria = createCriteriaInternal();
        oredCriteria.add(criteria);
        return criteria;
    }

    public Criteria createCriteria() {
        Criteria criteria = createCriteriaInternal();
        if (oredCriteria.size() == 0) {
            oredCriteria.add(criteria);
        }
        return criteria;
    }

    protected Criteria createCriteriaInternal() {
        Criteria criteria = new Criteria();
        return criteria;
    }

    public void clear() {
        oredCriteria.clear();
        orderByClause = null;
        distinct = false;
    }

    public void setLimitStart(Integer limitStart) {
        this.limitStart=limitStart;
    }

    public Integer getLimitStart() {
        return limitStart;
    }

    public void setLimitEnd(Integer limitEnd) {
        this.limitEnd=limitEnd;
    }

    public Integer getLimitEnd() {
        return limitEnd;
    }

    protected abstract static class GeneratedCriteria {
        protected List<Criterion> criteria;

        protected GeneratedCriteria() {
            super();
            criteria = new ArrayList<Criterion>();
        }

        public boolean isValid() {
            return criteria.size() > 0;
        }

        public List<Criterion> getAllCriteria() {
            return criteria;
        }

        public List<Criterion> getCriteria() {
            return criteria;
        }

        protected void addCriterion(String condition) {
            if (condition == null) {
                throw new RuntimeException("Value for condition cannot be null");
            }
            criteria.add(new Criterion(condition));
        }

        protected void addCriterion(String condition, Object value, String property) {
            if (value == null) {
                throw new RuntimeException("Value for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value));
        }

        protected void addCriterion(String condition, Object value1, Object value2, String property) {
            if (value1 == null || value2 == null) {
                throw new RuntimeException("Between values for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value1, value2));
        }

        public Criteria andTimestampIsNull() {
            addCriterion("TimeStamp is null");
            return (Criteria) this;
        }

        public Criteria andTimestampIsNotNull() {
            addCriterion("TimeStamp is not null");
            return (Criteria) this;
        }

        public Criteria andTimestampEqualTo(Date value) {
            addCriterion("TimeStamp =", value, "timestamp");
            return (Criteria) this;
        }

        public Criteria andTimestampNotEqualTo(Date value) {
            addCriterion("TimeStamp <>", value, "timestamp");
            return (Criteria) this;
        }

        public Criteria andTimestampGreaterThan(Date value) {
            addCriterion("TimeStamp >", value, "timestamp");
            return (Criteria) this;
        }

        public Criteria andTimestampGreaterThanOrEqualTo(Date value) {
            addCriterion("TimeStamp >=", value, "timestamp");
            return (Criteria) this;
        }

        public Criteria andTimestampLessThan(Date value) {
            addCriterion("TimeStamp <", value, "timestamp");
            return (Criteria) this;
        }

        public Criteria andTimestampLessThanOrEqualTo(Date value) {
            addCriterion("TimeStamp <=", value, "timestamp");
            return (Criteria) this;
        }

        public Criteria andTimestampIn(List<Date> values) {
            addCriterion("TimeStamp in", values, "timestamp");
            return (Criteria) this;
        }

        public Criteria andTimestampNotIn(List<Date> values) {
            addCriterion("TimeStamp not in", values, "timestamp");
            return (Criteria) this;
        }

        public Criteria andTimestampBetween(Date value1, Date value2) {
            addCriterion("TimeStamp between", value1, value2, "timestamp");
            return (Criteria) this;
        }

        public Criteria andTimestampNotBetween(Date value1, Date value2) {
            addCriterion("TimeStamp not between", value1, value2, "timestamp");
            return (Criteria) this;
        }

        public Criteria andPlatformIsNull() {
            addCriterion("Platform is null");
            return (Criteria) this;
        }

        public Criteria andPlatformIsNotNull() {
            addCriterion("Platform is not null");
            return (Criteria) this;
        }

        public Criteria andPlatformEqualTo(String value) {
            addCriterion("Platform =", value, "platform");
            return (Criteria) this;
        }

        public Criteria andPlatformNotEqualTo(String value) {
            addCriterion("Platform <>", value, "platform");
            return (Criteria) this;
        }

        public Criteria andPlatformGreaterThan(String value) {
            addCriterion("Platform >", value, "platform");
            return (Criteria) this;
        }

        public Criteria andPlatformGreaterThanOrEqualTo(String value) {
            addCriterion("Platform >=", value, "platform");
            return (Criteria) this;
        }

        public Criteria andPlatformLessThan(String value) {
            addCriterion("Platform <", value, "platform");
            return (Criteria) this;
        }

        public Criteria andPlatformLessThanOrEqualTo(String value) {
            addCriterion("Platform <=", value, "platform");
            return (Criteria) this;
        }

        public Criteria andPlatformLike(String value) {
            addCriterion("Platform like", value, "platform");
            return (Criteria) this;
        }

        public Criteria andPlatformNotLike(String value) {
            addCriterion("Platform not like", value, "platform");
            return (Criteria) this;
        }

        public Criteria andPlatformIn(List<String> values) {
            addCriterion("Platform in", values, "platform");
            return (Criteria) this;
        }

        public Criteria andPlatformNotIn(List<String> values) {
            addCriterion("Platform not in", values, "platform");
            return (Criteria) this;
        }

        public Criteria andPlatformBetween(String value1, String value2) {
            addCriterion("Platform between", value1, value2, "platform");
            return (Criteria) this;
        }

        public Criteria andPlatformNotBetween(String value1, String value2) {
            addCriterion("Platform not between", value1, value2, "platform");
            return (Criteria) this;
        }

        public Criteria andLocationIsNull() {
            addCriterion("Location is null");
            return (Criteria) this;
        }

        public Criteria andLocationIsNotNull() {
            addCriterion("Location is not null");
            return (Criteria) this;
        }

        public Criteria andLocationEqualTo(String value) {
            addCriterion("Location =", value, "location");
            return (Criteria) this;
        }

        public Criteria andLocationNotEqualTo(String value) {
            addCriterion("Location <>", value, "location");
            return (Criteria) this;
        }

        public Criteria andLocationGreaterThan(String value) {
            addCriterion("Location >", value, "location");
            return (Criteria) this;
        }

        public Criteria andLocationGreaterThanOrEqualTo(String value) {
            addCriterion("Location >=", value, "location");
            return (Criteria) this;
        }

        public Criteria andLocationLessThan(String value) {
            addCriterion("Location <", value, "location");
            return (Criteria) this;
        }

        public Criteria andLocationLessThanOrEqualTo(String value) {
            addCriterion("Location <=", value, "location");
            return (Criteria) this;
        }

        public Criteria andLocationLike(String value) {
            addCriterion("Location like", value, "location");
            return (Criteria) this;
        }

        public Criteria andLocationNotLike(String value) {
            addCriterion("Location not like", value, "location");
            return (Criteria) this;
        }

        public Criteria andLocationIn(List<String> values) {
            addCriterion("Location in", values, "location");
            return (Criteria) this;
        }

        public Criteria andLocationNotIn(List<String> values) {
            addCriterion("Location not in", values, "location");
            return (Criteria) this;
        }

        public Criteria andLocationBetween(String value1, String value2) {
            addCriterion("Location between", value1, value2, "location");
            return (Criteria) this;
        }

        public Criteria andLocationNotBetween(String value1, String value2) {
            addCriterion("Location not between", value1, value2, "location");
            return (Criteria) this;
        }

        public Criteria andProviderIsNull() {
            addCriterion("Provider is null");
            return (Criteria) this;
        }

        public Criteria andProviderIsNotNull() {
            addCriterion("Provider is not null");
            return (Criteria) this;
        }

        public Criteria andProviderEqualTo(String value) {
            addCriterion("Provider =", value, "provider");
            return (Criteria) this;
        }

        public Criteria andProviderNotEqualTo(String value) {
            addCriterion("Provider <>", value, "provider");
            return (Criteria) this;
        }

        public Criteria andProviderGreaterThan(String value) {
            addCriterion("Provider >", value, "provider");
            return (Criteria) this;
        }

        public Criteria andProviderGreaterThanOrEqualTo(String value) {
            addCriterion("Provider >=", value, "provider");
            return (Criteria) this;
        }

        public Criteria andProviderLessThan(String value) {
            addCriterion("Provider <", value, "provider");
            return (Criteria) this;
        }

        public Criteria andProviderLessThanOrEqualTo(String value) {
            addCriterion("Provider <=", value, "provider");
            return (Criteria) this;
        }

        public Criteria andProviderLike(String value) {
            addCriterion("Provider like", value, "provider");
            return (Criteria) this;
        }

        public Criteria andProviderNotLike(String value) {
            addCriterion("Provider not like", value, "provider");
            return (Criteria) this;
        }

        public Criteria andProviderIn(List<String> values) {
            addCriterion("Provider in", values, "provider");
            return (Criteria) this;
        }

        public Criteria andProviderNotIn(List<String> values) {
            addCriterion("Provider not in", values, "provider");
            return (Criteria) this;
        }

        public Criteria andProviderBetween(String value1, String value2) {
            addCriterion("Provider between", value1, value2, "provider");
            return (Criteria) this;
        }

        public Criteria andProviderNotBetween(String value1, String value2) {
            addCriterion("Provider not between", value1, value2, "provider");
            return (Criteria) this;
        }

        public Criteria andUsedcpuIsNull() {
            addCriterion("UsedCPU is null");
            return (Criteria) this;
        }

        public Criteria andUsedcpuIsNotNull() {
            addCriterion("UsedCPU is not null");
            return (Criteria) this;
        }

        public Criteria andUsedcpuEqualTo(Double value) {
            addCriterion("UsedCPU =", value, "usedcpu");
            return (Criteria) this;
        }

        public Criteria andUsedcpuNotEqualTo(Double value) {
            addCriterion("UsedCPU <>", value, "usedcpu");
            return (Criteria) this;
        }

        public Criteria andUsedcpuGreaterThan(Double value) {
            addCriterion("UsedCPU >", value, "usedcpu");
            return (Criteria) this;
        }

        public Criteria andUsedcpuGreaterThanOrEqualTo(Double value) {
            addCriterion("UsedCPU >=", value, "usedcpu");
            return (Criteria) this;
        }

        public Criteria andUsedcpuLessThan(Double value) {
            addCriterion("UsedCPU <", value, "usedcpu");
            return (Criteria) this;
        }

        public Criteria andUsedcpuLessThanOrEqualTo(Double value) {
            addCriterion("UsedCPU <=", value, "usedcpu");
            return (Criteria) this;
        }

        public Criteria andUsedcpuIn(List<Double> values) {
            addCriterion("UsedCPU in", values, "usedcpu");
            return (Criteria) this;
        }

        public Criteria andUsedcpuNotIn(List<Double> values) {
            addCriterion("UsedCPU not in", values, "usedcpu");
            return (Criteria) this;
        }

        public Criteria andUsedcpuBetween(Double value1, Double value2) {
            addCriterion("UsedCPU between", value1, value2, "usedcpu");
            return (Criteria) this;
        }

        public Criteria andUsedcpuNotBetween(Double value1, Double value2) {
            addCriterion("UsedCPU not between", value1, value2, "usedcpu");
            return (Criteria) this;
        }

        public Criteria andUsedmemIsNull() {
            addCriterion("UsedMEM is null");
            return (Criteria) this;
        }

        public Criteria andUsedmemIsNotNull() {
            addCriterion("UsedMEM is not null");
            return (Criteria) this;
        }

        public Criteria andUsedmemEqualTo(Double value) {
            addCriterion("UsedMEM =", value, "usedmem");
            return (Criteria) this;
        }

        public Criteria andUsedmemNotEqualTo(Double value) {
            addCriterion("UsedMEM <>", value, "usedmem");
            return (Criteria) this;
        }

        public Criteria andUsedmemGreaterThan(Double value) {
            addCriterion("UsedMEM >", value, "usedmem");
            return (Criteria) this;
        }

        public Criteria andUsedmemGreaterThanOrEqualTo(Double value) {
            addCriterion("UsedMEM >=", value, "usedmem");
            return (Criteria) this;
        }

        public Criteria andUsedmemLessThan(Double value) {
            addCriterion("UsedMEM <", value, "usedmem");
            return (Criteria) this;
        }

        public Criteria andUsedmemLessThanOrEqualTo(Double value) {
            addCriterion("UsedMEM <=", value, "usedmem");
            return (Criteria) this;
        }

        public Criteria andUsedmemIn(List<Double> values) {
            addCriterion("UsedMEM in", values, "usedmem");
            return (Criteria) this;
        }

        public Criteria andUsedmemNotIn(List<Double> values) {
            addCriterion("UsedMEM not in", values, "usedmem");
            return (Criteria) this;
        }

        public Criteria andUsedmemBetween(Double value1, Double value2) {
            addCriterion("UsedMEM between", value1, value2, "usedmem");
            return (Criteria) this;
        }

        public Criteria andUsedmemNotBetween(Double value1, Double value2) {
            addCriterion("UsedMEM not between", value1, value2, "usedmem");
            return (Criteria) this;
        }

        public Criteria andChannelchgsecIsNull() {
            addCriterion("ChannelChgSec is null");
            return (Criteria) this;
        }

        public Criteria andChannelchgsecIsNotNull() {
            addCriterion("ChannelChgSec is not null");
            return (Criteria) this;
        }

        public Criteria andChannelchgsecEqualTo(Double value) {
            addCriterion("ChannelChgSec =", value, "channelchgsec");
            return (Criteria) this;
        }

        public Criteria andChannelchgsecNotEqualTo(Double value) {
            addCriterion("ChannelChgSec <>", value, "channelchgsec");
            return (Criteria) this;
        }

        public Criteria andChannelchgsecGreaterThan(Double value) {
            addCriterion("ChannelChgSec >", value, "channelchgsec");
            return (Criteria) this;
        }

        public Criteria andChannelchgsecGreaterThanOrEqualTo(Double value) {
            addCriterion("ChannelChgSec >=", value, "channelchgsec");
            return (Criteria) this;
        }

        public Criteria andChannelchgsecLessThan(Double value) {
            addCriterion("ChannelChgSec <", value, "channelchgsec");
            return (Criteria) this;
        }

        public Criteria andChannelchgsecLessThanOrEqualTo(Double value) {
            addCriterion("ChannelChgSec <=", value, "channelchgsec");
            return (Criteria) this;
        }

        public Criteria andChannelchgsecIn(List<Double> values) {
            addCriterion("ChannelChgSec in", values, "channelchgsec");
            return (Criteria) this;
        }

        public Criteria andChannelchgsecNotIn(List<Double> values) {
            addCriterion("ChannelChgSec not in", values, "channelchgsec");
            return (Criteria) this;
        }

        public Criteria andChannelchgsecBetween(Double value1, Double value2) {
            addCriterion("ChannelChgSec between", value1, value2, "channelchgsec");
            return (Criteria) this;
        }

        public Criteria andChannelchgsecNotBetween(Double value1, Double value2) {
            addCriterion("ChannelChgSec not between", value1, value2, "channelchgsec");
            return (Criteria) this;
        }

        public Criteria andBootupsecIsNull() {
            addCriterion("BootUpSec is null");
            return (Criteria) this;
        }

        public Criteria andBootupsecIsNotNull() {
            addCriterion("BootUpSec is not null");
            return (Criteria) this;
        }

        public Criteria andBootupsecEqualTo(Double value) {
            addCriterion("BootUpSec =", value, "bootupsec");
            return (Criteria) this;
        }

        public Criteria andBootupsecNotEqualTo(Double value) {
            addCriterion("BootUpSec <>", value, "bootupsec");
            return (Criteria) this;
        }

        public Criteria andBootupsecGreaterThan(Double value) {
            addCriterion("BootUpSec >", value, "bootupsec");
            return (Criteria) this;
        }

        public Criteria andBootupsecGreaterThanOrEqualTo(Double value) {
            addCriterion("BootUpSec >=", value, "bootupsec");
            return (Criteria) this;
        }

        public Criteria andBootupsecLessThan(Double value) {
            addCriterion("BootUpSec <", value, "bootupsec");
            return (Criteria) this;
        }

        public Criteria andBootupsecLessThanOrEqualTo(Double value) {
            addCriterion("BootUpSec <=", value, "bootupsec");
            return (Criteria) this;
        }

        public Criteria andBootupsecIn(List<Double> values) {
            addCriterion("BootUpSec in", values, "bootupsec");
            return (Criteria) this;
        }

        public Criteria andBootupsecNotIn(List<Double> values) {
            addCriterion("BootUpSec not in", values, "bootupsec");
            return (Criteria) this;
        }

        public Criteria andBootupsecBetween(Double value1, Double value2) {
            addCriterion("BootUpSec between", value1, value2, "bootupsec");
            return (Criteria) this;
        }

        public Criteria andBootupsecNotBetween(Double value1, Double value2) {
            addCriterion("BootUpSec not between", value1, value2, "bootupsec");
            return (Criteria) this;
        }

        public Criteria andVodlatencsecIsNull() {
            addCriterion("VodLatencSec is null");
            return (Criteria) this;
        }

        public Criteria andVodlatencsecIsNotNull() {
            addCriterion("VodLatencSec is not null");
            return (Criteria) this;
        }

        public Criteria andVodlatencsecEqualTo(Double value) {
            addCriterion("VodLatencSec =", value, "vodlatencsec");
            return (Criteria) this;
        }

        public Criteria andVodlatencsecNotEqualTo(Double value) {
            addCriterion("VodLatencSec <>", value, "vodlatencsec");
            return (Criteria) this;
        }

        public Criteria andVodlatencsecGreaterThan(Double value) {
            addCriterion("VodLatencSec >", value, "vodlatencsec");
            return (Criteria) this;
        }

        public Criteria andVodlatencsecGreaterThanOrEqualTo(Double value) {
            addCriterion("VodLatencSec >=", value, "vodlatencsec");
            return (Criteria) this;
        }

        public Criteria andVodlatencsecLessThan(Double value) {
            addCriterion("VodLatencSec <", value, "vodlatencsec");
            return (Criteria) this;
        }

        public Criteria andVodlatencsecLessThanOrEqualTo(Double value) {
            addCriterion("VodLatencSec <=", value, "vodlatencsec");
            return (Criteria) this;
        }

        public Criteria andVodlatencsecIn(List<Double> values) {
            addCriterion("VodLatencSec in", values, "vodlatencsec");
            return (Criteria) this;
        }

        public Criteria andVodlatencsecNotIn(List<Double> values) {
            addCriterion("VodLatencSec not in", values, "vodlatencsec");
            return (Criteria) this;
        }

        public Criteria andVodlatencsecBetween(Double value1, Double value2) {
            addCriterion("VodLatencSec between", value1, value2, "vodlatencsec");
            return (Criteria) this;
        }

        public Criteria andVodlatencsecNotBetween(Double value1, Double value2) {
            addCriterion("VodLatencSec not between", value1, value2, "vodlatencsec");
            return (Criteria) this;
        }

        public Criteria andEgprspsecIsNull() {
            addCriterion("EgpRspSec is null");
            return (Criteria) this;
        }

        public Criteria andEgprspsecIsNotNull() {
            addCriterion("EgpRspSec is not null");
            return (Criteria) this;
        }

        public Criteria andEgprspsecEqualTo(Double value) {
            addCriterion("EgpRspSec =", value, "egprspsec");
            return (Criteria) this;
        }

        public Criteria andEgprspsecNotEqualTo(Double value) {
            addCriterion("EgpRspSec <>", value, "egprspsec");
            return (Criteria) this;
        }

        public Criteria andEgprspsecGreaterThan(Double value) {
            addCriterion("EgpRspSec >", value, "egprspsec");
            return (Criteria) this;
        }

        public Criteria andEgprspsecGreaterThanOrEqualTo(Double value) {
            addCriterion("EgpRspSec >=", value, "egprspsec");
            return (Criteria) this;
        }

        public Criteria andEgprspsecLessThan(Double value) {
            addCriterion("EgpRspSec <", value, "egprspsec");
            return (Criteria) this;
        }

        public Criteria andEgprspsecLessThanOrEqualTo(Double value) {
            addCriterion("EgpRspSec <=", value, "egprspsec");
            return (Criteria) this;
        }

        public Criteria andEgprspsecIn(List<Double> values) {
            addCriterion("EgpRspSec in", values, "egprspsec");
            return (Criteria) this;
        }

        public Criteria andEgprspsecNotIn(List<Double> values) {
            addCriterion("EgpRspSec not in", values, "egprspsec");
            return (Criteria) this;
        }

        public Criteria andEgprspsecBetween(Double value1, Double value2) {
            addCriterion("EgpRspSec between", value1, value2, "egprspsec");
            return (Criteria) this;
        }

        public Criteria andEgprspsecNotBetween(Double value1, Double value2) {
            addCriterion("EgpRspSec not between", value1, value2, "egprspsec");
            return (Criteria) this;
        }
    }

    public static class Criteria extends GeneratedCriteria {

        protected Criteria() {
            super();
        }
    }

    public static class Criterion {
        private String condition;

        private Object value;

        private Object secondValue;

        private boolean noValue;

        private boolean singleValue;

        private boolean betweenValue;

        private boolean listValue;

        private String typeHandler;

        public String getCondition() {
            return condition;
        }

        public Object getValue() {
            return value;
        }

        public Object getSecondValue() {
            return secondValue;
        }

        public boolean isNoValue() {
            return noValue;
        }

        public boolean isSingleValue() {
            return singleValue;
        }

        public boolean isBetweenValue() {
            return betweenValue;
        }

        public boolean isListValue() {
            return listValue;
        }

        public String getTypeHandler() {
            return typeHandler;
        }

        protected Criterion(String condition) {
            super();
            this.condition = condition;
            this.typeHandler = null;
            this.noValue = true;
        }

        protected Criterion(String condition, Object value, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.typeHandler = typeHandler;
            if (value instanceof List<?>) {
                this.listValue = true;
            } else {
                this.singleValue = true;
            }
        }

        protected Criterion(String condition, Object value) {
            this(condition, value, null);
        }

        protected Criterion(String condition, Object value, Object secondValue, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.secondValue = secondValue;
            this.typeHandler = typeHandler;
            this.betweenValue = true;
        }

        protected Criterion(String condition, Object value, Object secondValue) {
            this(condition, value, secondValue, null);
        }
    }
}