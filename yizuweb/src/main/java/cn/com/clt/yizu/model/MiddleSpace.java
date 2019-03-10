package cn.com.clt.yizu.model;

import javax.persistence.*;

@Table(name = "middle_space")
public class MiddleSpace {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    private String url;

    private String university;

    @Column(name = "space_type")
    private String spaceType;

    private String size;

    @Column(name = "activity_type")
    private String activityType;

    private String equipment;

    @Column(name = "open_time")
    private String openTime;

    private String address;

    private String way;

    @Column(name = "person_count")
    private String personCount;

    @Column(name = "morning_price")
    private String morningPrice;

    @Column(name = "noon_price")
    private String noonPrice;

    @Column(name = "evening_price")
    private String eveningPrice;

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
     * @return url
     */
    public String getUrl() {
        return url;
    }

    /**
     * @param url
     */
    public void setUrl(String url) {
        this.url = url == null ? null : url.trim();
    }

    /**
     * @return university
     */
    public String getUniversity() {
        return university;
    }

    /**
     * @param university
     */
    public void setUniversity(String university) {
        this.university = university == null ? null : university.trim();
    }

    /**
     * @return space_type
     */
    public String getSpaceType() {
        return spaceType;
    }

    /**
     * @param spaceType
     */
    public void setSpaceType(String spaceType) {
        this.spaceType = spaceType == null ? null : spaceType.trim();
    }

    /**
     * @return size
     */
    public String getSize() {
        return size;
    }

    /**
     * @param size
     */
    public void setSize(String size) {
        this.size = size == null ? null : size.trim();
    }

    /**
     * @return activity_type
     */
    public String getActivityType() {
        return activityType;
    }

    /**
     * @param activityType
     */
    public void setActivityType(String activityType) {
        this.activityType = activityType == null ? null : activityType.trim();
    }

    /**
     * @return equipment
     */
    public String getEquipment() {
        return equipment;
    }

    /**
     * @param equipment
     */
    public void setEquipment(String equipment) {
        this.equipment = equipment == null ? null : equipment.trim();
    }

    /**
     * @return open_time
     */
    public String getOpenTime() {
        return openTime;
    }

    /**
     * @param openTime
     */
    public void setOpenTime(String openTime) {
        this.openTime = openTime == null ? null : openTime.trim();
    }

    /**
     * @return address
     */
    public String getAddress() {
        return address;
    }

    /**
     * @param address
     */
    public void setAddress(String address) {
        this.address = address == null ? null : address.trim();
    }

    /**
     * @return way
     */
    public String getWay() {
        return way;
    }

    /**
     * @param way
     */
    public void setWay(String way) {
        this.way = way == null ? null : way.trim();
    }

    /**
     * @return person_count
     */
    public String getPersonCount() {
        return personCount;
    }

    /**
     * @param personCount
     */
    public void setPersonCount(String personCount) {
        this.personCount = personCount == null ? null : personCount.trim();
    }

    /**
     * @return morning_price
     */
    public String getMorningPrice() {
        return morningPrice;
    }

    /**
     * @param morningPrice
     */
    public void setMorningPrice(String morningPrice) {
        this.morningPrice = morningPrice == null ? null : morningPrice.trim();
    }

    /**
     * @return noon_price
     */
    public String getNoonPrice() {
        return noonPrice;
    }

    /**
     * @param noonPrice
     */
    public void setNoonPrice(String noonPrice) {
        this.noonPrice = noonPrice == null ? null : noonPrice.trim();
    }

    /**
     * @return evening_price
     */
    public String getEveningPrice() {
        return eveningPrice;
    }

    /**
     * @param eveningPrice
     */
    public void setEveningPrice(String eveningPrice) {
        this.eveningPrice = eveningPrice == null ? null : eveningPrice.trim();
    }
}