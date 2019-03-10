package cn.com.clt.yizu.model;

import javax.persistence.*;

@Table(name = "wd_space_type")
public class SpaceType {
    @Id
    @Column(name = "space_id")
    private String spaceId;

    @Column(name = "space_name")
    private String spaceName;

    /**
     * @return space_id
     */
    public String getSpaceId() {
        return spaceId;
    }

    /**
     * @param spaceId
     */
    public void setSpaceId(String spaceId) {
        this.spaceId = spaceId == null ? null : spaceId.trim();
    }

    /**
     * @return space_name
     */
    public String getSpaceName() {
        return spaceName;
    }

    /**
     * @param spaceName
     */
    public void setSpaceName(String spaceName) {
        this.spaceName = spaceName == null ? null : spaceName.trim();
    }
}