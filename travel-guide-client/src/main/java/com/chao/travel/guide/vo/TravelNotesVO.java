package com.chao.travel.guide.vo;

import com.chao.travel.guide.entity.TravelNotesDetail;

import java.util.Date;
import java.util.List;

/**
 * @author : WXC
 * date    : 2021/3/10 10:50
 * desc    :-
 */
public class TravelNotesVO {
    private Integer id;

    private Integer userId;

    private String title;

    private String mainImage;

    private String startTime;

    private String startDay;

    private String startNumber;

    private String averageCost;

    private Integer watchCount;

    private Integer praiseCount;

    private String createTime;

    private String updateTime;

    private List<TravelNotesDetail> travelNotesDetailList;

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
        this.title = title;
    }

    public String getMainImage() {
        return mainImage;
    }

    public void setMainImage(String mainImage) {
        this.mainImage = mainImage;
    }

    public String getStartTime() {
        return startTime;
    }

    public void setStartTime(String startTime) {
        this.startTime = startTime;
    }

    public String getStartDay() {
        return startDay;
    }

    public void setStartDay(String startDay) {
        this.startDay = startDay;
    }

    public String getStartNumber() {
        return startNumber;
    }

    public void setStartNumber(String startNumber) {
        this.startNumber = startNumber;
    }

    public String getAverageCost() {
        return averageCost;
    }

    public void setAverageCost(String averageCost) {
        this.averageCost = averageCost;
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

    public String getCreateTime() {
        return createTime;
    }

    public void setCreateTime(String createTime) {
        this.createTime = createTime;
    }

    public String getUpdateTime() {
        return updateTime;
    }

    public void setUpdateTime(String updateTime) {
        this.updateTime = updateTime;
    }

    public List<TravelNotesDetail> getTravelNotesDetailList() {
        return travelNotesDetailList;
    }

    public void setTravelNotesDetailList(List<TravelNotesDetail> travelNotesDetailList) {
        this.travelNotesDetailList = travelNotesDetailList;
    }

    @Override
    public String toString() {
        return "TravelNotesVO{" +
                "id=" + id +
                ", userId=" + userId +
                ", title='" + title + '\'' +
                ", mainImage='" + mainImage + '\'' +
                ", startTime='" + startTime + '\'' +
                ", startDay='" + startDay + '\'' +
                ", startNumber='" + startNumber + '\'' +
                ", averageCost='" + averageCost + '\'' +
                ", watchCount=" + watchCount +
                ", praiseCount=" + praiseCount +
                ", createTime='" + createTime + '\'' +
                ", updateTime='" + updateTime + '\'' +
                ", travelNotesDetailList=" + travelNotesDetailList +
                '}';
    }
}
