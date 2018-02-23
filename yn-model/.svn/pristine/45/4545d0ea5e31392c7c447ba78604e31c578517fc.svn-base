package com.szc.enterprise.web.model;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class ReportUserbehaviorExample {
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

	public ReportUserbehaviorExample() {
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

        public Criteria andLiveusercountIsNull() {
            addCriterion("LiveUserCount is null");
            return (Criteria) this;
        }

        public Criteria andLiveusercountIsNotNull() {
            addCriterion("LiveUserCount is not null");
            return (Criteria) this;
        }

        public Criteria andLiveusercountEqualTo(Long value) {
            addCriterion("LiveUserCount =", value, "liveusercount");
            return (Criteria) this;
        }

        public Criteria andLiveusercountNotEqualTo(Long value) {
            addCriterion("LiveUserCount <>", value, "liveusercount");
            return (Criteria) this;
        }

        public Criteria andLiveusercountGreaterThan(Long value) {
            addCriterion("LiveUserCount >", value, "liveusercount");
            return (Criteria) this;
        }

        public Criteria andLiveusercountGreaterThanOrEqualTo(Long value) {
            addCriterion("LiveUserCount >=", value, "liveusercount");
            return (Criteria) this;
        }

        public Criteria andLiveusercountLessThan(Long value) {
            addCriterion("LiveUserCount <", value, "liveusercount");
            return (Criteria) this;
        }

        public Criteria andLiveusercountLessThanOrEqualTo(Long value) {
            addCriterion("LiveUserCount <=", value, "liveusercount");
            return (Criteria) this;
        }

        public Criteria andLiveusercountIn(List<Long> values) {
            addCriterion("LiveUserCount in", values, "liveusercount");
            return (Criteria) this;
        }

        public Criteria andLiveusercountNotIn(List<Long> values) {
            addCriterion("LiveUserCount not in", values, "liveusercount");
            return (Criteria) this;
        }

        public Criteria andLiveusercountBetween(Long value1, Long value2) {
            addCriterion("LiveUserCount between", value1, value2, "liveusercount");
            return (Criteria) this;
        }

        public Criteria andLiveusercountNotBetween(Long value1, Long value2) {
            addCriterion("LiveUserCount not between", value1, value2, "liveusercount");
            return (Criteria) this;
        }

        public Criteria andLiveuserrateIsNull() {
            addCriterion("LiveUserRate is null");
            return (Criteria) this;
        }

        public Criteria andLiveuserrateIsNotNull() {
            addCriterion("LiveUserRate is not null");
            return (Criteria) this;
        }

        public Criteria andLiveuserrateEqualTo(Double value) {
            addCriterion("LiveUserRate =", value, "liveuserrate");
            return (Criteria) this;
        }

        public Criteria andLiveuserrateNotEqualTo(Double value) {
            addCriterion("LiveUserRate <>", value, "liveuserrate");
            return (Criteria) this;
        }

        public Criteria andLiveuserrateGreaterThan(Double value) {
            addCriterion("LiveUserRate >", value, "liveuserrate");
            return (Criteria) this;
        }

        public Criteria andLiveuserrateGreaterThanOrEqualTo(Double value) {
            addCriterion("LiveUserRate >=", value, "liveuserrate");
            return (Criteria) this;
        }

        public Criteria andLiveuserrateLessThan(Double value) {
            addCriterion("LiveUserRate <", value, "liveuserrate");
            return (Criteria) this;
        }

        public Criteria andLiveuserrateLessThanOrEqualTo(Double value) {
            addCriterion("LiveUserRate <=", value, "liveuserrate");
            return (Criteria) this;
        }

        public Criteria andLiveuserrateIn(List<Double> values) {
            addCriterion("LiveUserRate in", values, "liveuserrate");
            return (Criteria) this;
        }

        public Criteria andLiveuserrateNotIn(List<Double> values) {
            addCriterion("LiveUserRate not in", values, "liveuserrate");
            return (Criteria) this;
        }

        public Criteria andLiveuserrateBetween(Double value1, Double value2) {
            addCriterion("LiveUserRate between", value1, value2, "liveuserrate");
            return (Criteria) this;
        }

        public Criteria andLiveuserrateNotBetween(Double value1, Double value2) {
            addCriterion("LiveUserRate not between", value1, value2, "liveuserrate");
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

        public Criteria andVodusercountEqualTo(Long value) {
            addCriterion("VodUserCount =", value, "vodusercount");
            return (Criteria) this;
        }

        public Criteria andVodusercountNotEqualTo(Long value) {
            addCriterion("VodUserCount <>", value, "vodusercount");
            return (Criteria) this;
        }

        public Criteria andVodusercountGreaterThan(Long value) {
            addCriterion("VodUserCount >", value, "vodusercount");
            return (Criteria) this;
        }

        public Criteria andVodusercountGreaterThanOrEqualTo(Long value) {
            addCriterion("VodUserCount >=", value, "vodusercount");
            return (Criteria) this;
        }

        public Criteria andVodusercountLessThan(Long value) {
            addCriterion("VodUserCount <", value, "vodusercount");
            return (Criteria) this;
        }

        public Criteria andVodusercountLessThanOrEqualTo(Long value) {
            addCriterion("VodUserCount <=", value, "vodusercount");
            return (Criteria) this;
        }

        public Criteria andVodusercountIn(List<Long> values) {
            addCriterion("VodUserCount in", values, "vodusercount");
            return (Criteria) this;
        }

        public Criteria andVodusercountNotIn(List<Long> values) {
            addCriterion("VodUserCount not in", values, "vodusercount");
            return (Criteria) this;
        }

        public Criteria andVodusercountBetween(Long value1, Long value2) {
            addCriterion("VodUserCount between", value1, value2, "vodusercount");
            return (Criteria) this;
        }

        public Criteria andVodusercountNotBetween(Long value1, Long value2) {
            addCriterion("VodUserCount not between", value1, value2, "vodusercount");
            return (Criteria) this;
        }

        public Criteria andVoduserrateIsNull() {
            addCriterion("VodUserRate is null");
            return (Criteria) this;
        }

        public Criteria andVoduserrateIsNotNull() {
            addCriterion("VodUserRate is not null");
            return (Criteria) this;
        }

        public Criteria andVoduserrateEqualTo(Double value) {
            addCriterion("VodUserRate =", value, "voduserrate");
            return (Criteria) this;
        }

        public Criteria andVoduserrateNotEqualTo(Double value) {
            addCriterion("VodUserRate <>", value, "voduserrate");
            return (Criteria) this;
        }

        public Criteria andVoduserrateGreaterThan(Double value) {
            addCriterion("VodUserRate >", value, "voduserrate");
            return (Criteria) this;
        }

        public Criteria andVoduserrateGreaterThanOrEqualTo(Double value) {
            addCriterion("VodUserRate >=", value, "voduserrate");
            return (Criteria) this;
        }

        public Criteria andVoduserrateLessThan(Double value) {
            addCriterion("VodUserRate <", value, "voduserrate");
            return (Criteria) this;
        }

        public Criteria andVoduserrateLessThanOrEqualTo(Double value) {
            addCriterion("VodUserRate <=", value, "voduserrate");
            return (Criteria) this;
        }

        public Criteria andVoduserrateIn(List<Double> values) {
            addCriterion("VodUserRate in", values, "voduserrate");
            return (Criteria) this;
        }

        public Criteria andVoduserrateNotIn(List<Double> values) {
            addCriterion("VodUserRate not in", values, "voduserrate");
            return (Criteria) this;
        }

        public Criteria andVoduserrateBetween(Double value1, Double value2) {
            addCriterion("VodUserRate between", value1, value2, "voduserrate");
            return (Criteria) this;
        }

        public Criteria andVoduserrateNotBetween(Double value1, Double value2) {
            addCriterion("VodUserRate not between", value1, value2, "voduserrate");
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

        public Criteria andBackusercountEqualTo(Long value) {
            addCriterion("BackUserCount =", value, "backusercount");
            return (Criteria) this;
        }

        public Criteria andBackusercountNotEqualTo(Long value) {
            addCriterion("BackUserCount <>", value, "backusercount");
            return (Criteria) this;
        }

        public Criteria andBackusercountGreaterThan(Long value) {
            addCriterion("BackUserCount >", value, "backusercount");
            return (Criteria) this;
        }

        public Criteria andBackusercountGreaterThanOrEqualTo(Long value) {
            addCriterion("BackUserCount >=", value, "backusercount");
            return (Criteria) this;
        }

        public Criteria andBackusercountLessThan(Long value) {
            addCriterion("BackUserCount <", value, "backusercount");
            return (Criteria) this;
        }

        public Criteria andBackusercountLessThanOrEqualTo(Long value) {
            addCriterion("BackUserCount <=", value, "backusercount");
            return (Criteria) this;
        }

        public Criteria andBackusercountIn(List<Long> values) {
            addCriterion("BackUserCount in", values, "backusercount");
            return (Criteria) this;
        }

        public Criteria andBackusercountNotIn(List<Long> values) {
            addCriterion("BackUserCount not in", values, "backusercount");
            return (Criteria) this;
        }

        public Criteria andBackusercountBetween(Long value1, Long value2) {
            addCriterion("BackUserCount between", value1, value2, "backusercount");
            return (Criteria) this;
        }

        public Criteria andBackusercountNotBetween(Long value1, Long value2) {
            addCriterion("BackUserCount not between", value1, value2, "backusercount");
            return (Criteria) this;
        }

        public Criteria andBackuserrateIsNull() {
            addCriterion("BackUserRate is null");
            return (Criteria) this;
        }

        public Criteria andBackuserrateIsNotNull() {
            addCriterion("BackUserRate is not null");
            return (Criteria) this;
        }

        public Criteria andBackuserrateEqualTo(Double value) {
            addCriterion("BackUserRate =", value, "backuserrate");
            return (Criteria) this;
        }

        public Criteria andBackuserrateNotEqualTo(Double value) {
            addCriterion("BackUserRate <>", value, "backuserrate");
            return (Criteria) this;
        }

        public Criteria andBackuserrateGreaterThan(Double value) {
            addCriterion("BackUserRate >", value, "backuserrate");
            return (Criteria) this;
        }

        public Criteria andBackuserrateGreaterThanOrEqualTo(Double value) {
            addCriterion("BackUserRate >=", value, "backuserrate");
            return (Criteria) this;
        }

        public Criteria andBackuserrateLessThan(Double value) {
            addCriterion("BackUserRate <", value, "backuserrate");
            return (Criteria) this;
        }

        public Criteria andBackuserrateLessThanOrEqualTo(Double value) {
            addCriterion("BackUserRate <=", value, "backuserrate");
            return (Criteria) this;
        }

        public Criteria andBackuserrateIn(List<Double> values) {
            addCriterion("BackUserRate in", values, "backuserrate");
            return (Criteria) this;
        }

        public Criteria andBackuserrateNotIn(List<Double> values) {
            addCriterion("BackUserRate not in", values, "backuserrate");
            return (Criteria) this;
        }

        public Criteria andBackuserrateBetween(Double value1, Double value2) {
            addCriterion("BackUserRate between", value1, value2, "backuserrate");
            return (Criteria) this;
        }

        public Criteria andBackuserrateNotBetween(Double value1, Double value2) {
            addCriterion("BackUserRate not between", value1, value2, "backuserrate");
            return (Criteria) this;
        }

        public Criteria andLiveviewsecIsNull() {
            addCriterion("LiveViewSec is null");
            return (Criteria) this;
        }

        public Criteria andLiveviewsecIsNotNull() {
            addCriterion("LiveViewSec is not null");
            return (Criteria) this;
        }

        public Criteria andLiveviewsecEqualTo(Double value) {
            addCriterion("LiveViewSec =", value, "liveviewsec");
            return (Criteria) this;
        }

        public Criteria andLiveviewsecNotEqualTo(Double value) {
            addCriterion("LiveViewSec <>", value, "liveviewsec");
            return (Criteria) this;
        }

        public Criteria andLiveviewsecGreaterThan(Double value) {
            addCriterion("LiveViewSec >", value, "liveviewsec");
            return (Criteria) this;
        }

        public Criteria andLiveviewsecGreaterThanOrEqualTo(Double value) {
            addCriterion("LiveViewSec >=", value, "liveviewsec");
            return (Criteria) this;
        }

        public Criteria andLiveviewsecLessThan(Double value) {
            addCriterion("LiveViewSec <", value, "liveviewsec");
            return (Criteria) this;
        }

        public Criteria andLiveviewsecLessThanOrEqualTo(Double value) {
            addCriterion("LiveViewSec <=", value, "liveviewsec");
            return (Criteria) this;
        }

        public Criteria andLiveviewsecIn(List<Double> values) {
            addCriterion("LiveViewSec in", values, "liveviewsec");
            return (Criteria) this;
        }

        public Criteria andLiveviewsecNotIn(List<Double> values) {
            addCriterion("LiveViewSec not in", values, "liveviewsec");
            return (Criteria) this;
        }

        public Criteria andLiveviewsecBetween(Double value1, Double value2) {
            addCriterion("LiveViewSec between", value1, value2, "liveviewsec");
            return (Criteria) this;
        }

        public Criteria andLiveviewsecNotBetween(Double value1, Double value2) {
            addCriterion("LiveViewSec not between", value1, value2, "liveviewsec");
            return (Criteria) this;
        }

        public Criteria andVodviewsecIsNull() {
            addCriterion("VodViewSec is null");
            return (Criteria) this;
        }

        public Criteria andVodviewsecIsNotNull() {
            addCriterion("VodViewSec is not null");
            return (Criteria) this;
        }

        public Criteria andVodviewsecEqualTo(Double value) {
            addCriterion("VodViewSec =", value, "vodviewsec");
            return (Criteria) this;
        }

        public Criteria andVodviewsecNotEqualTo(Double value) {
            addCriterion("VodViewSec <>", value, "vodviewsec");
            return (Criteria) this;
        }

        public Criteria andVodviewsecGreaterThan(Double value) {
            addCriterion("VodViewSec >", value, "vodviewsec");
            return (Criteria) this;
        }

        public Criteria andVodviewsecGreaterThanOrEqualTo(Double value) {
            addCriterion("VodViewSec >=", value, "vodviewsec");
            return (Criteria) this;
        }

        public Criteria andVodviewsecLessThan(Double value) {
            addCriterion("VodViewSec <", value, "vodviewsec");
            return (Criteria) this;
        }

        public Criteria andVodviewsecLessThanOrEqualTo(Double value) {
            addCriterion("VodViewSec <=", value, "vodviewsec");
            return (Criteria) this;
        }

        public Criteria andVodviewsecIn(List<Double> values) {
            addCriterion("VodViewSec in", values, "vodviewsec");
            return (Criteria) this;
        }

        public Criteria andVodviewsecNotIn(List<Double> values) {
            addCriterion("VodViewSec not in", values, "vodviewsec");
            return (Criteria) this;
        }

        public Criteria andVodviewsecBetween(Double value1, Double value2) {
            addCriterion("VodViewSec between", value1, value2, "vodviewsec");
            return (Criteria) this;
        }

        public Criteria andVodviewsecNotBetween(Double value1, Double value2) {
            addCriterion("VodViewSec not between", value1, value2, "vodviewsec");
            return (Criteria) this;
        }

        public Criteria andTotalviewsecIsNull() {
            addCriterion("TotalViewSec is null");
            return (Criteria) this;
        }

        public Criteria andTotalviewsecIsNotNull() {
            addCriterion("TotalViewSec is not null");
            return (Criteria) this;
        }

        public Criteria andTotalviewsecEqualTo(Double value) {
            addCriterion("TotalViewSec =", value, "totalviewsec");
            return (Criteria) this;
        }

        public Criteria andTotalviewsecNotEqualTo(Double value) {
            addCriterion("TotalViewSec <>", value, "totalviewsec");
            return (Criteria) this;
        }

        public Criteria andTotalviewsecGreaterThan(Double value) {
            addCriterion("TotalViewSec >", value, "totalviewsec");
            return (Criteria) this;
        }

        public Criteria andTotalviewsecGreaterThanOrEqualTo(Double value) {
            addCriterion("TotalViewSec >=", value, "totalviewsec");
            return (Criteria) this;
        }

        public Criteria andTotalviewsecLessThan(Double value) {
            addCriterion("TotalViewSec <", value, "totalviewsec");
            return (Criteria) this;
        }

        public Criteria andTotalviewsecLessThanOrEqualTo(Double value) {
            addCriterion("TotalViewSec <=", value, "totalviewsec");
            return (Criteria) this;
        }

        public Criteria andTotalviewsecIn(List<Double> values) {
            addCriterion("TotalViewSec in", values, "totalviewsec");
            return (Criteria) this;
        }

        public Criteria andTotalviewsecNotIn(List<Double> values) {
            addCriterion("TotalViewSec not in", values, "totalviewsec");
            return (Criteria) this;
        }

        public Criteria andTotalviewsecBetween(Double value1, Double value2) {
            addCriterion("TotalViewSec between", value1, value2, "totalviewsec");
            return (Criteria) this;
        }

        public Criteria andTotalviewsecNotBetween(Double value1, Double value2) {
            addCriterion("TotalViewSec not between", value1, value2, "totalviewsec");
            return (Criteria) this;
        }

        public Criteria andAvgviewsecIsNull() {
            addCriterion("AvgViewSec is null");
            return (Criteria) this;
        }

        public Criteria andAvgviewsecIsNotNull() {
            addCriterion("AvgViewSec is not null");
            return (Criteria) this;
        }

        public Criteria andAvgviewsecEqualTo(Double value) {
            addCriterion("AvgViewSec =", value, "avgviewsec");
            return (Criteria) this;
        }

        public Criteria andAvgviewsecNotEqualTo(Double value) {
            addCriterion("AvgViewSec <>", value, "avgviewsec");
            return (Criteria) this;
        }

        public Criteria andAvgviewsecGreaterThan(Double value) {
            addCriterion("AvgViewSec >", value, "avgviewsec");
            return (Criteria) this;
        }

        public Criteria andAvgviewsecGreaterThanOrEqualTo(Double value) {
            addCriterion("AvgViewSec >=", value, "avgviewsec");
            return (Criteria) this;
        }

        public Criteria andAvgviewsecLessThan(Double value) {
            addCriterion("AvgViewSec <", value, "avgviewsec");
            return (Criteria) this;
        }

        public Criteria andAvgviewsecLessThanOrEqualTo(Double value) {
            addCriterion("AvgViewSec <=", value, "avgviewsec");
            return (Criteria) this;
        }

        public Criteria andAvgviewsecIn(List<Double> values) {
            addCriterion("AvgViewSec in", values, "avgviewsec");
            return (Criteria) this;
        }

        public Criteria andAvgviewsecNotIn(List<Double> values) {
            addCriterion("AvgViewSec not in", values, "avgviewsec");
            return (Criteria) this;
        }

        public Criteria andAvgviewsecBetween(Double value1, Double value2) {
            addCriterion("AvgViewSec between", value1, value2, "avgviewsec");
            return (Criteria) this;
        }

        public Criteria andAvgviewsecNotBetween(Double value1, Double value2) {
            addCriterion("AvgViewSec not between", value1, value2, "avgviewsec");
            return (Criteria) this;
        }

        public Criteria andUseronlinesecIsNull() {
            addCriterion("UserOnlineSec is null");
            return (Criteria) this;
        }

        public Criteria andUseronlinesecIsNotNull() {
            addCriterion("UserOnlineSec is not null");
            return (Criteria) this;
        }

        public Criteria andUseronlinesecEqualTo(Double value) {
            addCriterion("UserOnlineSec =", value, "useronlinesec");
            return (Criteria) this;
        }

        public Criteria andUseronlinesecNotEqualTo(Double value) {
            addCriterion("UserOnlineSec <>", value, "useronlinesec");
            return (Criteria) this;
        }

        public Criteria andUseronlinesecGreaterThan(Double value) {
            addCriterion("UserOnlineSec >", value, "useronlinesec");
            return (Criteria) this;
        }

        public Criteria andUseronlinesecGreaterThanOrEqualTo(Double value) {
            addCriterion("UserOnlineSec >=", value, "useronlinesec");
            return (Criteria) this;
        }

        public Criteria andUseronlinesecLessThan(Double value) {
            addCriterion("UserOnlineSec <", value, "useronlinesec");
            return (Criteria) this;
        }

        public Criteria andUseronlinesecLessThanOrEqualTo(Double value) {
            addCriterion("UserOnlineSec <=", value, "useronlinesec");
            return (Criteria) this;
        }

        public Criteria andUseronlinesecIn(List<Double> values) {
            addCriterion("UserOnlineSec in", values, "useronlinesec");
            return (Criteria) this;
        }

        public Criteria andUseronlinesecNotIn(List<Double> values) {
            addCriterion("UserOnlineSec not in", values, "useronlinesec");
            return (Criteria) this;
        }

        public Criteria andUseronlinesecBetween(Double value1, Double value2) {
            addCriterion("UserOnlineSec between", value1, value2, "useronlinesec");
            return (Criteria) this;
        }

        public Criteria andUseronlinesecNotBetween(Double value1, Double value2) {
            addCriterion("UserOnlineSec not between", value1, value2, "useronlinesec");
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