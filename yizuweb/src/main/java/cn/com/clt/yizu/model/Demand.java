package cn.com.clt.yizu.model;

import javax.persistence.*;

@Table(name = "demand_table")
public class Demand {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    @Column(name = "province_id")
    private Integer provinceId;

    private String province;

    @Column(name = "city_id")
    private Integer cityId;

    private String city;

    private Integer people;

    private String space;

    private String activity;

    private Integer budget;

    @Column(name = "start_time")
    private String startTime;

    @Column(name = "end_time")
    private String endTime;

    @Column(name = "insert_time")
    private String insertTime;

    private String demand;

    private String name;

    private String phone;

    private String email;

    /**
     * @return id
     */
    public Integer getId() {
        return id;
    }

    /**
     * @param id
     */
    public void setId(Integer id) {
        this.id = id;
    }

    /**
     * @return province_id
     */
    public Integer getProvinceId() {
        return provinceId;
    }

    /**
     * @param provinceId
     */
    public void setProvinceId(Integer provinceId) {
        this.provinceId = provinceId;
    }

    /**
     * @return province
     */
    public String getProvince() {
        return province;
    }

    /**
     * @param province
     */
    public void setProvince(String province) {
        this.province = province == null ? null : province.trim();
    }

    /**
     * @return city_id
     */
    public Integer getCityId() {
        return cityId;
    }

    /**
     * @param cityId
     */
    public void setCityId(Integer cityId) {
        this.cityId = cityId;
    }

    /**
     * @return city
     */
    public String getCity() {
        return city;
    }

    /**
     * @param city
     */
    public void setCity(String city) {
        this.city = city == null ? null : city.trim();
    }

    /**
     * @return people
     */
    public Integer getPeople() {
        return people;
    }

    /**
     * @param people
     */
    public void setPeople(Integer people) {
        this.people = people;
    }

    /**
     * @return space
     */
    public String getSpace() {
        return space;
    }

    /**
     * @param space
     */
    public void setSpace(String space) {
        this.space = space == null ? null : space.trim();
    }

    /**
     * @return activity
     */
    public String getActivity() {
        return activity;
    }

    /**
     * @param activity
     */
    public void setActivity(String activity) {
        this.activity = activity == null ? null : activity.trim();
    }

    /**
     * @return budget
     */
    public Integer getBudget() {
        return budget;
    }

    /**
     * @param budget
     */
    public void setBudget(Integer budget) {
        this.budget = budget;
    }

    /**
     * @return start_time
     */
    public String getStartTime() {
        return startTime;
    }

    /**
     * @param startTime
     */
    public void setStartTime(String startTime) {
        this.startTime = startTime == null ? null : startTime.trim();
    }

    /**
     * @return end_time
     */
    public String getEndTime() {
        return endTime;
    }

    /**
     * @param endTime
     */
    public void setEndTime(String endTime) {
        this.endTime = endTime == null ? null : endTime.trim();
    }

    /**
     * @return insert_time
     */
    public String getInsertTime() {
        return insertTime;
    }

    /**
     * @param insertTime
     */
    public void setInsertTime(String insertTime) {
        this.insertTime = insertTime == null ? null : insertTime.trim();
    }

    /**
     * @return demand
     */
    public String getDemand() {
        return demand;
    }

    /**
     * @param demand
     */
    public void setDemand(String demand) {
        this.demand = demand == null ? null : demand.trim();
    }

    /**
     * @return name
     */
    public String getName() {
        return name;
    }

    /**
     * @param name
     */
    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    /**
     * @return phone
     */
    public String getPhone() {
        return phone;
    }

    /**
     * @param phone
     */
    public void setPhone(String phone) {
        this.phone = phone == null ? null : phone.trim();
    }

    /**
     * @return email
     */
    public String getEmail() {
        return email;
    }

    /**
     * @param email
     */
    public void setEmail(String email) {
        this.email = email == null ? null : email.trim();
    }
}