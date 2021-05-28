package com.chao.travel.guide.entity;

import java.util.Date;

public class Comment {
    private Integer id;

    private Integer viewId;

    private Integer guideId;

    private Integer travelNotesId;

    private Integer questionAnswerId;

    private Integer userId;

    private String comment;

    private Date createTime;
    private Date updateTime;

    private QuestionAnswer questionAnswer;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getViewId() {
        return viewId;
    }

    public void setViewId(Integer viewId) {
        this.viewId = viewId;
    }

    public Integer getGuideId() {
        return guideId;
    }

    public void setGuideId(Integer guideId) {
        this.guideId = guideId;
    }

    public Integer getTravelNotesId() {
        return travelNotesId;
    }

    public void setTravelNotesId(Integer travelNotesId) {
        this.travelNotesId = travelNotesId;
    }

    public Integer getQuestionAnswerId() {
        return questionAnswerId;
    }

    public void setQuestionAnswerId(Integer questionAnswerId) {
        this.questionAnswerId = questionAnswerId;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public String getComment() {
        return comment;
    }

    public void setComment(String comment) {
        this.comment = comment == null ? null : comment.trim();
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

    public QuestionAnswer getQuestionAnswer() {
        return questionAnswer;
    }

    public void setQuestionAnswer(QuestionAnswer questionAnswer) {
        this.questionAnswer = questionAnswer;
    }

    @Override
    public String toString() {
        return "Comment{" +
                "id=" + id +
                ", viewId=" + viewId +
                ", guideId=" + guideId +
                ", travelNotesId=" + travelNotesId +
                ", questionAnswerId=" + questionAnswerId +
                ", userId=" + userId +
                ", comment='" + comment + '\'' +
                ", createTime=" + createTime +
                ", updateTime=" + updateTime +
                ", questionAnswer=" + questionAnswer +
                '}';
    }
}