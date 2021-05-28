package com.chao.travel.guide.entity;

import java.util.Date;

public class Guide {
    private Integer id;

    private Integer categoryId;

    private Integer userId;

    private String title;

    private Date startTime;

    private String detail;

    private Integer watchCount;

    private Integer praiseCount;

    private Date createTime;

    private Date updateTime;

    /**
     * 在多的一方添加一的一方的类
     * 并提供get、set方法
     */

    private GuideCategory guideCategory;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getCategoryId() {
        return categoryId;
    }

    public void setCategoryId(Integer categoryId) {
        this.categoryId = categoryId;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title == null ? null : title.trim();
    }

    public Date getStartTime() {
        return startTime;
    }

    public void setStartTime(Date startTime) {
        this.startTime = startTime;
    }

    public String getDetail() {
        return detail;
    }

    public void setDetail(String detail) {
        this.detail = detail == null ? null : detail.trim();
    }

    public Integer getWatchCount() {
        return watchCount;
    }

    public void setWatchCount(Integer watchCount) {
        this.watchCount = watchCount;
    }

    public Integer getPraiseCount() {
        return praiseCount;
    }

    public void setPraiseCount(Integer praiseCount) {
        this.praiseCount = praiseCount;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public Date getUpdateTime() {
        return updateTime;
    }

    public void setUpdateTime(Date updateTime) {
        this.updateTime = updateTime;
    }

    public GuideCategory getGuideCategory() {
        return guideCategory;
    }

    public void setGuideCategory(GuideCategory guideCategory) {
        this.guideCategory = guideCategory;
    }

    @Override
    public String toString() {
        return "Guide{" +
                "id=" + id +
                ", categoryId=" + categoryId +
                ", userId=" + userId +
                ", title='" + title + '\'' +
                ", startTime=" + startTime +
                ", detail='" + detail + '\'' +
                ", watchCount=" + watchCount +
                ", praiseCount=" + praiseCount +
                ", createTime=" + createTime +
                ", updateTime=" + updateTime +
                ", guideCategory=" + guideCategory +
                '}';
    }
}