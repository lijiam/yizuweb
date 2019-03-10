package cn.com.clt.yizu.model;

import javax.persistence.*;

@Table(name = "wd_activity_type")
public class ActivityType {
    @Id
    @Column(name = "activity_id")
    private String activityId;

    @Column(name = "activity_name")
    private String activityName;

    /**
     * @return activity_id
     */
    public String getActivityId() {
        return activityId;
    }

    /**
     * @param activityId
     */
    public void setActivityId(String activityId) {
        this.activityId = activityId == null ? null : activityId.trim();
    }

    /**
     * @return activity_name
     */
    public String getActivityName() {
        return activityName;
    }

    /**
     * @param activityName
     */
    public void setActivityName(String activityName) {
        this.activityName = activityName == null ? null : activityName.trim();
    }
}