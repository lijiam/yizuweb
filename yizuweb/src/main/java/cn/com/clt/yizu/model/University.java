package cn.com.clt.yizu.model;

import javax.persistence.*;

@Table(name = "wd_university")
public class University {
    @Id
    @Column(name = "school_id")
    private String schoolId;

    @Column(name = "school_name")
    private String schoolName;

    /**
     * @return school_id
     */
    public String getSchoolId() {
        return schoolId;
    }

    /**
     * @param schoolId
     */
    public void setSchoolId(String schoolId) {
        this.schoolId = schoolId == null ? null : schoolId.trim();
    }

    /**
     * @return school_name
     */
    public String getSchoolName() {
        return schoolName;
    }

    /**
     * @param schoolName
     */
    public void setSchoolName(String schoolName) {
        this.schoolName = schoolName == null ? null : schoolName.trim();
    }
}