package cn.com.clt.yizu.model;

import javax.persistence.*;

@Table(name = "mini_space")
public class MiniSpace {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    @Column(name = "img_url")
    private String imgUrl;

    @Column(name = "title_name")
    private String titleName;

    private String school;

    @Column(name = "space_type")
    private String spaceType;

    @Column(name = "activity_type")
    private String activityType;

    private String province;

    private String city;

    @Column(name = "people_count")
    private String peopleCount;

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
}