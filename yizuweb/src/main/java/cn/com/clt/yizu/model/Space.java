package cn.com.clt.yizu.model;

import javax.persistence.*;

public class Space {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private String id;

    private String province;

    private String city;

    @Column(name = "img_url")
    private String imgUrl;

    @Column(name = "title_name")
    private String titleName;

    private String school;

    @Column(name = "space_type")
    private String spaceType;

    private String size;

    @Column(name = "activity_type")
    private String activityType;

    private String equipment;

    @Column(name = "open_time")
    private String openTime;

    private String address;

    private String route;

    @Column(name = "people_count")
    private String peopleCount;

    private String people;

    @Column(name = "morning_price")
    private String morningPrice;

    @Column(name = "noon_price")
    private String noonPrice;

    @Column(name = "evening_price")
    private String eveningPrice;

    @Column(name = "space_introduce")
    private String spaceIntroduce;

    @Column(name = "default_price")
    private String defaultPrice;

    /**
     * @return id
     */
    public String getId() {
        return id;
    }

    /**
     * @param id
     */
    public void setId(String id) {
        this.id = id == null ? null : id.trim();
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
     * @return img_url
     */
    public String getImgUrl() {
        return imgUrl;
    }

    /**
     * @param imgUrl
     */
    public void setImgUrl(String imgUrl) {
        this.imgUrl = imgUrl == null ? null : imgUrl.trim();
    }

    /**
     * @return title_name
     */
    public String getTitleName() {
        return titleName;
    }

    /**
     * @param titleName
     */
    public void setTitleName(String titleName) {
        this.titleName = titleName == null ? null : titleName.trim();
    }

    /**
     * @return school
     */
    public String getSchool() {
        return school;
    }

    /**
     * @param school
     */
    public void setSchool(String school) {
        this.school = school == null ? null : school.trim();
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
     * @return route
     */
    public String getRoute() {
        return route;
    }

    /**
     * @param route
     */
    public void setRoute(String route) {
        this.route = route == null ? null : route.trim();
    }

    /**
     * @return people_count
     */
    public String getPeopleCount() {
        return peopleCount;
    }

    /**
     * @param peopleCount
     */
    public void setPeopleCount(String peopleCount) {
        this.peopleCount = peopleCount == null ? null : peopleCount.trim();
    }

    /**
     * @return people
     */
    public String getPeople() {
        return people;
    }

    /**
     * @param people
     */
    public void setPeople(String people) {
        this.people = people == null ? null : people.trim();
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

    /**
     * @return space_introduce
     */
    public String getSpaceIntroduce() {
        return spaceIntroduce;
    }

    /**
     * @param spaceIntroduce
     */
    public void setSpaceIntroduce(String spaceIntroduce) {
        this.spaceIntroduce = spaceIntroduce == null ? null : spaceIntroduce.trim();
    }

    /**
     * @return default_price
     */
    public String getDefaultPrice() {
        return defaultPrice;
    }

    /**
     * @param defaultPrice
     */
    public void setDefaultPrice(String defaultPrice) {
        this.defaultPrice = defaultPrice == null ? null : defaultPrice.trim();
    }

    @Override
    public String toString() {
        return "Space{" +
                "id='" + id + '\'' +
                ", province='" + province + '\'' +
                ", city='" + city + '\'' +
                ", imgUrl='" + imgUrl + '\'' +
                ", titleName='" + titleName + '\'' +
                ", school='" + school + '\'' +
                ", spaceType='" + spaceType + '\'' +
                ", size='" + size + '\'' +
                ", activityType='" + activityType + '\'' +
                ", equipment='" + equipment + '\'' +
                ", openTime='" + openTime + '\'' +
                ", address='" + address + '\'' +
                ", route='" + route + '\'' +
                ", peopleCount='" + peopleCount + '\'' +
                ", people='" + people + '\'' +
                ", morningPrice='" + morningPrice + '\'' +
                ", noonPrice='" + noonPrice + '\'' +
                ", eveningPrice='" + eveningPrice + '\'' +
                ", spaceIntroduce='" + spaceIntroduce + '\'' +
                ", defaultPrice='" + defaultPrice + '\'' +
                '}';
    }
}