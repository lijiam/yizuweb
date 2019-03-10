package cn.com.clt.yizu.model;

import javax.persistence.*;

@Table(name = "wd_people_count")
public class PersonCount {
    @Id
    @Column(name = "people_id")
    private String peopleId;

    @Column(name = "people_count")
    private String peopleCount;

    /**
     * @return people_id
     */
    public String getPeopleId() {
        return peopleId;
    }

    /**
     * @param peopleId
     */
    public void setPeopleId(String peopleId) {
        this.peopleId = peopleId == null ? null : peopleId.trim();
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