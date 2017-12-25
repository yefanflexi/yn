package com.szc.enterprise.web.model;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class ReportExpertExample {
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

	public ReportExpertExample() {
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

        public Criteria andDeviceexpertcountIsNull() {
            addCriterion("DeviceExpertCount is null");
            return (Criteria) this;
        }

        public Criteria andDeviceexpertcountIsNotNull() {
            addCriterion("DeviceExpertCount is not null");
            return (Criteria) this;
        }

        public Criteria andDeviceexpertcountEqualTo(Long value) {
            addCriterion("DeviceExpertCount =", value, "deviceexpertcount");
            return (Criteria) this;
        }

        public Criteria andDeviceexpertcountNotEqualTo(Long value) {
            addCriterion("DeviceExpertCount <>", value, "deviceexpertcount");
            return (Criteria) this;
        }

        public Criteria andDeviceexpertcountGreaterThan(Long value) {
            addCriterion("DeviceExpertCount >", value, "deviceexpertcount");
            return (Criteria) this;
        }

        public Criteria andDeviceexpertcountGreaterThanOrEqualTo(Long value) {
            addCriterion("DeviceExpertCount >=", value, "deviceexpertcount");
            return (Criteria) this;
        }

        public Criteria andDeviceexpertcountLessThan(Long value) {
            addCriterion("DeviceExpertCount <", value, "deviceexpertcount");
            return (Criteria) this;
        }

        public Criteria andDeviceexpertcountLessThanOrEqualTo(Long value) {
            addCriterion("DeviceExpertCount <=", value, "deviceexpertcount");
            return (Criteria) this;
        }

        public Criteria andDeviceexpertcountIn(List<Long> values) {
            addCriterion("DeviceExpertCount in", values, "deviceexpertcount");
            return (Criteria) this;
        }

        public Criteria andDeviceexpertcountNotIn(List<Long> values) {
            addCriterion("DeviceExpertCount not in", values, "deviceexpertcount");
            return (Criteria) this;
        }

        public Criteria andDeviceexpertcountBetween(Long value1, Long value2) {
            addCriterion("DeviceExpertCount between", value1, value2, "deviceexpertcount");
            return (Criteria) this;
        }

        public Criteria andDeviceexpertcountNotBetween(Long value1, Long value2) {
            addCriterion("DeviceExpertCount not between", value1, value2, "deviceexpertcount");
            return (Criteria) this;
        }

        public Criteria andNetworkexpertcountIsNull() {
            addCriterion("NetworkExpertCount is null");
            return (Criteria) this;
        }

        public Criteria andNetworkexpertcountIsNotNull() {
            addCriterion("NetworkExpertCount is not null");
            return (Criteria) this;
        }

        public Criteria andNetworkexpertcountEqualTo(Long value) {
            addCriterion("NetworkExpertCount =", value, "networkexpertcount");
            return (Criteria) this;
        }

        public Criteria andNetworkexpertcountNotEqualTo(Long value) {
            addCriterion("NetworkExpertCount <>", value, "networkexpertcount");
            return (Criteria) this;
        }

        public Criteria andNetworkexpertcountGreaterThan(Long value) {
            addCriterion("NetworkExpertCount >", value, "networkexpertcount");
            return (Criteria) this;
        }

        public Criteria andNetworkexpertcountGreaterThanOrEqualTo(Long value) {
            addCriterion("NetworkExpertCount >=", value, "networkexpertcount");
            return (Criteria) this;
        }

        public Criteria andNetworkexpertcountLessThan(Long value) {
            addCriterion("NetworkExpertCount <", value, "networkexpertcount");
            return (Criteria) this;
        }

        public Criteria andNetworkexpertcountLessThanOrEqualTo(Long value) {
            addCriterion("NetworkExpertCount <=", value, "networkexpertcount");
            return (Criteria) this;
        }

        public Criteria andNetworkexpertcountIn(List<Long> values) {
            addCriterion("NetworkExpertCount in", values, "networkexpertcount");
            return (Criteria) this;
        }

        public Criteria andNetworkexpertcountNotIn(List<Long> values) {
            addCriterion("NetworkExpertCount not in", values, "networkexpertcount");
            return (Criteria) this;
        }

        public Criteria andNetworkexpertcountBetween(Long value1, Long value2) {
            addCriterion("NetworkExpertCount between", value1, value2, "networkexpertcount");
            return (Criteria) this;
        }

        public Criteria andNetworkexpertcountNotBetween(Long value1, Long value2) {
            addCriterion("NetworkExpertCount not between", value1, value2, "networkexpertcount");
            return (Criteria) this;
        }

        public Criteria andEpgrspslowcountIsNull() {
            addCriterion("EpgRspSlowCount is null");
            return (Criteria) this;
        }

        public Criteria andEpgrspslowcountIsNotNull() {
            addCriterion("EpgRspSlowCount is not null");
            return (Criteria) this;
        }

        public Criteria andEpgrspslowcountEqualTo(Long value) {
            addCriterion("EpgRspSlowCount =", value, "epgrspslowcount");
            return (Criteria) this;
        }

        public Criteria andEpgrspslowcountNotEqualTo(Long value) {
            addCriterion("EpgRspSlowCount <>", value, "epgrspslowcount");
            return (Criteria) this;
        }

        public Criteria andEpgrspslowcountGreaterThan(Long value) {
            addCriterion("EpgRspSlowCount >", value, "epgrspslowcount");
            return (Criteria) this;
        }

        public Criteria andEpgrspslowcountGreaterThanOrEqualTo(Long value) {
            addCriterion("EpgRspSlowCount >=", value, "epgrspslowcount");
            return (Criteria) this;
        }

        public Criteria andEpgrspslowcountLessThan(Long value) {
            addCriterion("EpgRspSlowCount <", value, "epgrspslowcount");
            return (Criteria) this;
        }

        public Criteria andEpgrspslowcountLessThanOrEqualTo(Long value) {
            addCriterion("EpgRspSlowCount <=", value, "epgrspslowcount");
            return (Criteria) this;
        }

        public Criteria andEpgrspslowcountIn(List<Long> values) {
            addCriterion("EpgRspSlowCount in", values, "epgrspslowcount");
            return (Criteria) this;
        }

        public Criteria andEpgrspslowcountNotIn(List<Long> values) {
            addCriterion("EpgRspSlowCount not in", values, "epgrspslowcount");
            return (Criteria) this;
        }

        public Criteria andEpgrspslowcountBetween(Long value1, Long value2) {
            addCriterion("EpgRspSlowCount between", value1, value2, "epgrspslowcount");
            return (Criteria) this;
        }

        public Criteria andEpgrspslowcountNotBetween(Long value1, Long value2) {
            addCriterion("EpgRspSlowCount not between", value1, value2, "epgrspslowcount");
            return (Criteria) this;
        }

        public Criteria andVodsourceproblemIsNull() {
            addCriterion("VodSourceProblem is null");
            return (Criteria) this;
        }

        public Criteria andVodsourceproblemIsNotNull() {
            addCriterion("VodSourceProblem is not null");
            return (Criteria) this;
        }

        public Criteria andVodsourceproblemEqualTo(String value) {
            addCriterion("VodSourceProblem =", value, "vodsourceproblem");
            return (Criteria) this;
        }

        public Criteria andVodsourceproblemNotEqualTo(String value) {
            addCriterion("VodSourceProblem <>", value, "vodsourceproblem");
            return (Criteria) this;
        }

        public Criteria andVodsourceproblemGreaterThan(String value) {
            addCriterion("VodSourceProblem >", value, "vodsourceproblem");
            return (Criteria) this;
        }

        public Criteria andVodsourceproblemGreaterThanOrEqualTo(String value) {
            addCriterion("VodSourceProblem >=", value, "vodsourceproblem");
            return (Criteria) this;
        }

        public Criteria andVodsourceproblemLessThan(String value) {
            addCriterion("VodSourceProblem <", value, "vodsourceproblem");
            return (Criteria) this;
        }

        public Criteria andVodsourceproblemLessThanOrEqualTo(String value) {
            addCriterion("VodSourceProblem <=", value, "vodsourceproblem");
            return (Criteria) this;
        }

        public Criteria andVodsourceproblemLike(String value) {
            addCriterion("VodSourceProblem like", value, "vodsourceproblem");
            return (Criteria) this;
        }

        public Criteria andVodsourceproblemNotLike(String value) {
            addCriterion("VodSourceProblem not like", value, "vodsourceproblem");
            return (Criteria) this;
        }

        public Criteria andVodsourceproblemIn(List<String> values) {
            addCriterion("VodSourceProblem in", values, "vodsourceproblem");
            return (Criteria) this;
        }

        public Criteria andVodsourceproblemNotIn(List<String> values) {
            addCriterion("VodSourceProblem not in", values, "vodsourceproblem");
            return (Criteria) this;
        }

        public Criteria andVodsourceproblemBetween(String value1, String value2) {
            addCriterion("VodSourceProblem between", value1, value2, "vodsourceproblem");
            return (Criteria) this;
        }

        public Criteria andVodsourceproblemNotBetween(String value1, String value2) {
            addCriterion("VodSourceProblem not between", value1, value2, "vodsourceproblem");
            return (Criteria) this;
        }

        public Criteria andLiveabnormalusercountIsNull() {
            addCriterion("LiveAbnormalUserCount is null");
            return (Criteria) this;
        }

        public Criteria andLiveabnormalusercountIsNotNull() {
            addCriterion("LiveAbnormalUserCount is not null");
            return (Criteria) this;
        }

        public Criteria andLiveabnormalusercountEqualTo(Long value) {
            addCriterion("LiveAbnormalUserCount =", value, "liveabnormalusercount");
            return (Criteria) this;
        }

        public Criteria andLiveabnormalusercountNotEqualTo(Long value) {
            addCriterion("LiveAbnormalUserCount <>", value, "liveabnormalusercount");
            return (Criteria) this;
        }

        public Criteria andLiveabnormalusercountGreaterThan(Long value) {
            addCriterion("LiveAbnormalUserCount >", value, "liveabnormalusercount");
            return (Criteria) this;
        }

        public Criteria andLiveabnormalusercountGreaterThanOrEqualTo(Long value) {
            addCriterion("LiveAbnormalUserCount >=", value, "liveabnormalusercount");
            return (Criteria) this;
        }

        public Criteria andLiveabnormalusercountLessThan(Long value) {
            addCriterion("LiveAbnormalUserCount <", value, "liveabnormalusercount");
            return (Criteria) this;
        }

        public Criteria andLiveabnormalusercountLessThanOrEqualTo(Long value) {
            addCriterion("LiveAbnormalUserCount <=", value, "liveabnormalusercount");
            return (Criteria) this;
        }

        public Criteria andLiveabnormalusercountIn(List<Long> values) {
            addCriterion("LiveAbnormalUserCount in", values, "liveabnormalusercount");
            return (Criteria) this;
        }

        public Criteria andLiveabnormalusercountNotIn(List<Long> values) {
            addCriterion("LiveAbnormalUserCount not in", values, "liveabnormalusercount");
            return (Criteria) this;
        }

        public Criteria andLiveabnormalusercountBetween(Long value1, Long value2) {
            addCriterion("LiveAbnormalUserCount between", value1, value2, "liveabnormalusercount");
            return (Criteria) this;
        }

        public Criteria andLiveabnormalusercountNotBetween(Long value1, Long value2) {
            addCriterion("LiveAbnormalUserCount not between", value1, value2, "liveabnormalusercount");
            return (Criteria) this;
        }

        public Criteria andLiveabnormaluserrateIsNull() {
            addCriterion("LiveAbnormalUserRate is null");
            return (Criteria) this;
        }

        public Criteria andLiveabnormaluserrateIsNotNull() {
            addCriterion("LiveAbnormalUserRate is not null");
            return (Criteria) this;
        }

        public Criteria andLiveabnormaluserrateEqualTo(Double value) {
            addCriterion("LiveAbnormalUserRate =", value, "liveabnormaluserrate");
            return (Criteria) this;
        }

        public Criteria andLiveabnormaluserrateNotEqualTo(Double value) {
            addCriterion("LiveAbnormalUserRate <>", value, "liveabnormaluserrate");
            return (Criteria) this;
        }

        public Criteria andLiveabnormaluserrateGreaterThan(Double value) {
            addCriterion("LiveAbnormalUserRate >", value, "liveabnormaluserrate");
            return (Criteria) this;
        }

        public Criteria andLiveabnormaluserrateGreaterThanOrEqualTo(Double value) {
            addCriterion("LiveAbnormalUserRate >=", value, "liveabnormaluserrate");
            return (Criteria) this;
        }

        public Criteria andLiveabnormaluserrateLessThan(Double value) {
            addCriterion("LiveAbnormalUserRate <", value, "liveabnormaluserrate");
            return (Criteria) this;
        }

        public Criteria andLiveabnormaluserrateLessThanOrEqualTo(Double value) {
            addCriterion("LiveAbnormalUserRate <=", value, "liveabnormaluserrate");
            return (Criteria) this;
        }

        public Criteria andLiveabnormaluserrateIn(List<Double> values) {
            addCriterion("LiveAbnormalUserRate in", values, "liveabnormaluserrate");
            return (Criteria) this;
        }

        public Criteria andLiveabnormaluserrateNotIn(List<Double> values) {
            addCriterion("LiveAbnormalUserRate not in", values, "liveabnormaluserrate");
            return (Criteria) this;
        }

        public Criteria andLiveabnormaluserrateBetween(Double value1, Double value2) {
            addCriterion("LiveAbnormalUserRate between", value1, value2, "liveabnormaluserrate");
            return (Criteria) this;
        }

        public Criteria andLiveabnormaluserrateNotBetween(Double value1, Double value2) {
            addCriterion("LiveAbnormalUserRate not between", value1, value2, "liveabnormaluserrate");
            return (Criteria) this;
        }

        public Criteria andVodabnormalusercountIsNull() {
            addCriterion("VodAbnormalUserCount is null");
            return (Criteria) this;
        }

        public Criteria andVodabnormalusercountIsNotNull() {
            addCriterion("VodAbnormalUserCount is not null");
            return (Criteria) this;
        }

        public Criteria andVodabnormalusercountEqualTo(Long value) {
            addCriterion("VodAbnormalUserCount =", value, "vodabnormalusercount");
            return (Criteria) this;
        }

        public Criteria andVodabnormalusercountNotEqualTo(Long value) {
            addCriterion("VodAbnormalUserCount <>", value, "vodabnormalusercount");
            return (Criteria) this;
        }

        public Criteria andVodabnormalusercountGreaterThan(Long value) {
            addCriterion("VodAbnormalUserCount >", value, "vodabnormalusercount");
            return (Criteria) this;
        }

        public Criteria andVodabnormalusercountGreaterThanOrEqualTo(Long value) {
            addCriterion("VodAbnormalUserCount >=", value, "vodabnormalusercount");
            return (Criteria) this;
        }

        public Criteria andVodabnormalusercountLessThan(Long value) {
            addCriterion("VodAbnormalUserCount <", value, "vodabnormalusercount");
            return (Criteria) this;
        }

        public Criteria andVodabnormalusercountLessThanOrEqualTo(Long value) {
            addCriterion("VodAbnormalUserCount <=", value, "vodabnormalusercount");
            return (Criteria) this;
        }

        public Criteria andVodabnormalusercountIn(List<Long> values) {
            addCriterion("VodAbnormalUserCount in", values, "vodabnormalusercount");
            return (Criteria) this;
        }

        public Criteria andVodabnormalusercountNotIn(List<Long> values) {
            addCriterion("VodAbnormalUserCount not in", values, "vodabnormalusercount");
            return (Criteria) this;
        }

        public Criteria andVodabnormalusercountBetween(Long value1, Long value2) {
            addCriterion("VodAbnormalUserCount between", value1, value2, "vodabnormalusercount");
            return (Criteria) this;
        }

        public Criteria andVodabnormalusercountNotBetween(Long value1, Long value2) {
            addCriterion("VodAbnormalUserCount not between", value1, value2, "vodabnormalusercount");
            return (Criteria) this;
        }

        public Criteria andVodabnormaluserrateIsNull() {
            addCriterion("VodAbnormalUserRate is null");
            return (Criteria) this;
        }

        public Criteria andVodabnormaluserrateIsNotNull() {
            addCriterion("VodAbnormalUserRate is not null");
            return (Criteria) this;
        }

        public Criteria andVodabnormaluserrateEqualTo(Double value) {
            addCriterion("VodAbnormalUserRate =", value, "vodabnormaluserrate");
            return (Criteria) this;
        }

        public Criteria andVodabnormaluserrateNotEqualTo(Double value) {
            addCriterion("VodAbnormalUserRate <>", value, "vodabnormaluserrate");
            return (Criteria) this;
        }

        public Criteria andVodabnormaluserrateGreaterThan(Double value) {
            addCriterion("VodAbnormalUserRate >", value, "vodabnormaluserrate");
            return (Criteria) this;
        }

        public Criteria andVodabnormaluserrateGreaterThanOrEqualTo(Double value) {
            addCriterion("VodAbnormalUserRate >=", value, "vodabnormaluserrate");
            return (Criteria) this;
        }

        public Criteria andVodabnormaluserrateLessThan(Double value) {
            addCriterion("VodAbnormalUserRate <", value, "vodabnormaluserrate");
            return (Criteria) this;
        }

        public Criteria andVodabnormaluserrateLessThanOrEqualTo(Double value) {
            addCriterion("VodAbnormalUserRate <=", value, "vodabnormaluserrate");
            return (Criteria) this;
        }

        public Criteria andVodabnormaluserrateIn(List<Double> values) {
            addCriterion("VodAbnormalUserRate in", values, "vodabnormaluserrate");
            return (Criteria) this;
        }

        public Criteria andVodabnormaluserrateNotIn(List<Double> values) {
            addCriterion("VodAbnormalUserRate not in", values, "vodabnormaluserrate");
            return (Criteria) this;
        }

        public Criteria andVodabnormaluserrateBetween(Double value1, Double value2) {
            addCriterion("VodAbnormalUserRate between", value1, value2, "vodabnormaluserrate");
            return (Criteria) this;
        }

        public Criteria andVodabnormaluserrateNotBetween(Double value1, Double value2) {
            addCriterion("VodAbnormalUserRate not between", value1, value2, "vodabnormaluserrate");
            return (Criteria) this;
        }

        public Criteria andAutfailusercountIsNull() {
            addCriterion("AutFailUserCount is null");
            return (Criteria) this;
        }

        public Criteria andAutfailusercountIsNotNull() {
            addCriterion("AutFailUserCount is not null");
            return (Criteria) this;
        }

        public Criteria andAutfailusercountEqualTo(Long value) {
            addCriterion("AutFailUserCount =", value, "autfailusercount");
            return (Criteria) this;
        }

        public Criteria andAutfailusercountNotEqualTo(Long value) {
            addCriterion("AutFailUserCount <>", value, "autfailusercount");
            return (Criteria) this;
        }

        public Criteria andAutfailusercountGreaterThan(Long value) {
            addCriterion("AutFailUserCount >", value, "autfailusercount");
            return (Criteria) this;
        }

        public Criteria andAutfailusercountGreaterThanOrEqualTo(Long value) {
            addCriterion("AutFailUserCount >=", value, "autfailusercount");
            return (Criteria) this;
        }

        public Criteria andAutfailusercountLessThan(Long value) {
            addCriterion("AutFailUserCount <", value, "autfailusercount");
            return (Criteria) this;
        }

        public Criteria andAutfailusercountLessThanOrEqualTo(Long value) {
            addCriterion("AutFailUserCount <=", value, "autfailusercount");
            return (Criteria) this;
        }

        public Criteria andAutfailusercountIn(List<Long> values) {
            addCriterion("AutFailUserCount in", values, "autfailusercount");
            return (Criteria) this;
        }

        public Criteria andAutfailusercountNotIn(List<Long> values) {
            addCriterion("AutFailUserCount not in", values, "autfailusercount");
            return (Criteria) this;
        }

        public Criteria andAutfailusercountBetween(Long value1, Long value2) {
            addCriterion("AutFailUserCount between", value1, value2, "autfailusercount");
            return (Criteria) this;
        }

        public Criteria andAutfailusercountNotBetween(Long value1, Long value2) {
            addCriterion("AutFailUserCount not between", value1, value2, "autfailusercount");
            return (Criteria) this;
        }

        public Criteria andAutfailuserrateIsNull() {
            addCriterion("AutFailUserRate is null");
            return (Criteria) this;
        }

        public Criteria andAutfailuserrateIsNotNull() {
            addCriterion("AutFailUserRate is not null");
            return (Criteria) this;
        }

        public Criteria andAutfailuserrateEqualTo(Double value) {
            addCriterion("AutFailUserRate =", value, "autfailuserrate");
            return (Criteria) this;
        }

        public Criteria andAutfailuserrateNotEqualTo(Double value) {
            addCriterion("AutFailUserRate <>", value, "autfailuserrate");
            return (Criteria) this;
        }

        public Criteria andAutfailuserrateGreaterThan(Double value) {
            addCriterion("AutFailUserRate >", value, "autfailuserrate");
            return (Criteria) this;
        }

        public Criteria andAutfailuserrateGreaterThanOrEqualTo(Double value) {
            addCriterion("AutFailUserRate >=", value, "autfailuserrate");
            return (Criteria) this;
        }

        public Criteria andAutfailuserrateLessThan(Double value) {
            addCriterion("AutFailUserRate <", value, "autfailuserrate");
            return (Criteria) this;
        }

        public Criteria andAutfailuserrateLessThanOrEqualTo(Double value) {
            addCriterion("AutFailUserRate <=", value, "autfailuserrate");
            return (Criteria) this;
        }

        public Criteria andAutfailuserrateIn(List<Double> values) {
            addCriterion("AutFailUserRate in", values, "autfailuserrate");
            return (Criteria) this;
        }

        public Criteria andAutfailuserrateNotIn(List<Double> values) {
            addCriterion("AutFailUserRate not in", values, "autfailuserrate");
            return (Criteria) this;
        }

        public Criteria andAutfailuserrateBetween(Double value1, Double value2) {
            addCriterion("AutFailUserRate between", value1, value2, "autfailuserrate");
            return (Criteria) this;
        }

        public Criteria andAutfailuserrateNotBetween(Double value1, Double value2) {
            addCriterion("AutFailUserRate not between", value1, value2, "autfailuserrate");
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