package com.chao.travel.guide.vo;

import com.chao.travel.guide.entity.QuestionAnswer;

import java.util.Date;

/**
 * @author : WXC
 * date    : 2021/1/14 22:50
 * desc    :-
 */
public class CommentVO {

    private Integer cId;

    private Integer viewId;

    private Integer guideId;

    private Integer travelNotesId;

    private Integer questionAnswerId;

    private Integer cUserId;
    /**
     * 回答的作者
     */
    private String userTo;

    private String comment;
    /**
     * 创建回答问题时间
     */
    private String cCreateTime;
    /**
     * 更新回答问题时间
     */
    private String cUpdateTime;

    /**
     * 提问的作者
     */
    private String userFrom;

    private Integer qId;

    private Integer qUserId;

    private String question;

    private Integer watchCount;

    private Integer praiseCount;

    /**
     * 问题创建时间
     */
    private String qCreateTime;

    /**
     * 问题更新时间
     */
    private String qUpdateTime;

    public Integer getcId() {
        return cId;
    }

    public void setcId(Integer cId) {
        this.cId = cId;
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

    public Integer getcUserId() {
        return cUserId;
    }

    public void setcUserId(Integer cUserId) {
        this.cUserId = cUserId;
    }

    public String getUserTo() {
        return userTo;
    }

    public void setUserTo(String userTo) {
        this.userTo = userTo;
    }

    public String getComment() {
        return comment;
    }

    public void setComment(String comment) {
        this.comment = comment;
    }

    public String getcCreateTime() {
        return cCreateTime;
    }

    public void setcCreateTime(String cCreateTime) {
        this.cCreateTime = cCreateTime;
    }

    public String getcUpdateTime() {
        return cUpdateTime;
    }

    public void setcUpdateTime(String cUpdateTime) {
        this.cUpdateTime = cUpdateTime;
    }

//    public QuestionAnswer getQuestionAnswer() {
//        return questionAnswer;
//    }
//
//    public void setQuestionAnswer(QuestionAnswer questionAnswer) {
//        this.questionAnswer = questionAnswer;
//    }

    public String getUserFrom() {
        return userFrom;
    }

    public void setUserFrom(String userFrom) {
        this.userFrom = userFrom;
    }

    public Integer getqId() {
        return qId;
    }

    public void setqId(Integer qId) {
        this.qId = qId;
    }

    public Integer getqUserId() {
        return qUserId;
    }

    public void setqUserId(Integer qUserId) {
        this.qUserId = qUserId;
    }

    public String getQuestion() {
        return question;
    }

    public void setQuestion(String question) {
        this.question = question;
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

    public String getqCreateTime() {
        return qCreateTime;
    }

    public void setqCreateTime(String qCreateTime) {
        this.qCreateTime = qCreateTime;
    }

    public String getqUpdateTime() {
        return qUpdateTime;
    }

    public void setqUpdateTime(String qUpdateTime) {
        this.qUpdateTime = qUpdateTime;
    }

    @Override
    public String toString() {
        return "CommentVO{" +
                "cId=" + cId +
                ", viewId=" + viewId +
                ", guideId=" + guideId +
                ", travelNotesId=" + travelNotesId +
                ", questionAnswerId=" + questionAnswerId +
                ", cUserId=" + cUserId +
                ", userTo='" + userTo + '\'' +
                ", comment='" + comment + '\'' +
                ", cCreateTime='" + cCreateTime + '\'' +
                ", cUpdateTime='" + cUpdateTime + '\'' +
                ", userFrom='" + userFrom + '\'' +
                ", qId=" + qId +
                ", qUserId=" + qUserId +
                ", question='" + question + '\'' +
                ", watchCount=" + watchCount +
                ", praiseCount=" + praiseCount +
                ", qCreateTime='" + qCreateTime + '\'' +
                ", qUpdateTime='" + qUpdateTime + '\'' +
                '}';
    }
}
