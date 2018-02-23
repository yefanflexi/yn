package com.szc.enterprise.web.model;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class ReportQualityNewExample {
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

	public String getPlatform() {
		return platform;
	}

	public void setPlatform(String platform) {
		this.platform = platform;
	}

	public ReportQualityNewExample() {
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

        public Criteria andAuthrspsuccrateIsNull() {
            addCriterion("AuthRspSuccRate is null");
            return (Criteria) this;
        }

        public Criteria andAuthrspsuccrateIsNotNull() {
            addCriterion("AuthRspSuccRate is not null");
            return (Criteria) this;
        }

        public Criteria andAuthrspsuccrateEqualTo(Double value) {
            addCriterion("AuthRspSuccRate =", value, "authrspsuccrate");
            return (Criteria) this;
        }

        public Criteria andAuthrspsuccrateNotEqualTo(Double value) {
            addCriterion("AuthRspSuccRate <>", value, "authrspsuccrate");
            return (Criteria) this;
        }

        public Criteria andAuthrspsuccrateGreaterThan(Double value) {
            addCriterion("AuthRspSuccRate >", value, "authrspsuccrate");
            return (Criteria) this;
        }

        public Criteria andAuthrspsuccrateGreaterThanOrEqualTo(Double value) {
            addCriterion("AuthRspSuccRate >=", value, "authrspsuccrate");
            return (Criteria) this;
        }

        public Criteria andAuthrspsuccrateLessThan(Double value) {
            addCriterion("AuthRspSuccRate <", value, "authrspsuccrate");
            return (Criteria) this;
        }

        public Criteria andAuthrspsuccrateLessThanOrEqualTo(Double value) {
            addCriterion("AuthRspSuccRate <=", value, "authrspsuccrate");
            return (Criteria) this;
        }

        public Criteria andAuthrspsuccrateIn(List<Double> values) {
            addCriterion("AuthRspSuccRate in", values, "authrspsuccrate");
            return (Criteria) this;
        }

        public Criteria andAuthrspsuccrateNotIn(List<Double> values) {
            addCriterion("AuthRspSuccRate not in", values, "authrspsuccrate");
            return (Criteria) this;
        }

        public Criteria andAuthrspsuccrateBetween(Double value1, Double value2) {
            addCriterion("AuthRspSuccRate between", value1, value2, "authrspsuccrate");
            return (Criteria) this;
        }

        public Criteria andAuthrspsuccrateNotBetween(Double value1, Double value2) {
            addCriterion("AuthRspSuccRate not between", value1, value2, "authrspsuccrate");
            return (Criteria) this;
        }

        public Criteria andEpgrspavgsecIsNull() {
            addCriterion("EpgRspAvgSec is null");
            return (Criteria) this;
        }

        public Criteria andEpgrspavgsecIsNotNull() {
            addCriterion("EpgRspAvgSec is not null");
            return (Criteria) this;
        }

        public Criteria andEpgrspavgsecEqualTo(Double value) {
            addCriterion("EpgRspAvgSec =", value, "epgrspavgsec");
            return (Criteria) this;
        }

        public Criteria andEpgrspavgsecNotEqualTo(Double value) {
            addCriterion("EpgRspAvgSec <>", value, "epgrspavgsec");
            return (Criteria) this;
        }

        public Criteria andEpgrspavgsecGreaterThan(Double value) {
            addCriterion("EpgRspAvgSec >", value, "epgrspavgsec");
            return (Criteria) this;
        }

        public Criteria andEpgrspavgsecGreaterThanOrEqualTo(Double value) {
            addCriterion("EpgRspAvgSec >=", value, "epgrspavgsec");
            return (Criteria) this;
        }

        public Criteria andEpgrspavgsecLessThan(Double value) {
            addCriterion("EpgRspAvgSec <", value, "epgrspavgsec");
            return (Criteria) this;
        }

        public Criteria andEpgrspavgsecLessThanOrEqualTo(Double value) {
            addCriterion("EpgRspAvgSec <=", value, "epgrspavgsec");
            return (Criteria) this;
        }

        public Criteria andEpgrspavgsecIn(List<Double> values) {
            addCriterion("EpgRspAvgSec in", values, "epgrspavgsec");
            return (Criteria) this;
        }

        public Criteria andEpgrspavgsecNotIn(List<Double> values) {
            addCriterion("EpgRspAvgSec not in", values, "epgrspavgsec");
            return (Criteria) this;
        }

        public Criteria andEpgrspavgsecBetween(Double value1, Double value2) {
            addCriterion("EpgRspAvgSec between", value1, value2, "epgrspavgsec");
            return (Criteria) this;
        }

        public Criteria andEpgrspavgsecNotBetween(Double value1, Double value2) {
            addCriterion("EpgRspAvgSec not between", value1, value2, "epgrspavgsec");
            return (Criteria) this;
        }

        public Criteria andEpgrsptimelycountIsNull() {
            addCriterion("EpgRspTimelyCount is null");
            return (Criteria) this;
        }

        public Criteria andEpgrsptimelycountIsNotNull() {
            addCriterion("EpgRspTimelyCount is not null");
            return (Criteria) this;
        }

        public Criteria andEpgrsptimelycountEqualTo(Double value) {
            addCriterion("EpgRspTimelyCount =", value, "epgrsptimelycount");
            return (Criteria) this;
        }

        public Criteria andEpgrsptimelycountNotEqualTo(Double value) {
            addCriterion("EpgRspTimelyCount <>", value, "epgrsptimelycount");
            return (Criteria) this;
        }

        public Criteria andEpgrsptimelycountGreaterThan(Double value) {
            addCriterion("EpgRspTimelyCount >", value, "epgrsptimelycount");
            return (Criteria) this;
        }

        public Criteria andEpgrsptimelycountGreaterThanOrEqualTo(Double value) {
            addCriterion("EpgRspTimelyCount >=", value, "epgrsptimelycount");
            return (Criteria) this;
        }

        public Criteria andEpgrsptimelycountLessThan(Double value) {
            addCriterion("EpgRspTimelyCount <", value, "epgrsptimelycount");
            return (Criteria) this;
        }

        public Criteria andEpgrsptimelycountLessThanOrEqualTo(Double value) {
            addCriterion("EpgRspTimelyCount <=", value, "epgrsptimelycount");
            return (Criteria) this;
        }

        public Criteria andEpgrsptimelycountIn(List<Double> values) {
            addCriterion("EpgRspTimelyCount in", values, "epgrsptimelycount");
            return (Criteria) this;
        }

        public Criteria andEpgrsptimelycountNotIn(List<Double> values) {
            addCriterion("EpgRspTimelyCount not in", values, "epgrsptimelycount");
            return (Criteria) this;
        }

        public Criteria andEpgrsptimelycountBetween(Double value1, Double value2) {
            addCriterion("EpgRspTimelyCount between", value1, value2, "epgrsptimelycount");
            return (Criteria) this;
        }

        public Criteria andEpgrsptimelycountNotBetween(Double value1, Double value2) {
            addCriterion("EpgRspTimelyCount not between", value1, value2, "epgrsptimelycount");
            return (Criteria) this;
        }

        public Criteria andEpgrsptimelyrateIsNull() {
            addCriterion("EpgRspTimelyRate is null");
            return (Criteria) this;
        }

        public Criteria andEpgrsptimelyrateIsNotNull() {
            addCriterion("EpgRspTimelyRate is not null");
            return (Criteria) this;
        }

        public Criteria andEpgrsptimelyrateEqualTo(Double value) {
            addCriterion("EpgRspTimelyRate =", value, "epgrsptimelyrate");
            return (Criteria) this;
        }

        public Criteria andEpgrsptimelyrateNotEqualTo(Double value) {
            addCriterion("EpgRspTimelyRate <>", value, "epgrsptimelyrate");
            return (Criteria) this;
        }

        public Criteria andEpgrsptimelyrateGreaterThan(Double value) {
            addCriterion("EpgRspTimelyRate >", value, "epgrsptimelyrate");
            return (Criteria) this;
        }

        public Criteria andEpgrsptimelyrateGreaterThanOrEqualTo(Double value) {
            addCriterion("EpgRspTimelyRate >=", value, "epgrsptimelyrate");
            return (Criteria) this;
        }

        public Criteria andEpgrsptimelyrateLessThan(Double value) {
            addCriterion("EpgRspTimelyRate <", value, "epgrsptimelyrate");
            return (Criteria) this;
        }

        public Criteria andEpgrsptimelyrateLessThanOrEqualTo(Double value) {
            addCriterion("EpgRspTimelyRate <=", value, "epgrsptimelyrate");
            return (Criteria) this;
        }

        public Criteria andEpgrsptimelyrateIn(List<Double> values) {
            addCriterion("EpgRspTimelyRate in", values, "epgrsptimelyrate");
            return (Criteria) this;
        }

        public Criteria andEpgrsptimelyrateNotIn(List<Double> values) {
            addCriterion("EpgRspTimelyRate not in", values, "epgrsptimelyrate");
            return (Criteria) this;
        }

        public Criteria andEpgrsptimelyrateBetween(Double value1, Double value2) {
            addCriterion("EpgRspTimelyRate between", value1, value2, "epgrsptimelyrate");
            return (Criteria) this;
        }

        public Criteria andEpgrsptimelyrateNotBetween(Double value1, Double value2) {
            addCriterion("EpgRspTimelyRate not between", value1, value2, "epgrsptimelyrate");
            return (Criteria) this;
        }

        public Criteria andTvfreezeusercountIsNull() {
            addCriterion("TvFreezeUserCount is null");
            return (Criteria) this;
        }

        public Criteria andTvfreezeusercountIsNotNull() {
            addCriterion("TvFreezeUserCount is not null");
            return (Criteria) this;
        }

        public Criteria andTvfreezeusercountEqualTo(Double value) {
            addCriterion("TvFreezeUserCount =", value, "tvfreezeusercount");
            return (Criteria) this;
        }

        public Criteria andTvfreezeusercountNotEqualTo(Double value) {
            addCriterion("TvFreezeUserCount <>", value, "tvfreezeusercount");
            return (Criteria) this;
        }

        public Criteria andTvfreezeusercountGreaterThan(Double value) {
            addCriterion("TvFreezeUserCount >", value, "tvfreezeusercount");
            return (Criteria) this;
        }

        public Criteria andTvfreezeusercountGreaterThanOrEqualTo(Double value) {
            addCriterion("TvFreezeUserCount >=", value, "tvfreezeusercount");
            return (Criteria) this;
        }

        public Criteria andTvfreezeusercountLessThan(Double value) {
            addCriterion("TvFreezeUserCount <", value, "tvfreezeusercount");
            return (Criteria) this;
        }

        public Criteria andTvfreezeusercountLessThanOrEqualTo(Double value) {
            addCriterion("TvFreezeUserCount <=", value, "tvfreezeusercount");
            return (Criteria) this;
        }

        public Criteria andTvfreezeusercountIn(List<Double> values) {
            addCriterion("TvFreezeUserCount in", values, "tvfreezeusercount");
            return (Criteria) this;
        }

        public Criteria andTvfreezeusercountNotIn(List<Double> values) {
            addCriterion("TvFreezeUserCount not in", values, "tvfreezeusercount");
            return (Criteria) this;
        }

        public Criteria andTvfreezeusercountBetween(Double value1, Double value2) {
            addCriterion("TvFreezeUserCount between", value1, value2, "tvfreezeusercount");
            return (Criteria) this;
        }

        public Criteria andTvfreezeusercountNotBetween(Double value1, Double value2) {
            addCriterion("TvFreezeUserCount not between", value1, value2, "tvfreezeusercount");
            return (Criteria) this;
        }

        public Criteria andTvfreezeuserrateIsNull() {
            addCriterion("TvFreezeUserRate is null");
            return (Criteria) this;
        }

        public Criteria andTvfreezeuserrateIsNotNull() {
            addCriterion("TvFreezeUserRate is not null");
            return (Criteria) this;
        }

        public Criteria andTvfreezeuserrateEqualTo(Double value) {
            addCriterion("TvFreezeUserRate =", value, "tvfreezeuserrate");
            return (Criteria) this;
        }

        public Criteria andTvfreezeuserrateNotEqualTo(Double value) {
            addCriterion("TvFreezeUserRate <>", value, "tvfreezeuserrate");
            return (Criteria) this;
        }

        public Criteria andTvfreezeuserrateGreaterThan(Double value) {
            addCriterion("TvFreezeUserRate >", value, "tvfreezeuserrate");
            return (Criteria) this;
        }

        public Criteria andTvfreezeuserrateGreaterThanOrEqualTo(Double value) {
            addCriterion("TvFreezeUserRate >=", value, "tvfreezeuserrate");
            return (Criteria) this;
        }

        public Criteria andTvfreezeuserrateLessThan(Double value) {
            addCriterion("TvFreezeUserRate <", value, "tvfreezeuserrate");
            return (Criteria) this;
        }

        public Criteria andTvfreezeuserrateLessThanOrEqualTo(Double value) {
            addCriterion("TvFreezeUserRate <=", value, "tvfreezeuserrate");
            return (Criteria) this;
        }

        public Criteria andTvfreezeuserrateIn(List<Double> values) {
            addCriterion("TvFreezeUserRate in", values, "tvfreezeuserrate");
            return (Criteria) this;
        }

        public Criteria andTvfreezeuserrateNotIn(List<Double> values) {
            addCriterion("TvFreezeUserRate not in", values, "tvfreezeuserrate");
            return (Criteria) this;
        }

        public Criteria andTvfreezeuserrateBetween(Double value1, Double value2) {
            addCriterion("TvFreezeUserRate between", value1, value2, "tvfreezeuserrate");
            return (Criteria) this;
        }

        public Criteria andTvfreezeuserrateNotBetween(Double value1, Double value2) {
            addCriterion("TvFreezeUserRate not between", value1, value2, "tvfreezeuserrate");
            return (Criteria) this;
        }
        
        public Criteria andTvfreezesecrateIsNull() {
            addCriterion("TvFreezeSecRate is null");
            return (Criteria) this;
        }

        public Criteria andTvfreezesecrateIsNotNull() {
            addCriterion("TvFreezeSecRate is not null");
            return (Criteria) this;
        }

        public Criteria andTvfreezesecrateEqualTo(Double value) {
            addCriterion("TvFreezeSecRate =", value, "tvfreezesecrate");
            return (Criteria) this;
        }

        public Criteria andTvfreezesecrateNotEqualTo(Double value) {
            addCriterion("TvFreezeSecRate <>", value, "tvfreezesecrate");
            return (Criteria) this;
        }

        public Criteria andTvfreezesecrateGreaterThan(Double value) {
            addCriterion("TvFreezeSecRate >", value, "tvfreezesecrate");
            return (Criteria) this;
        }

        public Criteria andTvfreezesecrateGreaterThanOrEqualTo(Double value) {
            addCriterion("TvFreezeSecRate >=", value, "tvfreezesecrate");
            return (Criteria) this;
        }

        public Criteria andTvfreezesecrateLessThan(Double value) {
            addCriterion("TvFreezeSecRate <", value, "tvfreezesecrate");
            return (Criteria) this;
        }

        public Criteria andTvfreezesecrateLessThanOrEqualTo(Double value) {
            addCriterion("TvFreezeSecRate <=", value, "tvfreezesecrate");
            return (Criteria) this;
        }

        public Criteria andTvfreezesecrateIn(List<Double> values) {
        	addCriterion("TvFreezeSecRate not in", values, "tvfreezesecrate");
            return (Criteria) this;
        }

        public Criteria andTvfreezesecrateNotIn(List<Double> values) {
            addCriterion("TvFreezeSecRate not in", values, "tvfreezesecrate");
            return (Criteria) this;
        }

        public Criteria andTvfreezesecrateBetween(Double value1, Double value2) {
            addCriterion("TvFreezeSecRate between", value1, value2, "tvfreezesecrate");
            return (Criteria) this;
        }

        public Criteria andTvfreezesecrateNotBetween(Double value1, Double value2) {
            addCriterion("TvFreezeSecRate not between", value1, value2, "tvfreezesecrate");
            return (Criteria) this;
        }

        public Criteria andLiveuserfreezesecrateIsNull() {
            addCriterion("LiveUserFreezeSecRate is null");
            return (Criteria) this;
        }

        public Criteria andLiveuserfreezesecrateIsNotNull() {
            addCriterion("LiveUserFreezeSecRate is not null");
            return (Criteria) this;
        }

        public Criteria andLiveuserfreezesecrateEqualTo(Double value) {
            addCriterion("LiveUserFreezeSecRate =", value, "liveuserfreezesecrate");
            return (Criteria) this;
        }

        public Criteria andLiveuserfreezesecrateNotEqualTo(Double value) {
            addCriterion("LiveUserFreezeSecRate <>", value, "liveuserfreezesecrate");
            return (Criteria) this;
        }

        public Criteria andLiveuserfreezesecrateGreaterThan(Double value) {
            addCriterion("LiveUserFreezeSecRate >", value, "liveuserfreezesecrate");
            return (Criteria) this;
        }

        public Criteria andLiveuserfreezesecrateGreaterThanOrEqualTo(Double value) {
            addCriterion("LiveUserFreezeSecRate >=", value, "liveuserfreezesecrate");
            return (Criteria) this;
        }

        public Criteria andLiveuserfreezesecrateLessThan(Double value) {
            addCriterion("LiveUserFreezeSecRate <", value, "liveuserfreezesecrate");
            return (Criteria) this;
        }

        public Criteria andLiveuserfreezesecrateLessThanOrEqualTo(Double value) {
            addCriterion("LiveUserFreezeSecRate <=", value, "liveuserfreezesecrate");
            return (Criteria) this;
        }

        public Criteria andLiveuserfreezesecrateIn(List<Double> values) {
            addCriterion("LiveUserFreezeSecRate in", values, "liveuserfreezesecrate");
            return (Criteria) this;
        }

        public Criteria andLiveuserfreezesecrateNotIn(List<Double> values) {
            addCriterion("LiveUserFreezeSecRate not in", values, "liveuserfreezesecrate");
            return (Criteria) this;
        }

        public Criteria andLiveuserfreezesecrateBetween(Double value1, Double value2) {
            addCriterion("LiveUserFreezeSecRate between", value1, value2, "liveuserfreezesecrate");
            return (Criteria) this;
        }

        public Criteria andLiveuserfreezesecrateNotBetween(Double value1, Double value2) {
            addCriterion("LiveUserFreezeSecRate not between", value1, value2, "liveuserfreezesecrate");
            return (Criteria) this;
        }

        public Criteria andVoduserfreezesecrateIsNull() {
            addCriterion("VodUserFreezeSecRate is null");
            return (Criteria) this;
        }

        public Criteria andVoduserfreezesecrateIsNotNull() {
            addCriterion("VodUserFreezeSecRate is not null");
            return (Criteria) this;
        }

        public Criteria andVoduserfreezesecrateEqualTo(Double value) {
            addCriterion("VodUserFreezeSecRate =", value, "voduserfreezesecrate");
            return (Criteria) this;
        }

        public Criteria andVoduserfreezesecrateNotEqualTo(Double value) {
            addCriterion("VodUserFreezeSecRate <>", value, "voduserfreezesecrate");
            return (Criteria) this;
        }

        public Criteria andVoduserfreezesecrateGreaterThan(Double value) {
            addCriterion("VodUserFreezeSecRate >", value, "voduserfreezesecrate");
            return (Criteria) this;
        }

        public Criteria andVoduserfreezesecrateGreaterThanOrEqualTo(Double value) {
            addCriterion("VodUserFreezeSecRate >=", value, "voduserfreezesecrate");
            return (Criteria) this;
        }

        public Criteria andVoduserfreezesecrateLessThan(Double value) {
            addCriterion("VodUserFreezeSecRate <", value, "voduserfreezesecrate");
            return (Criteria) this;
        }

        public Criteria andVoduserfreezesecrateLessThanOrEqualTo(Double value) {
            addCriterion("VodUserFreezeSecRate <=", value, "voduserfreezesecrate");
            return (Criteria) this;
        }

        public Criteria andVoduserfreezesecrateIn(List<Double> values) {
            addCriterion("VodUserFreezeSecRate in", values, "voduserfreezesecrate");
            return (Criteria) this;
        }

        public Criteria andVoduserfreezesecrateNotIn(List<Double> values) {
            addCriterion("VodUserFreezeSecRate not in", values, "voduserfreezesecrate");
            return (Criteria) this;
        }

        public Criteria andVoduserfreezesecrateBetween(Double value1, Double value2) {
            addCriterion("VodUserFreezeSecRate between", value1, value2, "voduserfreezesecrate");
            return (Criteria) this;
        }

        public Criteria andVoduserfreezesecrateNotBetween(Double value1, Double value2) {
            addCriterion("VodUserFreezeSecRate not between", value1, value2, "voduserfreezesecrate");
            return (Criteria) this;
        }

        public Criteria andMdlostuserrateIsNull() {
            addCriterion("MdLostUserRate is null");
            return (Criteria) this;
        }

        public Criteria andMdlostuserrateIsNotNull() {
            addCriterion("MdLostUserRate is not null");
            return (Criteria) this;
        }

        public Criteria andMdlostuserrateEqualTo(Double value) {
            addCriterion("MdLostUserRate =", value, "mdlostuserrate");
            return (Criteria) this;
        }

        public Criteria andMdlostuserrateNotEqualTo(Double value) {
            addCriterion("MdLostUserRate <>", value, "mdlostuserrate");
            return (Criteria) this;
        }

        public Criteria andMdlostuserrateGreaterThan(Double value) {
            addCriterion("MdLostUserRate >", value, "mdlostuserrate");
            return (Criteria) this;
        }

        public Criteria andMdlostuserrateGreaterThanOrEqualTo(Double value) {
            addCriterion("MdLostUserRate >=", value, "mdlostuserrate");
            return (Criteria) this;
        }

        public Criteria andMdlostuserrateLessThan(Double value) {
            addCriterion("MdLostUserRate <", value, "mdlostuserrate");
            return (Criteria) this;
        }

        public Criteria andMdlostuserrateLessThanOrEqualTo(Double value) {
            addCriterion("MdLostUserRate <=", value, "mdlostuserrate");
            return (Criteria) this;
        }

        public Criteria andMdlostuserrateIn(List<Double> values) {
            addCriterion("MdLostUserRate in", values, "mdlostuserrate");
            return (Criteria) this;
        }

        public Criteria andMdlostuserrateNotIn(List<Double> values) {
            addCriterion("MdLostUserRate not in", values, "mdlostuserrate");
            return (Criteria) this;
        }

        public Criteria andMdlostuserrateBetween(Double value1, Double value2) {
            addCriterion("MdLostUserRate between", value1, value2, "mdlostuserrate");
            return (Criteria) this;
        }

        public Criteria andMdlostuserrateNotBetween(Double value1, Double value2) {
            addCriterion("MdLostUserRate not between", value1, value2, "mdlostuserrate");
            return (Criteria) this;
        }

        public Criteria andChannelchgsecsuccrateIsNull() {
            addCriterion("ChannelChgSecSuccRate is null");
            return (Criteria) this;
        }

        public Criteria andChannelchgsecsuccrateIsNotNull() {
            addCriterion("ChannelChgSecSuccRate is not null");
            return (Criteria) this;
        }

        public Criteria andChannelchgsecsuccrateEqualTo(Double value) {
            addCriterion("ChannelChgSecSuccRate =", value, "channelchgsecsuccrate");
            return (Criteria) this;
        }

        public Criteria andChannelchgsecsuccrateNotEqualTo(Double value) {
            addCriterion("ChannelChgSecSuccRate <>", value, "channelchgsecsuccrate");
            return (Criteria) this;
        }

        public Criteria andChannelchgsecsuccrateGreaterThan(Double value) {
            addCriterion("ChannelChgSecSuccRate >", value, "channelchgsecsuccrate");
            return (Criteria) this;
        }

        public Criteria andChannelchgsecsuccrateGreaterThanOrEqualTo(Double value) {
            addCriterion("ChannelChgSecSuccRate >=", value, "channelchgsecsuccrate");
            return (Criteria) this;
        }

        public Criteria andChannelchgsecsuccrateLessThan(Double value) {
            addCriterion("ChannelChgSecSuccRate <", value, "channelchgsecsuccrate");
            return (Criteria) this;
        }

        public Criteria andChannelchgsecsuccrateLessThanOrEqualTo(Double value) {
            addCriterion("ChannelChgSecSuccRate <=", value, "channelchgsecsuccrate");
            return (Criteria) this;
        }

        public Criteria andChannelchgsecsuccrateIn(List<Double> values) {
            addCriterion("ChannelChgSecSuccRate in", values, "channelchgsecsuccrate");
            return (Criteria) this;
        }

        public Criteria andChannelchgsecsuccrateNotIn(List<Double> values) {
            addCriterion("ChannelChgSecSuccRate not in", values, "channelchgsecsuccrate");
            return (Criteria) this;
        }

        public Criteria andChannelchgsecsuccrateBetween(Double value1, Double value2) {
            addCriterion("ChannelChgSecSuccRate between", value1, value2, "channelchgsecsuccrate");
            return (Criteria) this;
        }

        public Criteria andChannelchgsecsuccrateNotBetween(Double value1, Double value2) {
            addCriterion("ChannelChgSecSuccRate not between", value1, value2, "channelchgsecsuccrate");
            return (Criteria) this;
        }

        public Criteria andChannelchgavgsecIsNull() {
            addCriterion("ChannelChgAvgSec is null");
            return (Criteria) this;
        }

        public Criteria andChannelchgavgsecIsNotNull() {
            addCriterion("ChannelChgAvgSec is not null");
            return (Criteria) this;
        }

        public Criteria andChannelchgavgsecEqualTo(Double value) {
            addCriterion("ChannelChgAvgSec =", value, "channelchgavgsec");
            return (Criteria) this;
        }

        public Criteria andChannelchgavgsecNotEqualTo(Double value) {
            addCriterion("ChannelChgAvgSec <>", value, "channelchgavgsec");
            return (Criteria) this;
        }

        public Criteria andChannelchgavgsecGreaterThan(Double value) {
            addCriterion("ChannelChgAvgSec >", value, "channelchgavgsec");
            return (Criteria) this;
        }

        public Criteria andChannelchgavgsecGreaterThanOrEqualTo(Double value) {
            addCriterion("ChannelChgAvgSec >=", value, "channelchgavgsec");
            return (Criteria) this;
        }

        public Criteria andChannelchgavgsecLessThan(Double value) {
            addCriterion("ChannelChgAvgSec <", value, "channelchgavgsec");
            return (Criteria) this;
        }

        public Criteria andChannelchgavgsecLessThanOrEqualTo(Double value) {
            addCriterion("ChannelChgAvgSec <=", value, "channelchgavgsec");
            return (Criteria) this;
        }

        public Criteria andChannelchgavgsecIn(List<Double> values) {
            addCriterion("ChannelChgAvgSec in", values, "channelchgavgsec");
            return (Criteria) this;
        }

        public Criteria andChannelchgavgsecNotIn(List<Double> values) {
            addCriterion("ChannelChgAvgSec not in", values, "channelchgavgsec");
            return (Criteria) this;
        }

        public Criteria andChannelchgavgsecBetween(Double value1, Double value2) {
            addCriterion("ChannelChgAvgSec between", value1, value2, "channelchgavgsec");
            return (Criteria) this;
        }

        public Criteria andChannelchgavgsecNotBetween(Double value1, Double value2) {
            addCriterion("ChannelChgAvgSec not between", value1, value2, "channelchgavgsec");
            return (Criteria) this;
        }

        public Criteria andVodrsptimelycountIsNull() {
            addCriterion("VodRspTimelyCount is null");
            return (Criteria) this;
        }

        public Criteria andVodrsptimelycountIsNotNull() {
            addCriterion("VodRspTimelyCount is not null");
            return (Criteria) this;
        }

        public Criteria andVodrsptimelycountEqualTo(Double value) {
            addCriterion("VodRspTimelyCount =", value, "vodrsptimelycount");
            return (Criteria) this;
        }

        public Criteria andVodrsptimelycountNotEqualTo(Double value) {
            addCriterion("VodRspTimelyCount <>", value, "vodrsptimelycount");
            return (Criteria) this;
        }

        public Criteria andVodrsptimelycountGreaterThan(Double value) {
            addCriterion("VodRspTimelyCount >", value, "vodrsptimelycount");
            return (Criteria) this;
        }

        public Criteria andVodrsptimelycountGreaterThanOrEqualTo(Double value) {
            addCriterion("VodRspTimelyCount >=", value, "vodrsptimelycount");
            return (Criteria) this;
        }

        public Criteria andVodrsptimelycountLessThan(Double value) {
            addCriterion("VodRspTimelyCount <", value, "vodrsptimelycount");
            return (Criteria) this;
        }

        public Criteria andVodrsptimelycountLessThanOrEqualTo(Double value) {
            addCriterion("VodRspTimelyCount <=", value, "vodrsptimelycount");
            return (Criteria) this;
        }

        public Criteria andVodrsptimelycountIn(List<Double> values) {
            addCriterion("VodRspTimelyCount in", values, "vodrsptimelycount");
            return (Criteria) this;
        }

        public Criteria andVodrsptimelycountNotIn(List<Double> values) {
            addCriterion("VodRspTimelyCount not in", values, "vodrsptimelycount");
            return (Criteria) this;
        }

        public Criteria andVodrsptimelycountBetween(Double value1, Double value2) {
            addCriterion("VodRspTimelyCount between", value1, value2, "vodrsptimelycount");
            return (Criteria) this;
        }

        public Criteria andVodrsptimelycountNotBetween(Double value1, Double value2) {
            addCriterion("VodRspTimelyCount not between", value1, value2, "vodrsptimelycount");
            return (Criteria) this;
        }

        public Criteria andVodrsptimelyrateIsNull() {
            addCriterion("VodRspTimelyRate is null");
            return (Criteria) this;
        }

        public Criteria andVodrsptimelyrateIsNotNull() {
            addCriterion("VodRspTimelyRate is not null");
            return (Criteria) this;
        }

        public Criteria andVodrsptimelyrateEqualTo(Double value) {
            addCriterion("VodRspTimelyRate =", value, "vodrsptimelyrate");
            return (Criteria) this;
        }

        public Criteria andVodrsptimelyrateNotEqualTo(Double value) {
            addCriterion("VodRspTimelyRate <>", value, "vodrsptimelyrate");
            return (Criteria) this;
        }

        public Criteria andVodrsptimelyrateGreaterThan(Double value) {
            addCriterion("VodRspTimelyRate >", value, "vodrsptimelyrate");
            return (Criteria) this;
        }

        public Criteria andVodrsptimelyrateGreaterThanOrEqualTo(Double value) {
            addCriterion("VodRspTimelyRate >=", value, "vodrsptimelyrate");
            return (Criteria) this;
        }

        public Criteria andVodrsptimelyrateLessThan(Double value) {
            addCriterion("VodRspTimelyRate <", value, "vodrsptimelyrate");
            return (Criteria) this;
        }

        public Criteria andVodrsptimelyrateLessThanOrEqualTo(Double value) {
            addCriterion("VodRspTimelyRate <=", value, "vodrsptimelyrate");
            return (Criteria) this;
        }

        public Criteria andVodrsptimelyrateIn(List<Double> values) {
            addCriterion("VodRspTimelyRate in", values, "vodrsptimelyrate");
            return (Criteria) this;
        }

        public Criteria andVodrsptimelyrateNotIn(List<Double> values) {
            addCriterion("VodRspTimelyRate not in", values, "vodrsptimelyrate");
            return (Criteria) this;
        }

        public Criteria andVodrsptimelyrateBetween(Double value1, Double value2) {
            addCriterion("VodRspTimelyRate between", value1, value2, "vodrsptimelyrate");
            return (Criteria) this;
        }

        public Criteria andVodrsptimelyrateNotBetween(Double value1, Double value2) {
            addCriterion("VodRspTimelyRate not between", value1, value2, "vodrsptimelyrate");
            return (Criteria) this;
        }

        public Criteria andBackrsptimelycountIsNull() {
            addCriterion("BackRspTimelyCount is null");
            return (Criteria) this;
        }

        public Criteria andBackrsptimelycountIsNotNull() {
            addCriterion("BackRspTimelyCount is not null");
            return (Criteria) this;
        }

        public Criteria andBackrsptimelycountEqualTo(Double value) {
            addCriterion("BackRspTimelyCount =", value, "backrsptimelycount");
            return (Criteria) this;
        }

        public Criteria andBackrsptimelycountNotEqualTo(Double value) {
            addCriterion("BackRspTimelyCount <>", value, "backrsptimelycount");
            return (Criteria) this;
        }

        public Criteria andBackrsptimelycountGreaterThan(Double value) {
            addCriterion("BackRspTimelyCount >", value, "backrsptimelycount");
            return (Criteria) this;
        }

        public Criteria andBackrsptimelycountGreaterThanOrEqualTo(Double value) {
            addCriterion("BackRspTimelyCount >=", value, "backrsptimelycount");
            return (Criteria) this;
        }

        public Criteria andBackrsptimelycountLessThan(Double value) {
            addCriterion("BackRspTimelyCount <", value, "backrsptimelycount");
            return (Criteria) this;
        }

        public Criteria andBackrsptimelycountLessThanOrEqualTo(Double value) {
            addCriterion("BackRspTimelyCount <=", value, "backrsptimelycount");
            return (Criteria) this;
        }

        public Criteria andBackrsptimelycountIn(List<Double> values) {
            addCriterion("BackRspTimelyCount in", values, "backrsptimelycount");
            return (Criteria) this;
        }

        public Criteria andBackrsptimelycountNotIn(List<Double> values) {
            addCriterion("BackRspTimelyCount not in", values, "backrsptimelycount");
            return (Criteria) this;
        }

        public Criteria andBackrsptimelycountBetween(Double value1, Double value2) {
            addCriterion("BackRspTimelyCount between", value1, value2, "backrsptimelycount");
            return (Criteria) this;
        }

        public Criteria andBackrsptimelycountNotBetween(Double value1, Double value2) {
            addCriterion("BackRspTimelyCount not between", value1, value2, "backrsptimelycount");
            return (Criteria) this;
        }

        public Criteria andBackrsptimelyrateIsNull() {
            addCriterion("BackRspTimelyRate is null");
            return (Criteria) this;
        }

        public Criteria andBackrsptimelyrateIsNotNull() {
            addCriterion("BackRspTimelyRate is not null");
            return (Criteria) this;
        }

        public Criteria andBackrsptimelyrateEqualTo(Double value) {
            addCriterion("BackRspTimelyRate =", value, "backrsptimelyrate");
            return (Criteria) this;
        }

        public Criteria andBackrsptimelyrateNotEqualTo(Double value) {
            addCriterion("BackRspTimelyRate <>", value, "backrsptimelyrate");
            return (Criteria) this;
        }

        public Criteria andBackrsptimelyrateGreaterThan(Double value) {
            addCriterion("BackRspTimelyRate >", value, "backrsptimelyrate");
            return (Criteria) this;
        }

        public Criteria andBackrsptimelyrateGreaterThanOrEqualTo(Double value) {
            addCriterion("BackRspTimelyRate >=", value, "backrsptimelyrate");
            return (Criteria) this;
        }

        public Criteria andBackrsptimelyrateLessThan(Double value) {
            addCriterion("BackRspTimelyRate <", value, "backrsptimelyrate");
            return (Criteria) this;
        }

        public Criteria andBackrsptimelyrateLessThanOrEqualTo(Double value) {
            addCriterion("BackRspTimelyRate <=", value, "backrsptimelyrate");
            return (Criteria) this;
        }

        public Criteria andBackrsptimelyrateIn(List<Double> values) {
            addCriterion("BackRspTimelyRate in", values, "backrsptimelyrate");
            return (Criteria) this;
        }

        public Criteria andBackrsptimelyrateNotIn(List<Double> values) {
            addCriterion("BackRspTimelyRate not in", values, "backrsptimelyrate");
            return (Criteria) this;
        }

        public Criteria andBackrsptimelyrateBetween(Double value1, Double value2) {
            addCriterion("BackRspTimelyRate between", value1, value2, "backrsptimelyrate");
            return (Criteria) this;
        }

        public Criteria andBackrsptimelyrateNotBetween(Double value1, Double value2) {
            addCriterion("BackRspTimelyRate not between", value1, value2, "backrsptimelyrate");
            return (Criteria) this;
        }

        public Criteria andVodrspavgsecIsNull() {
            addCriterion("VodRspAvgSec is null");
            return (Criteria) this;
        }

        public Criteria andVodrspavgsecIsNotNull() {
            addCriterion("VodRspAvgSec is not null");
            return (Criteria) this;
        }

        public Criteria andVodrspavgsecEqualTo(Double value) {
            addCriterion("VodRspAvgSec =", value, "vodrspavgsec");
            return (Criteria) this;
        }

        public Criteria andVodrspavgsecNotEqualTo(Double value) {
            addCriterion("VodRspAvgSec <>", value, "vodrspavgsec");
            return (Criteria) this;
        }

        public Criteria andVodrspavgsecGreaterThan(Double value) {
            addCriterion("VodRspAvgSec >", value, "vodrspavgsec");
            return (Criteria) this;
        }

        public Criteria andVodrspavgsecGreaterThanOrEqualTo(Double value) {
            addCriterion("VodRspAvgSec >=", value, "vodrspavgsec");
            return (Criteria) this;
        }

        public Criteria andVodrspavgsecLessThan(Double value) {
            addCriterion("VodRspAvgSec <", value, "vodrspavgsec");
            return (Criteria) this;
        }

        public Criteria andVodrspavgsecLessThanOrEqualTo(Double value) {
            addCriterion("VodRspAvgSec <=", value, "vodrspavgsec");
            return (Criteria) this;
        }

        public Criteria andVodrspavgsecIn(List<Double> values) {
            addCriterion("VodRspAvgSec in", values, "vodrspavgsec");
            return (Criteria) this;
        }

        public Criteria andVodrspavgsecNotIn(List<Double> values) {
            addCriterion("VodRspAvgSec not in", values, "vodrspavgsec");
            return (Criteria) this;
        }

        public Criteria andVodrspavgsecBetween(Double value1, Double value2) {
            addCriterion("VodRspAvgSec between", value1, value2, "vodrspavgsec");
            return (Criteria) this;
        }

        public Criteria andVodrspavgsecNotBetween(Double value1, Double value2) {
            addCriterion("VodRspAvgSec not between", value1, value2, "vodrspavgsec");
            return (Criteria) this;
        }

        public Criteria andBackrspavgsecIsNull() {
            addCriterion("BackRspAvgSec is null");
            return (Criteria) this;
        }

        public Criteria andBackrspavgsecIsNotNull() {
            addCriterion("BackRspAvgSec is not null");
            return (Criteria) this;
        }

        public Criteria andBackrspavgsecEqualTo(Double value) {
            addCriterion("BackRspAvgSec =", value, "backrspavgsec");
            return (Criteria) this;
        }

        public Criteria andBackrspavgsecNotEqualTo(Double value) {
            addCriterion("BackRspAvgSec <>", value, "backrspavgsec");
            return (Criteria) this;
        }

        public Criteria andBackrspavgsecGreaterThan(Double value) {
            addCriterion("BackRspAvgSec >", value, "backrspavgsec");
            return (Criteria) this;
        }

        public Criteria andBackrspavgsecGreaterThanOrEqualTo(Double value) {
            addCriterion("BackRspAvgSec >=", value, "backrspavgsec");
            return (Criteria) this;
        }

        public Criteria andBackrspavgsecLessThan(Double value) {
            addCriterion("BackRspAvgSec <", value, "backrspavgsec");
            return (Criteria) this;
        }

        public Criteria andBackrspavgsecLessThanOrEqualTo(Double value) {
            addCriterion("BackRspAvgSec <=", value, "backrspavgsec");
            return (Criteria) this;
        }

        public Criteria andBackrspavgsecIn(List<Double> values) {
            addCriterion("BackRspAvgSec in", values, "backrspavgsec");
            return (Criteria) this;
        }

        public Criteria andBackrspavgsecNotIn(List<Double> values) {
            addCriterion("BackRspAvgSec not in", values, "backrspavgsec");
            return (Criteria) this;
        }

        public Criteria andBackrspavgsecBetween(Double value1, Double value2) {
            addCriterion("BackRspAvgSec between", value1, value2, "backrspavgsec");
            return (Criteria) this;
        }

        public Criteria andBackrspavgsecNotBetween(Double value1, Double value2) {
            addCriterion("BackRspAvgSec not between", value1, value2, "backrspavgsec");
            return (Criteria) this;
        }

        public Criteria andVodfviewlatenctimeIsNull() {
            addCriterion("VodFviewLatencTime is null");
            return (Criteria) this;
        }

        public Criteria andVodfviewlatenctimeIsNotNull() {
            addCriterion("VodFviewLatencTime is not null");
            return (Criteria) this;
        }

        public Criteria andVodfviewlatenctimeEqualTo(Double value) {
            addCriterion("VodFviewLatencTime =", value, "vodfviewlatenctime");
            return (Criteria) this;
        }

        public Criteria andVodfviewlatenctimeNotEqualTo(Double value) {
            addCriterion("VodFviewLatencTime <>", value, "vodfviewlatenctime");
            return (Criteria) this;
        }

        public Criteria andVodfviewlatenctimeGreaterThan(Double value) {
            addCriterion("VodFviewLatencTime >", value, "vodfviewlatenctime");
            return (Criteria) this;
        }

        public Criteria andVodfviewlatenctimeGreaterThanOrEqualTo(Double value) {
            addCriterion("VodFviewLatencTime >=", value, "vodfviewlatenctime");
            return (Criteria) this;
        }

        public Criteria andVodfviewlatenctimeLessThan(Double value) {
            addCriterion("VodFviewLatencTime <", value, "vodfviewlatenctime");
            return (Criteria) this;
        }

        public Criteria andVodfviewlatenctimeLessThanOrEqualTo(Double value) {
            addCriterion("VodFviewLatencTime <=", value, "vodfviewlatenctime");
            return (Criteria) this;
        }

        public Criteria andVodfviewlatenctimeIn(List<Double> values) {
            addCriterion("VodFviewLatencTime in", values, "vodfviewlatenctime");
            return (Criteria) this;
        }

        public Criteria andVodfviewlatenctimeNotIn(List<Double> values) {
            addCriterion("VodFviewLatencTime not in", values, "vodfviewlatenctime");
            return (Criteria) this;
        }

        public Criteria andVodfviewlatenctimeBetween(Double value1, Double value2) {
            addCriterion("VodFviewLatencTime between", value1, value2, "vodfviewlatenctime");
            return (Criteria) this;
        }

        public Criteria andVodfviewlatenctimeNotBetween(Double value1, Double value2) {
            addCriterion("VodFviewLatencTime not between", value1, value2, "vodfviewlatenctime");
            return (Criteria) this;
        }

        public Criteria andBackfviewlatenctimeIsNull() {
            addCriterion("BackFviewLatencTime is null");
            return (Criteria) this;
        }

        public Criteria andBackfviewlatenctimeIsNotNull() {
            addCriterion("BackFviewLatencTime is not null");
            return (Criteria) this;
        }

        public Criteria andBackfviewlatenctimeEqualTo(Double value) {
            addCriterion("BackFviewLatencTime =", value, "backfviewlatenctime");
            return (Criteria) this;
        }

        public Criteria andBackfviewlatenctimeNotEqualTo(Double value) {
            addCriterion("BackFviewLatencTime <>", value, "backfviewlatenctime");
            return (Criteria) this;
        }

        public Criteria andBackfviewlatenctimeGreaterThan(Double value) {
            addCriterion("BackFviewLatencTime >", value, "backfviewlatenctime");
            return (Criteria) this;
        }

        public Criteria andBackfviewlatenctimeGreaterThanOrEqualTo(Double value) {
            addCriterion("BackFviewLatencTime >=", value, "backfviewlatenctime");
            return (Criteria) this;
        }

        public Criteria andBackfviewlatenctimeLessThan(Double value) {
            addCriterion("BackFviewLatencTime <", value, "backfviewlatenctime");
            return (Criteria) this;
        }

        public Criteria andBackfviewlatenctimeLessThanOrEqualTo(Double value) {
            addCriterion("BackFviewLatencTime <=", value, "backfviewlatenctime");
            return (Criteria) this;
        }

        public Criteria andBackfviewlatenctimeIn(List<Double> values) {
            addCriterion("BackFviewLatencTime in", values, "backfviewlatenctime");
            return (Criteria) this;
        }

        public Criteria andBackfviewlatenctimeNotIn(List<Double> values) {
            addCriterion("BackFviewLatencTime not in", values, "backfviewlatenctime");
            return (Criteria) this;
        }

        public Criteria andBackfviewlatenctimeBetween(Double value1, Double value2) {
            addCriterion("BackFviewLatencTime between", value1, value2, "backfviewlatenctime");
            return (Criteria) this;
        }

        public Criteria andBackfviewlatenctimeNotBetween(Double value1, Double value2) {
            addCriterion("BackFviewLatencTime not between", value1, value2, "backfviewlatenctime");
            return (Criteria) this;
        }

        public Criteria andTvlivecutrateIsNull() {
            addCriterion("TvLiveCutRate is null");
            return (Criteria) this;
        }

        public Criteria andTvlivecutrateIsNotNull() {
            addCriterion("TvLiveCutRate is not null");
            return (Criteria) this;
        }

        public Criteria andTvlivecutrateEqualTo(Double value) {
            addCriterion("TvLiveCutRate =", value, "tvlivecutrate");
            return (Criteria) this;
        }

        public Criteria andTvlivecutrateNotEqualTo(Double value) {
            addCriterion("TvLiveCutRate <>", value, "tvlivecutrate");
            return (Criteria) this;
        }

        public Criteria andTvlivecutrateGreaterThan(Double value) {
            addCriterion("TvLiveCutRate >", value, "tvlivecutrate");
            return (Criteria) this;
        }

        public Criteria andTvlivecutrateGreaterThanOrEqualTo(Double value) {
            addCriterion("TvLiveCutRate >=", value, "tvlivecutrate");
            return (Criteria) this;
        }

        public Criteria andTvlivecutrateLessThan(Double value) {
            addCriterion("TvLiveCutRate <", value, "tvlivecutrate");
            return (Criteria) this;
        }

        public Criteria andTvlivecutrateLessThanOrEqualTo(Double value) {
            addCriterion("TvLiveCutRate <=", value, "tvlivecutrate");
            return (Criteria) this;
        }

        public Criteria andTvlivecutrateIn(List<Double> values) {
            addCriterion("TvLiveCutRate in", values, "tvlivecutrate");
            return (Criteria) this;
        }

        public Criteria andTvlivecutrateNotIn(List<Double> values) {
            addCriterion("TvLiveCutRate not in", values, "tvlivecutrate");
            return (Criteria) this;
        }

        public Criteria andTvlivecutrateBetween(Double value1, Double value2) {
            addCriterion("TvLiveCutRate between", value1, value2, "tvlivecutrate");
            return (Criteria) this;
        }

        public Criteria andTvlivecutrateNotBetween(Double value1, Double value2) {
            addCriterion("TvLiveCutRate not between", value1, value2, "tvlivecutrate");
            return (Criteria) this;
        }

        public Criteria andLivecutseccountIsNull() {
            addCriterion("LiveCutSecCount is null");
            return (Criteria) this;
        }

        public Criteria andLivecutseccountIsNotNull() {
            addCriterion("LiveCutSecCount is not null");
            return (Criteria) this;
        }

        public Criteria andLivecutseccountEqualTo(Long value) {
            addCriterion("LiveCutSecCount =", value, "livecutseccount");
            return (Criteria) this;
        }

        public Criteria andLivecutseccountNotEqualTo(Long value) {
            addCriterion("LiveCutSecCount <>", value, "livecutseccount");
            return (Criteria) this;
        }

        public Criteria andLivecutseccountGreaterThan(Long value) {
            addCriterion("LiveCutSecCount >", value, "livecutseccount");
            return (Criteria) this;
        }

        public Criteria andLivecutseccountGreaterThanOrEqualTo(Long value) {
            addCriterion("LiveCutSecCount >=", value, "livecutseccount");
            return (Criteria) this;
        }

        public Criteria andLivecutseccountLessThan(Long value) {
            addCriterion("LiveCutSecCount <", value, "livecutseccount");
            return (Criteria) this;
        }

        public Criteria andLivecutseccountLessThanOrEqualTo(Long value) {
            addCriterion("LiveCutSecCount <=", value, "livecutseccount");
            return (Criteria) this;
        }

        public Criteria andLivecutseccountIn(List<Long> values) {
            addCriterion("LiveCutSecCount in", values, "livecutseccount");
            return (Criteria) this;
        }

        public Criteria andLivecutseccountNotIn(List<Long> values) {
            addCriterion("LiveCutSecCount not in", values, "livecutseccount");
            return (Criteria) this;
        }

        public Criteria andLivecutseccountBetween(Long value1, Long value2) {
            addCriterion("LiveCutSecCount between", value1, value2, "livecutseccount");
            return (Criteria) this;
        }

        public Criteria andLivecutseccountNotBetween(Long value1, Long value2) {
            addCriterion("LiveCutSecCount not between", value1, value2, "livecutseccount");
            return (Criteria) this;
        }

        public Criteria andFreezecountIsNull() {
            addCriterion("FreezeCount is null");
            return (Criteria) this;
        }

        public Criteria andFreezecountIsNotNull() {
            addCriterion("FreezeCount is not null");
            return (Criteria) this;
        }

        public Criteria andFreezecountEqualTo(Long value) {
            addCriterion("FreezeCount =", value, "freezecount");
            return (Criteria) this;
        }

        public Criteria andFreezecountNotEqualTo(Long value) {
            addCriterion("FreezeCount <>", value, "freezecount");
            return (Criteria) this;
        }

        public Criteria andFreezecountGreaterThan(Long value) {
            addCriterion("FreezeCount >", value, "freezecount");
            return (Criteria) this;
        }

        public Criteria andFreezecountGreaterThanOrEqualTo(Long value) {
            addCriterion("FreezeCount >=", value, "freezecount");
            return (Criteria) this;
        }

        public Criteria andFreezecountLessThan(Long value) {
            addCriterion("FreezeCount <", value, "freezecount");
            return (Criteria) this;
        }

        public Criteria andFreezecountLessThanOrEqualTo(Long value) {
            addCriterion("FreezeCount <=", value, "freezecount");
            return (Criteria) this;
        }

        public Criteria andFreezecountIn(List<Long> values) {
            addCriterion("FreezeCount in", values, "freezecount");
            return (Criteria) this;
        }

        public Criteria andFreezecountNotIn(List<Long> values) {
            addCriterion("FreezeCount not in", values, "freezecount");
            return (Criteria) this;
        }

        public Criteria andFreezecountBetween(Long value1, Long value2) {
            addCriterion("FreezeCount between", value1, value2, "freezecount");
            return (Criteria) this;
        }

        public Criteria andFreezecountNotBetween(Long value1, Long value2) {
            addCriterion("FreezeCount not between", value1, value2, "freezecount");
            return (Criteria) this;
        }

        public Criteria andVodfreezecountIsNull() {
            addCriterion("VodFreezeCount is null");
            return (Criteria) this;
        }

        public Criteria andVodfreezecountIsNotNull() {
            addCriterion("VodFreezeCount is not null");
            return (Criteria) this;
        }

        public Criteria andVodfreezecountEqualTo(Long value) {
            addCriterion("VodFreezeCount =", value, "vodfreezecount");
            return (Criteria) this;
        }

        public Criteria andVodfreezecountNotEqualTo(Long value) {
            addCriterion("VodFreezeCount <>", value, "vodfreezecount");
            return (Criteria) this;
        }

        public Criteria andVodfreezecountGreaterThan(Long value) {
            addCriterion("VodFreezeCount >", value, "vodfreezecount");
            return (Criteria) this;
        }

        public Criteria andVodfreezecountGreaterThanOrEqualTo(Long value) {
            addCriterion("VodFreezeCount >=", value, "vodfreezecount");
            return (Criteria) this;
        }

        public Criteria andVodfreezecountLessThan(Long value) {
            addCriterion("VodFreezeCount <", value, "vodfreezecount");
            return (Criteria) this;
        }

        public Criteria andVodfreezecountLessThanOrEqualTo(Long value) {
            addCriterion("VodFreezeCount <=", value, "vodfreezecount");
            return (Criteria) this;
        }

        public Criteria andVodfreezecountIn(List<Long> values) {
            addCriterion("VodFreezeCount in", values, "vodfreezecount");
            return (Criteria) this;
        }

        public Criteria andVodfreezecountNotIn(List<Long> values) {
            addCriterion("VodFreezeCount not in", values, "vodfreezecount");
            return (Criteria) this;
        }

        public Criteria andVodfreezecountBetween(Long value1, Long value2) {
            addCriterion("VodFreezeCount between", value1, value2, "vodfreezecount");
            return (Criteria) this;
        }

        public Criteria andVodfreezecountNotBetween(Long value1, Long value2) {
            addCriterion("VodFreezeCount not between", value1, value2, "vodfreezecount");
            return (Criteria) this;
        }

        public Criteria andBackfreezecountIsNull() {
            addCriterion("BackFreezeCount is null");
            return (Criteria) this;
        }

        public Criteria andBackfreezecountIsNotNull() {
            addCriterion("BackFreezeCount is not null");
            return (Criteria) this;
        }

        public Criteria andBackfreezecountEqualTo(Long value) {
            addCriterion("BackFreezeCount =", value, "backfreezecount");
            return (Criteria) this;
        }

        public Criteria andBackfreezecountNotEqualTo(Long value) {
            addCriterion("BackFreezeCount <>", value, "backfreezecount");
            return (Criteria) this;
        }

        public Criteria andBackfreezecountGreaterThan(Long value) {
            addCriterion("BackFreezeCount >", value, "backfreezecount");
            return (Criteria) this;
        }

        public Criteria andBackfreezecountGreaterThanOrEqualTo(Long value) {
            addCriterion("BackFreezeCount >=", value, "backfreezecount");
            return (Criteria) this;
        }

        public Criteria andBackfreezecountLessThan(Long value) {
            addCriterion("BackFreezeCount <", value, "backfreezecount");
            return (Criteria) this;
        }

        public Criteria andBackfreezecountLessThanOrEqualTo(Long value) {
            addCriterion("BackFreezeCount <=", value, "backfreezecount");
            return (Criteria) this;
        }

        public Criteria andBackfreezecountIn(List<Long> values) {
            addCriterion("BackFreezeCount in", values, "backfreezecount");
            return (Criteria) this;
        }

        public Criteria andBackfreezecountNotIn(List<Long> values) {
            addCriterion("BackFreezeCount not in", values, "backfreezecount");
            return (Criteria) this;
        }

        public Criteria andBackfreezecountBetween(Long value1, Long value2) {
            addCriterion("BackFreezeCount between", value1, value2, "backfreezecount");
            return (Criteria) this;
        }

        public Criteria andBackfreezecountNotBetween(Long value1, Long value2) {
            addCriterion("BackFreezeCount not between", value1, value2, "backfreezecount");
            return (Criteria) this;
        }

        public Criteria andLivefreezecountIsNull() {
            addCriterion("LiveFreezeCount is null");
            return (Criteria) this;
        }

        public Criteria andLivefreezecountIsNotNull() {
            addCriterion("LiveFreezeCount is not null");
            return (Criteria) this;
        }

        public Criteria andLivefreezecountEqualTo(Long value) {
            addCriterion("LiveFreezeCount =", value, "livefreezecount");
            return (Criteria) this;
        }

        public Criteria andLivefreezecountNotEqualTo(Long value) {
            addCriterion("LiveFreezeCount <>", value, "livefreezecount");
            return (Criteria) this;
        }

        public Criteria andLivefreezecountGreaterThan(Long value) {
            addCriterion("LiveFreezeCount >", value, "livefreezecount");
            return (Criteria) this;
        }

        public Criteria andLivefreezecountGreaterThanOrEqualTo(Long value) {
            addCriterion("LiveFreezeCount >=", value, "livefreezecount");
            return (Criteria) this;
        }

        public Criteria andLivefreezecountLessThan(Long value) {
            addCriterion("LiveFreezeCount <", value, "livefreezecount");
            return (Criteria) this;
        }

        public Criteria andLivefreezecountLessThanOrEqualTo(Long value) {
            addCriterion("LiveFreezeCount <=", value, "livefreezecount");
            return (Criteria) this;
        }

        public Criteria andLivefreezecountIn(List<Long> values) {
            addCriterion("LiveFreezeCount in", values, "livefreezecount");
            return (Criteria) this;
        }

        public Criteria andLivefreezecountNotIn(List<Long> values) {
            addCriterion("LiveFreezeCount not in", values, "livefreezecount");
            return (Criteria) this;
        }

        public Criteria andLivefreezecountBetween(Long value1, Long value2) {
            addCriterion("LiveFreezeCount between", value1, value2, "livefreezecount");
            return (Criteria) this;
        }

        public Criteria andLivefreezecountNotBetween(Long value1, Long value2) {
            addCriterion("LiveFreezeCount not between", value1, value2, "livefreezecount");
            return (Criteria) this;
        }

        public Criteria andVodfreezesecIsNull() {
            addCriterion("VodFreezeSec is null");
            return (Criteria) this;
        }

        public Criteria andVodfreezesecIsNotNull() {
            addCriterion("VodFreezeSec is not null");
            return (Criteria) this;
        }

        public Criteria andVodfreezesecEqualTo(Double value) {
            addCriterion("VodFreezeSec =", value, "vodfreezesec");
            return (Criteria) this;
        }

        public Criteria andVodfreezesecNotEqualTo(Double value) {
            addCriterion("VodFreezeSec <>", value, "vodfreezesec");
            return (Criteria) this;
        }

        public Criteria andVodfreezesecGreaterThan(Double value) {
            addCriterion("VodFreezeSec >", value, "vodfreezesec");
            return (Criteria) this;
        }

        public Criteria andVodfreezesecGreaterThanOrEqualTo(Double value) {
            addCriterion("VodFreezeSec >=", value, "vodfreezesec");
            return (Criteria) this;
        }

        public Criteria andVodfreezesecLessThan(Double value) {
            addCriterion("VodFreezeSec <", value, "vodfreezesec");
            return (Criteria) this;
        }

        public Criteria andVodfreezesecLessThanOrEqualTo(Double value) {
            addCriterion("VodFreezeSec <=", value, "vodfreezesec");
            return (Criteria) this;
        }

        public Criteria andVodfreezesecIn(List<Double> values) {
            addCriterion("VodFreezeSec in", values, "vodfreezesec");
            return (Criteria) this;
        }

        public Criteria andVodfreezesecNotIn(List<Double> values) {
            addCriterion("VodFreezeSec not in", values, "vodfreezesec");
            return (Criteria) this;
        }

        public Criteria andVodfreezesecBetween(Double value1, Double value2) {
            addCriterion("VodFreezeSec between", value1, value2, "vodfreezesec");
            return (Criteria) this;
        }

        public Criteria andVodfreezesecNotBetween(Double value1, Double value2) {
            addCriterion("VodFreezeSec not between", value1, value2, "vodfreezesec");
            return (Criteria) this;
        }

        public Criteria andBackfreezesecIsNull() {
            addCriterion("BackFreezeSec is null");
            return (Criteria) this;
        }

        public Criteria andBackfreezesecIsNotNull() {
            addCriterion("BackFreezeSec is not null");
            return (Criteria) this;
        }

        public Criteria andBackfreezesecEqualTo(Double value) {
            addCriterion("BackFreezeSec =", value, "backfreezesec");
            return (Criteria) this;
        }

        public Criteria andBackfreezesecNotEqualTo(Double value) {
            addCriterion("BackFreezeSec <>", value, "backfreezesec");
            return (Criteria) this;
        }

        public Criteria andBackfreezesecGreaterThan(Double value) {
            addCriterion("BackFreezeSec >", value, "backfreezesec");
            return (Criteria) this;
        }

        public Criteria andBackfreezesecGreaterThanOrEqualTo(Double value) {
            addCriterion("BackFreezeSec >=", value, "backfreezesec");
            return (Criteria) this;
        }

        public Criteria andBackfreezesecLessThan(Double value) {
            addCriterion("BackFreezeSec <", value, "backfreezesec");
            return (Criteria) this;
        }

        public Criteria andBackfreezesecLessThanOrEqualTo(Double value) {
            addCriterion("BackFreezeSec <=", value, "backfreezesec");
            return (Criteria) this;
        }

        public Criteria andBackfreezesecIn(List<Double> values) {
            addCriterion("BackFreezeSec in", values, "backfreezesec");
            return (Criteria) this;
        }

        public Criteria andBackfreezesecNotIn(List<Double> values) {
            addCriterion("BackFreezeSec not in", values, "backfreezesec");
            return (Criteria) this;
        }

        public Criteria andBackfreezesecBetween(Double value1, Double value2) {
            addCriterion("BackFreezeSec between", value1, value2, "backfreezesec");
            return (Criteria) this;
        }

        public Criteria andBackfreezesecNotBetween(Double value1, Double value2) {
            addCriterion("BackFreezeSec not between", value1, value2, "backfreezesec");
            return (Criteria) this;
        }

        public Criteria andLivefreezesecIsNull() {
            addCriterion("LiveFreezeSec is null");
            return (Criteria) this;
        }

        public Criteria andLivefreezesecIsNotNull() {
            addCriterion("LiveFreezeSec is not null");
            return (Criteria) this;
        }

        public Criteria andLivefreezesecEqualTo(Double value) {
            addCriterion("LiveFreezeSec =", value, "livefreezesec");
            return (Criteria) this;
        }

        public Criteria andLivefreezesecNotEqualTo(Double value) {
            addCriterion("LiveFreezeSec <>", value, "livefreezesec");
            return (Criteria) this;
        }

        public Criteria andLivefreezesecGreaterThan(Double value) {
            addCriterion("LiveFreezeSec >", value, "livefreezesec");
            return (Criteria) this;
        }

        public Criteria andLivefreezesecGreaterThanOrEqualTo(Double value) {
            addCriterion("LiveFreezeSec >=", value, "livefreezesec");
            return (Criteria) this;
        }

        public Criteria andLivefreezesecLessThan(Double value) {
            addCriterion("LiveFreezeSec <", value, "livefreezesec");
            return (Criteria) this;
        }

        public Criteria andLivefreezesecLessThanOrEqualTo(Double value) {
            addCriterion("LiveFreezeSec <=", value, "livefreezesec");
            return (Criteria) this;
        }

        public Criteria andLivefreezesecIn(List<Double> values) {
            addCriterion("LiveFreezeSec in", values, "livefreezesec");
            return (Criteria) this;
        }

        public Criteria andLivefreezesecNotIn(List<Double> values) {
            addCriterion("LiveFreezeSec not in", values, "livefreezesec");
            return (Criteria) this;
        }

        public Criteria andLivefreezesecBetween(Double value1, Double value2) {
            addCriterion("LiveFreezeSec between", value1, value2, "livefreezesec");
            return (Criteria) this;
        }

        public Criteria andLivefreezesecNotBetween(Double value1, Double value2) {
            addCriterion("LiveFreezeSec not between", value1, value2, "livefreezesec");
            return (Criteria) this;
        }

        public Criteria andNetwoklostrateIsNull() {
            addCriterion("NetwokLostRate is null");
            return (Criteria) this;
        }

        public Criteria andNetwoklostrateIsNotNull() {
            addCriterion("NetwokLostRate is not null");
            return (Criteria) this;
        }

        public Criteria andNetwoklostrateEqualTo(Double value) {
            addCriterion("NetwokLostRate =", value, "netwoklostrate");
            return (Criteria) this;
        }

        public Criteria andNetwoklostrateNotEqualTo(Double value) {
            addCriterion("NetwokLostRate <>", value, "netwoklostrate");
            return (Criteria) this;
        }

        public Criteria andNetwoklostrateGreaterThan(Double value) {
            addCriterion("NetwokLostRate >", value, "netwoklostrate");
            return (Criteria) this;
        }

        public Criteria andNetwoklostrateGreaterThanOrEqualTo(Double value) {
            addCriterion("NetwokLostRate >=", value, "netwoklostrate");
            return (Criteria) this;
        }

        public Criteria andNetwoklostrateLessThan(Double value) {
            addCriterion("NetwokLostRate <", value, "netwoklostrate");
            return (Criteria) this;
        }

        public Criteria andNetwoklostrateLessThanOrEqualTo(Double value) {
            addCriterion("NetwokLostRate <=", value, "netwoklostrate");
            return (Criteria) this;
        }

        public Criteria andNetwoklostrateIn(List<Double> values) {
            addCriterion("NetwokLostRate in", values, "netwoklostrate");
            return (Criteria) this;
        }

        public Criteria andNetwoklostrateNotIn(List<Double> values) {
            addCriterion("NetwokLostRate not in", values, "netwoklostrate");
            return (Criteria) this;
        }

        public Criteria andNetwoklostrateBetween(Double value1, Double value2) {
            addCriterion("NetwokLostRate between", value1, value2, "netwoklostrate");
            return (Criteria) this;
        }

        public Criteria andNetwoklostrateNotBetween(Double value1, Double value2) {
            addCriterion("NetwokLostRate not between", value1, value2, "netwoklostrate");
            return (Criteria) this;
        }

        public Criteria andNetworkavgsecIsNull() {
            addCriterion("NetworkAvgSec is null");
            return (Criteria) this;
        }

        public Criteria andNetworkavgsecIsNotNull() {
            addCriterion("NetworkAvgSec is not null");
            return (Criteria) this;
        }

        public Criteria andNetworkavgsecEqualTo(Double value) {
            addCriterion("NetworkAvgSec =", value, "networkavgsec");
            return (Criteria) this;
        }

        public Criteria andNetworkavgsecNotEqualTo(Double value) {
            addCriterion("NetworkAvgSec <>", value, "networkavgsec");
            return (Criteria) this;
        }

        public Criteria andNetworkavgsecGreaterThan(Double value) {
            addCriterion("NetworkAvgSec >", value, "networkavgsec");
            return (Criteria) this;
        }

        public Criteria andNetworkavgsecGreaterThanOrEqualTo(Double value) {
            addCriterion("NetworkAvgSec >=", value, "networkavgsec");
            return (Criteria) this;
        }

        public Criteria andNetworkavgsecLessThan(Double value) {
            addCriterion("NetworkAvgSec <", value, "networkavgsec");
            return (Criteria) this;
        }

        public Criteria andNetworkavgsecLessThanOrEqualTo(Double value) {
            addCriterion("NetworkAvgSec <=", value, "networkavgsec");
            return (Criteria) this;
        }

        public Criteria andNetworkavgsecIn(List<Double> values) {
            addCriterion("NetworkAvgSec in", values, "networkavgsec");
            return (Criteria) this;
        }

        public Criteria andNetworkavgsecNotIn(List<Double> values) {
            addCriterion("NetworkAvgSec not in", values, "networkavgsec");
            return (Criteria) this;
        }

        public Criteria andNetworkavgsecBetween(Double value1, Double value2) {
            addCriterion("NetworkAvgSec between", value1, value2, "networkavgsec");
            return (Criteria) this;
        }

        public Criteria andNetworkavgsecNotBetween(Double value1, Double value2) {
            addCriterion("NetworkAvgSec not between", value1, value2, "networkavgsec");
            return (Criteria) this;
        }

        public Criteria andTotalusermoscountIsNull() {
            addCriterion("TotalUserMosCount is null");
            return (Criteria) this;
        }

        public Criteria andTotalusermoscountIsNotNull() {
            addCriterion("TotalUserMosCount is not null");
            return (Criteria) this;
        }

        public Criteria andTotalusermoscountEqualTo(Double value) {
            addCriterion("TotalUserMosCount =", value, "totalusermoscount");
            return (Criteria) this;
        }

        public Criteria andTotalusermoscountNotEqualTo(Double value) {
            addCriterion("TotalUserMosCount <>", value, "totalusermoscount");
            return (Criteria) this;
        }

        public Criteria andTotalusermoscountGreaterThan(Double value) {
            addCriterion("TotalUserMosCount >", value, "totalusermoscount");
            return (Criteria) this;
        }

        public Criteria andTotalusermoscountGreaterThanOrEqualTo(Double value) {
            addCriterion("TotalUserMosCount >=", value, "totalusermoscount");
            return (Criteria) this;
        }

        public Criteria andTotalusermoscountLessThan(Double value) {
            addCriterion("TotalUserMosCount <", value, "totalusermoscount");
            return (Criteria) this;
        }

        public Criteria andTotalusermoscountLessThanOrEqualTo(Double value) {
            addCriterion("TotalUserMosCount <=", value, "totalusermoscount");
            return (Criteria) this;
        }

        public Criteria andTotalusermoscountIn(List<Double> values) {
            addCriterion("TotalUserMosCount in", values, "totalusermoscount");
            return (Criteria) this;
        }

        public Criteria andTotalusermoscountNotIn(List<Double> values) {
            addCriterion("TotalUserMosCount not in", values, "totalusermoscount");
            return (Criteria) this;
        }

        public Criteria andTotalusermoscountBetween(Double value1, Double value2) {
            addCriterion("TotalUserMosCount between", value1, value2, "totalusermoscount");
            return (Criteria) this;
        }

        public Criteria andTotalusermoscountNotBetween(Double value1, Double value2) {
            addCriterion("TotalUserMosCount not between", value1, value2, "totalusermoscount");
            return (Criteria) this;
        }

        public Criteria andVodusermoscountIsNull() {
            addCriterion("VodUserMosCount is null");
            return (Criteria) this;
        }

        public Criteria andVodusermoscountIsNotNull() {
            addCriterion("VodUserMosCount is not null");
            return (Criteria) this;
        }

        public Criteria andVodusermoscountEqualTo(Double value) {
            addCriterion("VodUserMosCount =", value, "vodusermoscount");
            return (Criteria) this;
        }

        public Criteria andVodusermoscountNotEqualTo(Double value) {
            addCriterion("VodUserMosCount <>", value, "vodusermoscount");
            return (Criteria) this;
        }

        public Criteria andVodusermoscountGreaterThan(Double value) {
            addCriterion("VodUserMosCount >", value, "vodusermoscount");
            return (Criteria) this;
        }

        public Criteria andVodusermoscountGreaterThanOrEqualTo(Double value) {
            addCriterion("VodUserMosCount >=", value, "vodusermoscount");
            return (Criteria) this;
        }

        public Criteria andVodusermoscountLessThan(Double value) {
            addCriterion("VodUserMosCount <", value, "vodusermoscount");
            return (Criteria) this;
        }

        public Criteria andVodusermoscountLessThanOrEqualTo(Double value) {
            addCriterion("VodUserMosCount <=", value, "vodusermoscount");
            return (Criteria) this;
        }

        public Criteria andVodusermoscountIn(List<Double> values) {
            addCriterion("VodUserMosCount in", values, "vodusermoscount");
            return (Criteria) this;
        }

        public Criteria andVodusermoscountNotIn(List<Double> values) {
            addCriterion("VodUserMosCount not in", values, "vodusermoscount");
            return (Criteria) this;
        }

        public Criteria andVodusermoscountBetween(Double value1, Double value2) {
            addCriterion("VodUserMosCount between", value1, value2, "vodusermoscount");
            return (Criteria) this;
        }

        public Criteria andVodusermoscountNotBetween(Double value1, Double value2) {
            addCriterion("VodUserMosCount not between", value1, value2, "vodusermoscount");
            return (Criteria) this;
        }

        public Criteria andBackusermoscountIsNull() {
            addCriterion("BackUserMosCount is null");
            return (Criteria) this;
        }

        public Criteria andBackusermoscountIsNotNull() {
            addCriterion("BackUserMosCount is not null");
            return (Criteria) this;
        }

        public Criteria andBackusermoscountEqualTo(Double value) {
            addCriterion("BackUserMosCount =", value, "backusermoscount");
            return (Criteria) this;
        }

        public Criteria andBackusermoscountNotEqualTo(Double value) {
            addCriterion("BackUserMosCount <>", value, "backusermoscount");
            return (Criteria) this;
        }

        public Criteria andBackusermoscountGreaterThan(Double value) {
            addCriterion("BackUserMosCount >", value, "backusermoscount");
            return (Criteria) this;
        }

        public Criteria andBackusermoscountGreaterThanOrEqualTo(Double value) {
            addCriterion("BackUserMosCount >=", value, "backusermoscount");
            return (Criteria) this;
        }

        public Criteria andBackusermoscountLessThan(Double value) {
            addCriterion("BackUserMosCount <", value, "backusermoscount");
            return (Criteria) this;
        }

        public Criteria andBackusermoscountLessThanOrEqualTo(Double value) {
            addCriterion("BackUserMosCount <=", value, "backusermoscount");
            return (Criteria) this;
        }

        public Criteria andBackusermoscountIn(List<Double> values) {
            addCriterion("BackUserMosCount in", values, "backusermoscount");
            return (Criteria) this;
        }

        public Criteria andBackusermoscountNotIn(List<Double> values) {
            addCriterion("BackUserMosCount not in", values, "backusermoscount");
            return (Criteria) this;
        }

        public Criteria andBackusermoscountBetween(Double value1, Double value2) {
            addCriterion("BackUserMosCount between", value1, value2, "backusermoscount");
            return (Criteria) this;
        }

        public Criteria andBackusermoscountNotBetween(Double value1, Double value2) {
            addCriterion("BackUserMosCount not between", value1, value2, "backusermoscount");
            return (Criteria) this;
        }

        public Criteria andLiveusermoscountIsNull() {
            addCriterion("LiveUserMosCount is null");
            return (Criteria) this;
        }

        public Criteria andLiveusermoscountIsNotNull() {
            addCriterion("LiveUserMosCount is not null");
            return (Criteria) this;
        }

        public Criteria andLiveusermoscountEqualTo(Double value) {
            addCriterion("LiveUserMosCount =", value, "liveusermoscount");
            return (Criteria) this;
        }

        public Criteria andLiveusermoscountNotEqualTo(Double value) {
            addCriterion("LiveUserMosCount <>", value, "liveusermoscount");
            return (Criteria) this;
        }

        public Criteria andLiveusermoscountGreaterThan(Double value) {
            addCriterion("LiveUserMosCount >", value, "liveusermoscount");
            return (Criteria) this;
        }

        public Criteria andLiveusermoscountGreaterThanOrEqualTo(Double value) {
            addCriterion("LiveUserMosCount >=", value, "liveusermoscount");
            return (Criteria) this;
        }

        public Criteria andLiveusermoscountLessThan(Double value) {
            addCriterion("LiveUserMosCount <", value, "liveusermoscount");
            return (Criteria) this;
        }

        public Criteria andLiveusermoscountLessThanOrEqualTo(Double value) {
            addCriterion("LiveUserMosCount <=", value, "liveusermoscount");
            return (Criteria) this;
        }

        public Criteria andLiveusermoscountIn(List<Double> values) {
            addCriterion("LiveUserMosCount in", values, "liveusermoscount");
            return (Criteria) this;
        }

        public Criteria andLiveusermoscountNotIn(List<Double> values) {
            addCriterion("LiveUserMosCount not in", values, "liveusermoscount");
            return (Criteria) this;
        }

        public Criteria andLiveusermoscountBetween(Double value1, Double value2) {
            addCriterion("LiveUserMosCount between", value1, value2, "liveusermoscount");
            return (Criteria) this;
        }

        public Criteria andLiveusermoscountNotBetween(Double value1, Double value2) {
            addCriterion("LiveUserMosCount not between", value1, value2, "liveusermoscount");
            return (Criteria) this;
        }

        public Criteria andTotalusercountIsNull() {
            addCriterion("TotalUserCount is null");
            return (Criteria) this;
        }

        public Criteria andTotalusercountIsNotNull() {
            addCriterion("TotalUserCount is not null");
            return (Criteria) this;
        }

        public Criteria andTotalusercountEqualTo(Double value) {
            addCriterion("TotalUserCount =", value, "totalusercount");
            return (Criteria) this;
        }

        public Criteria andTotalusercountNotEqualTo(Double value) {
            addCriterion("TotalUserCount <>", value, "totalusercount");
            return (Criteria) this;
        }

        public Criteria andTotalusercountGreaterThan(Double value) {
            addCriterion("TotalUserCount >", value, "totalusercount");
            return (Criteria) this;
        }

        public Criteria andTotalusercountGreaterThanOrEqualTo(Double value) {
            addCriterion("TotalUserCount >=", value, "totalusercount");
            return (Criteria) this;
        }

        public Criteria andTotalusercountLessThan(Double value) {
            addCriterion("TotalUserCount <", value, "totalusercount");
            return (Criteria) this;
        }

        public Criteria andTotalusercountLessThanOrEqualTo(Double value) {
            addCriterion("TotalUserCount <=", value, "totalusercount");
            return (Criteria) this;
        }

        public Criteria andTotalusercountIn(List<Double> values) {
            addCriterion("TotalUserCount in", values, "totalusercount");
            return (Criteria) this;
        }

        public Criteria andTotalusercountNotIn(List<Double> values) {
            addCriterion("TotalUserCount not in", values, "totalusercount");
            return (Criteria) this;
        }

        public Criteria andTotalusercountBetween(Double value1, Double value2) {
            addCriterion("TotalUserCount between", value1, value2, "totalusercount");
            return (Criteria) this;
        }

        public Criteria andTotalusercountNotBetween(Double value1, Double value2) {
            addCriterion("TotalUserCount not between", value1, value2, "totalusercount");
            return (Criteria) this;
        }

        public Criteria andLiveusercountIsNull() {
            addCriterion("LiveUserCount is null");
            return (Criteria) this;
        }

        public Criteria andLiveusercountIsNotNull() {
            addCriterion("LiveUserCount is not null");
            return (Criteria) this;
        }

        public Criteria andLiveusercountEqualTo(Double value) {
            addCriterion("LiveUserCount =", value, "liveusercount");
            return (Criteria) this;
        }

        public Criteria andLiveusercountNotEqualTo(Double value) {
            addCriterion("LiveUserCount <>", value, "liveusercount");
            return (Criteria) this;
        }

        public Criteria andLiveusercountGreaterThan(Double value) {
            addCriterion("LiveUserCount >", value, "liveusercount");
            return (Criteria) this;
        }

        public Criteria andLiveusercountGreaterThanOrEqualTo(Double value) {
            addCriterion("LiveUserCount >=", value, "liveusercount");
            return (Criteria) this;
        }

        public Criteria andLiveusercountLessThan(Double value) {
            addCriterion("LiveUserCount <", value, "liveusercount");
            return (Criteria) this;
        }

        public Criteria andLiveusercountLessThanOrEqualTo(Double value) {
            addCriterion("LiveUserCount <=", value, "liveusercount");
            return (Criteria) this;
        }

        public Criteria andLiveusercountIn(List<Double> values) {
            addCriterion("LiveUserCount in", values, "liveusercount");
            return (Criteria) this;
        }

        public Criteria andLiveusercountNotIn(List<Double> values) {
            addCriterion("LiveUserCount not in", values, "liveusercount");
            return (Criteria) this;
        }

        public Criteria andLiveusercountBetween(Double value1, Double value2) {
            addCriterion("LiveUserCount between", value1, value2, "liveusercount");
            return (Criteria) this;
        }

        public Criteria andLiveusercountNotBetween(Double value1, Double value2) {
            addCriterion("LiveUserCount not between", value1, value2, "liveusercount");
            return (Criteria) this;
        }

        public Criteria andVodusercountIsNull() {
            addCriterion("VodUserCount is null");
            return (Criteria) this;
        }

        public Criteria andVodusercountIsNotNull() {
            addCriterion("VodUserCount is not null");
            return (Criteria) this;
        }

        public Criteria andVodusercountEqualTo(Double value) {
            addCriterion("VodUserCount =", value, "vodusercount");
            return (Criteria) this;
        }

        public Criteria andVodusercountNotEqualTo(Double value) {
            addCriterion("VodUserCount <>", value, "vodusercount");
            return (Criteria) this;
        }

        public Criteria andVodusercountGreaterThan(Double value) {
            addCriterion("VodUserCount >", value, "vodusercount");
            return (Criteria) this;
        }

        public Criteria andVodusercountGreaterThanOrEqualTo(Double value) {
            addCriterion("VodUserCount >=", value, "vodusercount");
            return (Criteria) this;
        }

        public Criteria andVodusercountLessThan(Double value) {
            addCriterion("VodUserCount <", value, "vodusercount");
            return (Criteria) this;
        }

        public Criteria andVodusercountLessThanOrEqualTo(Double value) {
            addCriterion("VodUserCount <=", value, "vodusercount");
            return (Criteria) this;
        }

        public Criteria andVodusercountIn(List<Double> values) {
            addCriterion("VodUserCount in", values, "vodusercount");
            return (Criteria) this;
        }

        public Criteria andVodusercountNotIn(List<Double> values) {
            addCriterion("VodUserCount not in", values, "vodusercount");
            return (Criteria) this;
        }

        public Criteria andVodusercountBetween(Double value1, Double value2) {
            addCriterion("VodUserCount between", value1, value2, "vodusercount");
            return (Criteria) this;
        }

        public Criteria andVodusercountNotBetween(Double value1, Double value2) {
            addCriterion("VodUserCount not between", value1, value2, "vodusercount");
            return (Criteria) this;
        }

        public Criteria andBackusercountIsNull() {
            addCriterion("BackUserCount is null");
            return (Criteria) this;
        }

        public Criteria andBackusercountIsNotNull() {
            addCriterion("BackUserCount is not null");
            return (Criteria) this;
        }

        public Criteria andBackusercountEqualTo(Double value) {
            addCriterion("BackUserCount =", value, "backusercount");
            return (Criteria) this;
        }

        public Criteria andBackusercountNotEqualTo(Double value) {
            addCriterion("BackUserCount <>", value, "backusercount");
            return (Criteria) this;
        }

        public Criteria andBackusercountGreaterThan(Double value) {
            addCriterion("BackUserCount >", value, "backusercount");
            return (Criteria) this;
        }

        public Criteria andBackusercountGreaterThanOrEqualTo(Double value) {
            addCriterion("BackUserCount >=", value, "backusercount");
            return (Criteria) this;
        }

        public Criteria andBackusercountLessThan(Double value) {
            addCriterion("BackUserCount <", value, "backusercount");
            return (Criteria) this;
        }

        public Criteria andBackusercountLessThanOrEqualTo(Double value) {
            addCriterion("BackUserCount <=", value, "backusercount");
            return (Criteria) this;
        }

        public Criteria andBackusercountIn(List<Double> values) {
            addCriterion("BackUserCount in", values, "backusercount");
            return (Criteria) this;
        }

        public Criteria andBackusercountNotIn(List<Double> values) {
            addCriterion("BackUserCount not in", values, "backusercount");
            return (Criteria) this;
        }

        public Criteria andBackusercountBetween(Double value1, Double value2) {
            addCriterion("BackUserCount between", value1, value2, "backusercount");
            return (Criteria) this;
        }

        public Criteria andBackusercountNotBetween(Double value1, Double value2) {
            addCriterion("BackUserCount not between", value1, value2, "backusercount");
            return (Criteria) this;
        }

        public Criteria andLivesecIsNull() {
            addCriterion("LiveSec is null");
            return (Criteria) this;
        }

        public Criteria andLivesecIsNotNull() {
            addCriterion("LiveSec is not null");
            return (Criteria) this;
        }

        public Criteria andLivesecEqualTo(Double value) {
            addCriterion("LiveSec =", value, "livesec");
            return (Criteria) this;
        }

        public Criteria andLivesecNotEqualTo(Double value) {
            addCriterion("LiveSec <>", value, "livesec");
            return (Criteria) this;
        }

        public Criteria andLivesecGreaterThan(Double value) {
            addCriterion("LiveSec >", value, "livesec");
            return (Criteria) this;
        }

        public Criteria andLivesecGreaterThanOrEqualTo(Double value) {
            addCriterion("LiveSec >=", value, "livesec");
            return (Criteria) this;
        }

        public Criteria andLivesecLessThan(Double value) {
            addCriterion("LiveSec <", value, "livesec");
            return (Criteria) this;
        }

        public Criteria andLivesecLessThanOrEqualTo(Double value) {
            addCriterion("LiveSec <=", value, "livesec");
            return (Criteria) this;
        }

        public Criteria andLivesecIn(List<Double> values) {
            addCriterion("LiveSec in", values, "livesec");
            return (Criteria) this;
        }

        public Criteria andLivesecNotIn(List<Double> values) {
            addCriterion("LiveSec not in", values, "livesec");
            return (Criteria) this;
        }

        public Criteria andLivesecBetween(Double value1, Double value2) {
            addCriterion("LiveSec between", value1, value2, "livesec");
            return (Criteria) this;
        }

        public Criteria andLivesecNotBetween(Double value1, Double value2) {
            addCriterion("LiveSec not between", value1, value2, "livesec");
            return (Criteria) this;
        }

        public Criteria andVodsecIsNull() {
            addCriterion("VodSec is null");
            return (Criteria) this;
        }

        public Criteria andVodsecIsNotNull() {
            addCriterion("VodSec is not null");
            return (Criteria) this;
        }

        public Criteria andVodsecEqualTo(Double value) {
            addCriterion("VodSec =", value, "vodsec");
            return (Criteria) this;
        }

        public Criteria andVodsecNotEqualTo(Double value) {
            addCriterion("VodSec <>", value, "vodsec");
            return (Criteria) this;
        }

        public Criteria andVodsecGreaterThan(Double value) {
            addCriterion("VodSec >", value, "vodsec");
            return (Criteria) this;
        }

        public Criteria andVodsecGreaterThanOrEqualTo(Double value) {
            addCriterion("VodSec >=", value, "vodsec");
            return (Criteria) this;
        }

        public Criteria andVodsecLessThan(Double value) {
            addCriterion("VodSec <", value, "vodsec");
            return (Criteria) this;
        }

        public Criteria andVodsecLessThanOrEqualTo(Double value) {
            addCriterion("VodSec <=", value, "vodsec");
            return (Criteria) this;
        }

        public Criteria andVodsecIn(List<Double> values) {
            addCriterion("VodSec in", values, "vodsec");
            return (Criteria) this;
        }

        public Criteria andVodsecNotIn(List<Double> values) {
            addCriterion("VodSec not in", values, "vodsec");
            return (Criteria) this;
        }

        public Criteria andVodsecBetween(Double value1, Double value2) {
            addCriterion("VodSec between", value1, value2, "vodsec");
            return (Criteria) this;
        }

        public Criteria andVodsecNotBetween(Double value1, Double value2) {
            addCriterion("VodSec not between", value1, value2, "vodsec");
            return (Criteria) this;
        }

        public Criteria andBacksecIsNull() {
            addCriterion("BackSec is null");
            return (Criteria) this;
        }

        public Criteria andBacksecIsNotNull() {
            addCriterion("BackSec is not null");
            return (Criteria) this;
        }

        public Criteria andBacksecEqualTo(Double value) {
            addCriterion("BackSec =", value, "backsec");
            return (Criteria) this;
        }

        public Criteria andBacksecNotEqualTo(Double value) {
            addCriterion("BackSec <>", value, "backsec");
            return (Criteria) this;
        }

        public Criteria andBacksecGreaterThan(Double value) {
            addCriterion("BackSec >", value, "backsec");
            return (Criteria) this;
        }

        public Criteria andBacksecGreaterThanOrEqualTo(Double value) {
            addCriterion("BackSec >=", value, "backsec");
            return (Criteria) this;
        }

        public Criteria andBacksecLessThan(Double value) {
            addCriterion("BackSec <", value, "backsec");
            return (Criteria) this;
        }

        public Criteria andBacksecLessThanOrEqualTo(Double value) {
            addCriterion("BackSec <=", value, "backsec");
            return (Criteria) this;
        }

        public Criteria andBacksecIn(List<Double> values) {
            addCriterion("BackSec in", values, "backsec");
            return (Criteria) this;
        }

        public Criteria andBacksecNotIn(List<Double> values) {
            addCriterion("BackSec not in", values, "backsec");
            return (Criteria) this;
        }

        public Criteria andBacksecBetween(Double value1, Double value2) {
            addCriterion("BackSec between", value1, value2, "backsec");
            return (Criteria) this;
        }

        public Criteria andBacksecNotBetween(Double value1, Double value2) {
            addCriterion("BackSec not between", value1, value2, "backsec");
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