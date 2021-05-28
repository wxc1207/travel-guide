package com.chao.travel.guide.entity;

import java.util.Date;

public class TravelNotes {
    private Integer id;

    private Integer userId;

    private String title;

    private String mainImage;

    private Date startTime;

    private String startDay;

    private String startNumber;

    private String averageCost;

    private Integer watchCount;

    private Integer praiseCount;

    private Date createTime;

    private Date updateTime;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
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

    public String getMainImage() {
        return mainImage;
    }

    public void setMainImage(String mainImage) {
        this.mainImage = mainImage == null ? null : mainImage.trim();
    }

    public Date getStartTime() {
        return startTime;
    }

    public void setStartTime(Date startTime) {
        this.startTime = startTime;
    }

    public String getStartDay() {
        return startDay;
    }

    public void setStartDay(String startDay) {
        this.startDay = startDay == null ? null : startDay.trim();
    }

    public String getStartNumber() {
        return startNumber;
    }

    public void setStartNumber(String startNumber) {
        this.startNumber = startNumber == null ? null : startNumber.trim();
    }

    public String getAverageCost() {
        return averageCost;
    }

    public void setAverageCost(String averageCost) {
        this.averageCost = averageCost == null ? null : averageCost.trim();
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

    @Override
    public String toString() {
        return "TravelNotes{" +
                "id=" + id +
                ", userId=" + userId +
                ", title='" + title + '\'' +
                ", mainImage='" + mainImage + '\'' +
                ", startTime=" + startTime +
                ", startDay='" + startDay + '\'' +
                ", startNumber='" + startNumber + '\'' +
                ", averageCost='" + averageCost + '\'' +
                ", watchCount=" + watchCount +
                ", praiseCount=" + praiseCount +
                ", createTime=" + createTime +
                ", updateTime=" + updateTime +
                '}';
    }
}