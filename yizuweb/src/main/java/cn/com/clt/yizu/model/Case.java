package cn.com.clt.yizu.model;

import javax.persistence.*;

@Table(name = "case_table")
public class Case {
    @Id
    @Column(name = "case_id")
    private String caseId;

    @Column(name = "case_img")
    private String caseImg;

    @Column(name = "img_urls")
    private String imgUrls;

    @Column(name = "case_title")
    private String caseTitle;

    @Column(name = "case_introduce")
    private String caseIntroduce;

    @Column(name = "case_content")
    private String caseContent;

    /**
     * @return case_id
     */
    public String getCaseId() {
        return caseId;
    }

    /**
     * @param caseId
     */
    public void setCaseId(String caseId) {
        this.caseId = caseId == null ? null : caseId.trim();
    }

    /**
     * @return case_img
     */
    public String getCaseImg() {
        return caseImg;
    }

    /**
     * @param caseImg
     */
    public void setCaseImg(String caseImg) {
        this.caseImg = caseImg == null ? null : caseImg.trim();
    }

    /**
     * @return img_urls
     */
    public String getImgUrls() {
        return imgUrls;
    }

    /**
     * @param imgUrls
     */
    public void setImgUrls(String imgUrls) {
        this.imgUrls = imgUrls == null ? null : imgUrls.trim();
    }

    /**
     * @return case_title
     */
    public String getCaseTitle() {
        return caseTitle;
    }

    /**
     * @param caseTitle
     */
    public void setCaseTitle(String caseTitle) {
        this.caseTitle = caseTitle == null ? null : caseTitle.trim();
    }

    /**
     * @return case_introduce
     */
    public String getCaseIntroduce() {
        return caseIntroduce;
    }

    /**
     * @param caseIntroduce
     */
    public void setCaseIntroduce(String caseIntroduce) {
        this.caseIntroduce = caseIntroduce == null ? null : caseIntroduce.trim();
    }

    /**
     * @return case_content
     */
    public String getCaseContent() {
        return caseContent;
    }

    /**
     * @param caseContent
     */
    public void setCaseContent(String caseContent) {
        this.caseContent = caseContent == null ? null : caseContent.trim();
    }
}